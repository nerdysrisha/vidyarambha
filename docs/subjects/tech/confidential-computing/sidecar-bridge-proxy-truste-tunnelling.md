# Peerpod (TDX) → Trustee VSI: HTTPS Proxy + Netns Bridge Workaround

 The peerpod VM and the trustee VSI can reach each other over the network, but the *container running inside the pod* cannot reach the trustee directly (its isolated in the pod network namespace). This workaround runs an HTTPS proxy in the **root netns** of the peerpod VM, and a lightweight TCP bridge that listens **inside the pod netns** and forwards traffic into the root netns proxy.

**Flow:** container (pod netns) → tcp_bridge.py (bridges pod netns ↔ root netns) → https_proxy.py (root netns, root-to-root) → Trustee VSI (10.10.10.7:8443)

---

## Part A — Generate a self-signed cert for the local proxy
*Run on: peerpod VM*

**A1. Create the SAN config file**
 
cat > proxy_san.cnf <<'EOF'
[req]
distinguished_name = req_distinguished_name
x509_extensions = v3_req
prompt = no

[req_distinguished_name]
CN = local-proxy

[v3_req]
subjectAltName = IP:127.0.0.1
EOF
 

**A2. Verify its not empty**
 
cat proxy_san.cnf
 

**A3. Generate the self-signed cert**
 
openssl req -x509 -newkey rsa:2048 -nodes \
  -keyout proxy-key.pem -out proxy-cert.pem \
  -days 30 -config proxy_san.cnf -extensions v3_req
 

**A4. Verify cert files exist and arent empty**
 
ls -la proxy-cert.pem proxy-key.pem
 
 
---

## Part B — Create the HTTPS proxy script
*Run on: peerpod VM*

**B1. Create https_proxy.py**
 
 cat > https_proxy.py <<'EOF'
import ssl
import http.server
import urllib.request

TRUSTEE_URL = "https://10.10.10.7:8443/dummy/secret"

class ProxyHandler(http.server.BaseHTTPRequestHandler):

    def _forward(self):
        length = int(self.headers.get("Content-Length", 0))
        body = self.rfile.read(length) if length else b""

        req = urllib.request.Request(TRUSTEE_URL, data=body, method=self.command)
        for k, v in self.headers.items():
            if k.lower() != "host":
                req.add_header(k, v)

        ctx = ssl.create_default_context()
        ctx.check_hostname = False
        ctx.verify_mode = ssl.CERT_NONE

        try:
            with urllib.request.urlopen(req, context=ctx, timeout=10) as resp:
                resp_body = resp.read()
                status = resp.getcode()
                headers = resp.getheaders()
        except urllib.error.HTTPError as e:
            resp_body = e.read()
            status = e.code
            headers = e.headers.items()

        self.send_response(status)
        for k, v in headers:
            if k.lower() not in ("content-length", "transfer-encoding"):
                self.send_header(k, v)
        self.send_header("Content-Length", str(len(resp_body)))
        self.end_headers()
        self.wfile.write(resp_body)

    def do_GET(self): self._forward()
    def do_POST(self): self._forward()
    def do_PUT(self): self._forward()
    def do_DELETE(self): self._forward()

if __name__ == "__main__":
    server = http.server.HTTPServer(("0.0.0.0", 9443), ProxyHandler)
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain(certfile="proxy-cert.pem", keyfile="proxy-key.pem")
    server.socket = ctx.wrap_socket(server.socket, server_side=True)
    server.serve_forever()
EOF
 

**B2. Verify file created**
 
cat https_proxy.py | head -5
 

---

## Part C — Start the proxy and test locally
*Run on: peerpod VM*

**C1. Start https_proxy.py in background (root netns)**
 
sudo nohup python3 https_proxy.py > https_proxy.log 2>&1 < /dev/null &
disown
 

**C2. Confirm its running**
 
ps aux | grep https_proxy
 

**C3. Confirm its listening on 9443**
 
sudo ss -tlnp | grep 9443
 

**C4. Test locally on the VM itself (root-to-root — must succeed before continuing)**


curl -k -X POST https://127.0.0.1:9443/dummy/secret \
  -H "Authorization: Bearer dummy-poc-token-abc123" \
  -H "Content-Type: application/json" \
  -d '{"input":"111223"}'
 










 

**C5. Check the log shows the request/response**
 
cat https_proxy.log
 

 
---

## Part D — Create and start the namespace bridge
*Run on: peerpod VM*

**D1. Confirm the pod netns name (may not always be `podns`)**
 
ls -la /run/netns/
 

**D2. Create tcp_bridge.py** (adjust /run/netns/podns below if D1 showed a different name)
 
cat > tcp_bridge.py <<'EOF'
import socket
import threading
import ctypes
import os

libc = ctypes.CDLL("libc.so.6", use_errno=True)

def setns(fd):
    if libc.setns(fd, 0) != 0:
        err = ctypes.get_errno()
        raise OSError(err, os.strerror(err))

ROOT_NS_FD = os.open("/proc/self/ns/net", os.O_RDONLY)
POD_NS_FD  = os.open("/run/netns/podns", os.O_RDONLY)

LISTEN_PORT = 9443
FORWARD_HOST = "127.0.0.1"
FORWARD_PORT = 9443

def pipe(src, dst):
    try:
        while True:
            data = src.recv(4096)
            if not data:
                break
            dst.sendall(data)
    except Exception:
        pass
    finally:
        src.close()
        dst.close()

def handle(client_sock):
    try:
        server_sock = socket.create_connection((FORWARD_HOST, FORWARD_PORT))
    except Exception as e:
        print(f"connect failed: {e}", flush=True)
        client_sock.close()
        return
    threading.Thread(target=pipe, args=(client_sock, server_sock)).start()
    threading.Thread(target=pipe, args=(server_sock, client_sock)).start()

def main():
    setns(POD_NS_FD)
    srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(("0.0.0.0", LISTEN_PORT))
    srv.listen(5)

    setns(ROOT_NS_FD)

    print(f"listening in pod netns on :{LISTEN_PORT}, forwarding via root netns to {FORWARD_HOST}:{FORWARD_PORT}", flush=True)

    while True:
        client, addr = srv.accept()
        print(f"connection from {addr}", flush=True)
        threading.Thread(target=handle, args=(client,)).start()

if __name__ == "__main__":
    main()
EOF
 

**D3. Start tcp_bridge.py in background**
 
sudo nohup python3 tcp_bridge.py > tcp_bridge.log 2>&1 < /dev/null &
disown
 

**D4. Confirm it started correctly** (should NOT show a raw connection storm — just the startup line for now)
 
cat tcp_bridge.log
 
Expected only: listening in pod netns on :9443, forwarding via root netns to 127.0.0.1:9443

**D5. Confirm both processes are alive**
 
ps aux | grep -E "https_proxy|tcp_bridge"
 
sudo ss -tlnp | grep 9443

openssl s_client -connect 127.0.0.1:9443

curl -k -X POST https://127.0.0.1:9443/dummy/secret \
  -H "Authorization: Bearer dummy-poc-token-abc123" \
  -H "Content-Type: application/json" \
  -d '{"input":"111223"}'
  
  

  
  
sudo ip netns exec podns ss -tlnp | grep 9443

sudo ip netns exec podns openssl s_client -connect 127.0.0.1:9443

sudo ip netns exec podns curl -k -X POST https://127.0.0.1:9443/dummy/secret \
  -H "Authorization: Bearer dummy-poc-token-abc123" \
  -H "Content-Type: application/json" \
  -d '{"input":"111223"}'
  
  
 

## Part E — Final test
*Run on: sidecar container, via kubectl exec, or via the pods own args loop*

**E1. Manual test first**
 
kubectl exec -it helloworld-cvm-withsidecar -n default -c pingsidecar -- curl -k -X POST https://127.0.0.1:9443/dummy/secret \
  -H "Authorization: Bearer dummy-poc-token-abc123" \
  -H "Content-Type: application/json" \
  -d '{"input":"111223"}'
 
 

**E2. Confirm both logs show the full round trip on the peerpod**
 
cat https_proxy.log
cat tcp_bridge.log
 
 
 
 +------------------------------------+
| Sidecar container (client)         |
| curl -k https://127.0.0.1:9443     |   <- runs inside POD netns
+------------------------------------+
               |
               | [ENCRYPTED IN TRANSIT - TLS Session 1]
               v
+------------------------------------+
| tcp_bridge.py                      |
|  - binds 0.0.0.0:9443 in POD netns |
|  - setns: pod -> root netns        |
|  - relays raw bytes as-is          |
|  - NOT TLS-aware, no decryption    |
+------------------------------------+
               |
               | [STILL ENCRYPTED - same TLS Session 1,
               |  just relayed into ROOT netns]
               v
+------------------------------------+
| https_proxy.py   (ROOT netns)      |
|  - loads proxy-cert.pem/key        |
|  - TLS Session 1 TERMINATES HERE   |
|  ................................  |
|  : PLAINTEXT - process memory only :
|  : NO LONGER LOGGED to disk        :
|  : (print statements removed)      :
|  : never touches the network wire  :
|  ................................  |
|  - opens NEW outbound connection   |
|  - re-encrypts as TLS Session 2    |
+------------------------------------+
               |
               | [ENCRYPTED IN TRANSIT - TLS Session 2,
               |  separate handshake, verify disabled]
               v
+------------------------------------+
| Trustee VSI                        |
| https://10.10.10.7:8443            |
| Flask dummy_server.py              |
| TLS termination                    |
+------------------------------------+

NOTE: Every network hop is TLS-encrypted, and https_proxy.log
no longer contains plaintext request/response data. However,
this is still NOT end-to-end TLS - plaintext still exists
transiently in https_proxy.py  process memory (body/resp_body
variables) during each request, independent of logging.