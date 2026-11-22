# Docker Cheat Sheet

Quick-reference commands for working with Docker on Windows (Docker Desktop): pulling images, running and managing containers, building custom images, and pushing to Docker Hub.

> **Prerequisite:** on Windows with a *Docker Desktop* setup, the Docker Desktop application **must be running** before any `docker` command will work.

> **Note on sanitised values:** `nerdyorg` is a dummy Docker Hub / organisation name used throughout. Replace it with your own Docker ID. Never paste a real password or Personal Access Token (PAT) into notes or commits.

**Shell conventions:** commands are shown without the `PS C:\...>` prompt. Sample output is in separate `text` blocks.

---

## 1. Version, login & logout

### 1.1 Check the Docker version

```bash
docker version
```

```text
Client:
 Cloud integration: v1.0.35+desktop.13
 Version:           26.0.0
 API version:       1.45
 Go version:        go1.21.8
 OS/Arch:           windows/amd64
 Context:           default

Server: Docker Desktop 4.29.0 (145265)
 Engine:
  Version:          26.0.0
  API version:      1.45 (minimum version 1.24)
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.6.28
 runc:
  Version:          1.1.12
 docker-init:
  Version:          0.19.0
```

*(output trimmed to the key lines)*

### 1.2 Log in to Docker Hub

You need your Docker Hub credentials — a username plus either a password or a **Personal Access Token (PAT)**. A limited-scope PAT is safer and is required for organisations using SSO.

```bash
docker login
```

```text
Username: nerdyorg
Password:
Login Succeeded
```

Log in as a specific user:

```bash
docker login -u nerdyorg
```

> **Generate a PAT:** Docker Hub → *Account → Settings → Personal access tokens*.

### 1.3 Log out of Docker Hub

```bash
docker logout
```

```text
Removing login credentials for https://index.docker.io/v1/
```

---

## 2. Images

### 2.1 Pull an image from Docker Hub

```bash
docker pull stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE
```

```text
1.0.0-RELEASE: Pulling from stacksimplify/dockerintro-springboot-helloworld-rest-api
e7c96db7181b: Pull complete
f910a506b6cb: Pull complete
c2274a1a0e27: Pull complete
5e7e821feefb: Pull complete
Digest: sha256:8f3686fc...2809
Status: Downloaded newer image for stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE
```

### 2.2 List the images loaded in Docker

```bash
docker images
```

```text
REPOSITORY                                                 TAG             IMAGE ID       CREATED       SIZE
stacksimplify/dockerintro-springboot-helloworld-rest-api   1.0.0-RELEASE   4a51be64e1ee   4 years ago   124MB
```

### 2.3 Remove an image

> **No container may be using the image** you want to remove (stop and remove such containers first).

```bash
# 1. List the images and note the IMAGE ID
docker images

# 2. Remove by image ID
docker rmi 4a51be64e1ee
```

```text
Untagged: stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE
Untagged: stacksimplify/dockerintro-springboot-helloworld-rest-api@sha256:8f3686fc...2809
Deleted: sha256:4a51be64e1ee...
```

### 2.4 Remove **all** images in one go ⚠️

```powershell
docker rmi $(docker images -q)
```

> This deletes every image on the machine — including Docker Desktop's own Kubernetes images, which Docker Desktop will re-download when needed.

---

## 3. Containers

### 3.1 Run an image as a container

Run in the background (`-d`), name it (`--name`), and map host port **80** to container port **8080** (`-p 80:8080`):

```bash
docker run --name nerdy-hello -p 80:8080 -d stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE
```

```text
997e15984c5204e0658fbb2f22d8363e66684fd3d7731aa149284ed669cb68cb
```

The app is now reachable at **http://localhost/hello**. No port is needed in the URL because host port 80 is the browser default.

### 3.2 List running containers

```bash
docker ps
# or
docker container list
```

```text
CONTAINER ID   IMAGE                                                                    COMMAND                  CREATED          STATUS          PORTS                  NAMES
997e15984c52   stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE   "sh -c 'java $JAVA_O…"   18 seconds ago   Up 17 seconds   0.0.0.0:80->8080/tcp   nerdy-hello
```

### 3.3 List all containers, including stopped ones

```bash
docker ps -a
```

```text
CONTAINER ID   IMAGE                                                                    COMMAND                  CREATED         STATUS         PORTS                  NAMES
997e15984c52   stacksimplify/dockerintro-springboot-helloworld-rest-api:1.0.0-RELEASE   "sh -c 'java $JAVA_O…"   8 minutes ago   Up 8 minutes   0.0.0.0:80->8080/tcp   nerdy-hello
```

### 3.4 Get container IDs only

```bash
docker ps -a -q
```

```text
997e15984c52
```

### 3.5 Get a shell inside a container

```bash
docker exec -it 997e15984c52 /bin/sh
```

```text
/ # ls
app.jar  dev      home     media    opt      root     sbin     sys      usr
bin      etc      lib      mnt      proc     run      srv      tmp      var
```

Run a few Linux commands inside the container:

```text
/ # ps -ef
PID   USER     TIME  COMMAND
    1 root      3:16 java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
   46 root      0:00 /bin/sh
   53 root      0:00 /bin/sh
   60 root      0:00 ps -ef
```

### 3.6 Stop and start a container

```bash
docker container stop 997e15984c52
docker container start 997e15984c52
docker ps          # confirm: STATUS shows "Up 3 seconds"
```

### 3.7 Remove a container

A container must be **stopped** before it can be removed:

```bash
# Trying to remove a running container fails
docker rm 997e15984c52
```

```text
Error response from daemon: cannot remove container "/nerdy-hello": container is running: stop the container before removing or force remove
```

```bash
# Stop it, confirm it has exited, then remove it
docker stop 997e15984c52
docker ps -a          # STATUS: Exited (143) ...
docker rm 997e15984c52
```

### 3.8 Force-remove a running container

Use `-f` to stop and remove in one step:

```bash
docker rm -f c5d0742b7649
```

### 3.9 Live statistics of running containers

```bash
docker stats
```

```text
CONTAINER ID   NAME                  CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O   PIDS
0e0c45f3b0e4   nerdy-hello           0.03%     246.1MiB / 7.566GiB   3.18%     1.17kB / 586B   0B / 0B     38
6f74efc65b13   nerdynginxdefault     0.00%     9.965MiB / 7.566GiB   0.13%     2.4kB / 796B    0B / 0B     13
```

---

## 4. Build a custom image (nginx example)

### 4.1 Step 1 — try a ready-made image from Docker Hub

`docker run` pulls the image automatically if it isn't present locally. First confirm the starting state is empty:

```bash
docker images           # nothing listed
docker container list   # no containers
```

Run the official `nginx` image and name the container `nerdynginxdefault`:

```bash
docker run --name nerdynginxdefault -p 80:80 -d nginx
```

```text
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
...
Status: Downloaded newer image for nginx:latest
3fa43fe026009fc995578d30b288ac8b0e397f7744789750f719505fc7627ed9
```

Check the image and the container that now exist:

```bash
docker images
docker container list
```

```text
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
nginx        latest    e784f4560448   3 weeks ago   188MB

CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                NAMES
3fa43fe02600   nginx     "/docker-entrypoint.…"   2 minutes ago   Up 2 minutes   0.0.0.0:80->80/tcp   nerdynginxdefault
```

Open **http://localhost/** — you should see the default nginx welcome page.

### 4.2 Step 2 — create your own image

In any working folder (e.g. `C:\docs\`) create two files.

**`Dockerfile`**

```dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html
```

**`index.html`**

```text
Hello World this is custom image of nginx
```

Check the files:

```powershell
dir
```

```text
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         5/25/2024   7:51 PM             49 Dockerfile
-a----         5/25/2024   7:52 PM             36 index.html
```

### 4.3 Build the image

Tag it with **your Docker ID**, an image name and a version (`<docker-id>/<image-name>:<tag>`). The trailing `.` means "use the current folder as the build context":

```bash
docker build -t nerdyorg/nerdynginxcustom_image:v1 .
```

```text
[+] Building 0.4s (7/7) FINISHED
 => [internal] load build definition from Dockerfile
 => [internal] load metadata for docker.io/library/nginx:latest
 => [1/2] FROM docker.io/library/nginx:latest
 => [2/2] COPY index.html /usr/share/nginx/html
 => exporting to image
 => => naming to docker.io/nerdyorg/nerdynginxcustom_image:v1
```

*(output trimmed)*

```bash
docker images
```

```text
REPOSITORY                                TAG       IMAGE ID       CREATED         SIZE
nerdyorg/nerdynginxcustom_image           v1        583972daaf16   2 minutes ago   188MB
nginx                                     latest    e784f4560448   3 weeks ago     188MB
```

### 4.4 Run a container from your image

The earlier nginx container is still using **port 80**, so stop it first (and remove it if the new page doesn't show as expected):

```bash
docker container stop 3fa43fe02600
docker container list           # confirm nothing is on port 80
```

Now run your own image:

```bash
docker run --name nerdynginxdefault -p 80:80 -d nerdyorg/nerdynginxcustom_image:v1
docker container list
```

```text
CONTAINER ID   IMAGE                                  COMMAND                  CREATED         STATUS         PORTS                NAMES
c5d0742b7649   nerdyorg/nerdynginxcustom_image:v1     "/docker-entrypoint.…"   5 seconds ago   Up 4 seconds   0.0.0.0:80->80/tcp   nerdynginxdefault
```

Open **http://localhost** — you should see *Hello World this is custom image of nginx*.

> If the name `nerdynginxdefault` is still taken by the old container, remove it first (`docker rm nerdynginxdefault`) or choose a new `--name`.

---

## 5. Push a custom image to your Docker Hub account

Make sure you are logged in ([section 1.2](#12-log-in-to-docker-hub)), then build (if needed) and push:

```bash
# Build the image
docker build -t nerdyorg/nerdynginxcustom_image:v1 .
docker images

# Push it
docker push nerdyorg/nerdynginxcustom_image:v1
```

```text
The push refers to repository [docker.io/nerdyorg/nerdynginxcustom_image]
6662433b45a0: Pushed
14773070094d: Mounted from library/nginx
7d2fd59c368c: Mounted from library/nginx
...
v1: digest: sha256:xxxxxxxx...xxxx size: 1985
```

Layers that already exist in the base image show as *Mounted from library/nginx*; only your new layer is actually uploaded.

---

## 6. Build a Java app image and push to a **private** Docker Hub repo

End-to-end flow for a Spring Boot service: Maven build → Docker build → run → push.

### 6.1 Go to the project folder

```powershell
dir
```

```text
    Directory: C:\ws\nerdyorg-mw\nerdyorg-ehf

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----           1/24/2025  4:22 PM                configuration
d----           1/24/2025  4:22 PM                src
-a---           1/24/2025  4:22 PM            428 .gitignore
-a---           1/24/2025  4:22 PM           2646 aks-deployment.yaml
-a---           1/24/2025  4:22 PM            457 Dockerfile
-a---           1/24/2025  4:22 PM          13997 pom.xml
-a---           1/24/2025  4:22 PM           6358 README.md
```

*(per-environment `*-aks-deployment.yaml` and `*-pipeline.yaml` files trimmed)*

### 6.2 The Dockerfile

```powershell
cat .\Dockerfile
```

```dockerfile
# Use the official OpenJDK Alpine image for Java 17
FROM eclipse-temurin:17.0.8.1_1-jdk-alpine

EXPOSE 8080 443 8778 9779
RUN apk --no-cache add curl
RUN addgroup -g 1000 -S piuser && adduser -u 1000 -S piuser -G piuser
RUN chown -R piuser:piuser /usr/

USER piuser

ENV JAVA_OPTS=""
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} /usr/app.jar
WORKDIR /usr/
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /usr/app.jar"]
```

> The original had `EXPOSE 8080 443 8778 9779` twice; one is enough. It also runs as a **non-root user** (`piuser`) — good practice.

### 6.3 List the current local images

```bash
docker images
```

```text
REPOSITORY                  TAG       IMAGE ID       CREATED        SIZE
hworld-observability        latest    f5a3aaeb4a17   3 days ago     206MB
openzipkin/zipkin           latest    4f80c5497c7e   7 days ago     182MB
grafana/grafana             latest    3344a121f449   9 days ago     547MB
bitnami/kafka               latest    c666ee6c3d0e   12 days ago    446MB
mysql                       latest    a52cba19e8cc   2 weeks ago    797MB
redis                       latest    b5e874b32a79   4 months ago   117MB
```

*(trimmed)*

### 6.4 Log out, then log in with the correct credentials

Log out of whatever account is currently active, then log in with the right user and a PAT:

```bash
docker logout
docker login -u nerdyorg
```

```text
Password:
Login Succeeded
```

> Paste the **PAT** at the `Password:` prompt (input is hidden). Generate it in Docker Hub → *Account → Settings → Personal access tokens*.

### 6.5 Make sure the package is clean and built

```powershell
mvn clean package
```

```text
[INFO] Scanning for projects...
[INFO] ---------------------< com.nerdyorg.utils:nerdyorg-ehf >----------------------
[INFO] Building nerdyorg-ehf 1.0.0-SNAPSHOT
...
[INFO] --- spring-boot-maven-plugin:3.2.1:repackage (default) @ nerdyorg-ehf ---
[INFO] BUILD SUCCESS
[INFO] Total time:  10.954 s
```

Check the `target` folder for the jar:

```powershell
dir .\target\
```

```text
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----           2/10/2025  3:24 PM                classes
d----           2/10/2025  3:24 PM                generated-sources
d----           2/10/2025  3:24 PM                maven-archiver
d----           2/10/2025  3:24 PM                maven-status
-a---           2/10/2025  3:25 PM       47540280 nerdyorg-ehf-1.0.0-SNAPSHOT.jar
-a---           2/10/2025  3:24 PM          48033 nerdyorg-ehf-1.0.0-SNAPSHOT.jar.original
```

### 6.6 Build the Docker image

```bash
docker build -t nerdyorg/ehf:v1.0.0 .
```

```text
[+] Building 2.7s (11/11) FINISHED
 => [1/6] FROM docker.io/library/eclipse-temurin:17.0.8.1_1-jdk-alpine
 => CACHED [2/6] RUN apk --no-cache add curl
 => CACHED [3/6] RUN addgroup -g 1000 -S piuser && adduser -u 1000 -S piuser -G piuser
 => CACHED [4/6] RUN chown -R piuser:piuser /usr/
 => [5/6] COPY ./target/*.jar /usr/app.jar
 => [6/6] WORKDIR /usr/
 => => naming to docker.io/nerdyorg/ehf:v1.0.0
```

```bash
docker images
```

```text
REPOSITORY                  TAG       IMAGE ID       CREATED              SIZE
nerdyorg/ehf                v1.0.0    2c60f1ebabee   About a minute ago   376MB
```

### 6.7 Run the container locally

```bash
docker run -d -p 8080:8080 --name ehf-container nerdyorg/ehf:v1.0.0
```

### 6.8 Push to the private Docker Hub repository

```bash
docker push nerdyorg/ehf:v1.0.0
```

```text
The push refers to repository [docker.io/nerdyorg/ehf]
5f70bf18a086: Pushed
bb112dc87dc9: Pushed
d5a488e45ab4: Pushed
1a3289d6a4ca: Pushed
25f571c43c67: Pushed
9fa0c53ea65c: Mounted from library/eclipse-temurin
...
v1.0.0: digest: sha256:xxxxxxxx...xxxx size: 2415
```

---
