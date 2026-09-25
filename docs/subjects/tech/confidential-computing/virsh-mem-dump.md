# virsh Reference — Administration, Debugging & Memory Forensics

Verified against the current upstream libvirt manpage ([libvirt.org/manpages/virsh.html](https://libvirt.org/manpages/virsh.html)). Version-dependent items are flagged inline.

**Legend:** ⚠️ disruptive · 🔥 destructive · 🔒 security-sensitive · 💲 expensive (time/disk/IO) · 🧪 version-dependent

---

## 0. Ground rules before anything else

- **Privilege.** Most virsh commands need root, because of the channels used to talk to the hypervisor; running as non-root returns an error. Non-root users get `qemu:///session` (their own domains only). Use `-c qemu:///system` for host-wide work.
- **Async commands.** Most commands are synchronous, but `shutdown`, `setvcpus` and `setmem` are not — the command returning does not mean the action finished. Poll with `domstate` / `dominfo`.
- **Scaled integers.** Many size arguments accept suffixes. `k`/`KiB` = 1024, `KB` = 1000, `M`/`MiB` = 1048576, `MB` = 1000000, and so on up to `E`/`EiB`. Defaults differ per command (some bytes, some KiB) — always pass an explicit suffix.
- **Backward compatibility.** Older option spellings (e.g. `--tunnelled` vs `--tunneled`, `--total_bytes_sec` vs `--total-bytes-sec`) still work; help only shows the preferred form.
- **Read-only mode.** `virsh -r` / `connect --readonly` is the right default for evidence-handling and exploratory work.

```bash
virsh -c qemu:///system list --all        # inventory
virsh help <group|command>                # discover everything on YOUR build
virsh -V                                  # compiled-in drivers/options
```

---

## 1. Core / common commands

### Connection

| Command | What it does | Example | Notes |
|---|---|---|---|
| `connect [URI] [--readonly]` | (Re)connect to a hypervisor | `virsh connect qemu:///system` | `qemu:///system` (root), `qemu:///session` (user), `xen:///system`, `lxc:///system` |
| `uri` | Print canonical URI in use | `virsh uri` | Useful in shell mode |
| `version [--daemon]` | Library / API / hypervisor versions | `virsh version --daemon` | First thing to check for version-dependent features |

### Host

| Command | What it does | Example | Notes |
|---|---|---|---|
| `hostname` | Hypervisor hostname | `virsh hostname` | |
| `sysinfo` | Host SMBIOS/sysinfo as XML | `virsh sysinfo` | 🔒 exposes serials/asset tags |
| `nodeinfo` | CPU count/type + physical memory | `virsh nodeinfo` | 🧪 Use discouraged upstream — inaccurate on asymmetric NUMA/multi-die hosts; prefer `capabilities` |
| `capabilities [--xpath EXPR] [--wrap]` | Host + guest capability XML, incl. NUMA topology | `virsh capabilities --xpath '//topology'` | `--xpath`/`--wrap` are newer additions |
| `domcapabilities [virttype] [emulatorbin] [arch] [machine]` | What a domain could use on this host | `virsh domcapabilities --virttype kvm` | Also `--expand-cpu-features`, `--supported-cpu-features`, `--disable-deprecated-features` 🧪 |
| `nodecpumap [--pretty]` | Total/online CPUs | `virsh nodecpumap --pretty` | |
| `nodecpustats [cpu] [--percent]` | Host CPU stats | `virsh nodecpustats --percent` | |

### Inventory & Inspection

| Command | What it does | Example | Notes |
|---|---|---|---|
| `list [--all] [--inactive] [--title] [--name\|--uuid\|--id] [--state-*] [--with-managed-save]` | List domains with rich filtering | `virsh list --all --title --with-managed-save` | `--managed-save` annotates rather than filters; works only with `--table` |
| `domid` / `domname` / `domuuid` | Convert between ID, name, UUID | `virsh domuuid web01` | Numeric names are interpreted as IDs — avoid them |
| `dominfo <dom>` | State, vCPUs, max/used memory, managed-save flag, security model | `virsh dominfo web01` | Fastest way to see if a managed save image exists |
| `domstate <dom> [--reason]` | Current state + why | `virsh domstate web01 --reason` | States: running, idle, paused, in shutdown, shut off, crashed, pmsuspended |
| `domcontrol <dom>` | State of the control channel to the VMM | `virsh domcontrol web01` | Non-ok also prints seconds in that state — first check when virsh hangs |
| `dumpxml <dom> [--inactive] [--security-info] [--update-cpu] [--migratable] [--xpath] [--wrap]` | Domain XML to stdout | `virsh dumpxml web01 > web01.xml` | 🔒 `--security-info` includes passwords (VNC/SPICE) |

### Lifecycle

| Command | What it does | Example | Notes |
|---|---|---|---|
| `start <dom> [--paused] [--console] [--force-boot] [--bypass-cache] [--autodestroy] [--reset-nvram]` | Start a defined, inactive domain | `virsh start web01 --paused` | `--force-boot` discards managed save 🔥 |
| `shutdown <dom> [--mode acpi\|agent\|initctl\|signal\|paravirt]` | Request graceful guest shutdown | `virsh shutdown web01 --mode agent` | ⚠️ Async; may be ignored if guest has no ACPI handler/agent |
| `reboot <dom> [--mode ...]` | Graceful guest reboot | `virsh reboot web01` | ⚠️ Same caveats as shutdown |
| `reset <dom>` | Hard reset without power cycle | `virsh reset web01` | ⚠️🔥 Like the reset button — filesystem/data loss risk |
| `destroy <dom> [--graceful] [--remove-logs]` | Immediately terminate the domain | `virsh destroy web01 --graceful` | ⚠️🔥 Equivalent to pulling the power cord. Does not delete storage. `--remove-logs` requires virlogd for QEMU 🧪 |
| `suspend <dom>` / `resume <dom>` | Pause / unpause vCPUs | `virsh suspend web01` | Paused domains still hold their memory allocation |

### Definition

| Command | What it does | Example | Notes |
|---|---|---|---|
| `define FILE [--validate]` | Register persistent domain from XML | `virsh define web01.xml --validate` | Doesn't start it |
| `create FILE [--paused] [--console] [--autodestroy] [--validate] [--reset-nvram]` | Create + start from XML (transient, or one-shot config for an existing persistent guest) | `virsh create lab.xml --paused` | Change `<name>`/`<uuid>` for a genuinely new transient domain |
| `undefine <dom> [--managed-save] [--snapshots-metadata] [--checkpoints-metadata] [--nvram] [--remove-all-storage] [--wipe-storage] [--delete-storage-volume-snapshots]` | Remove persistent config | `virsh undefine old01 --nvram --managed-save` | 🔥 `--remove-all-storage` deletes disks; `--wipe-storage` overwrites them |
| `edit <dom>` | `$EDITOR` on the domain XML, validated on save | `virsh edit web01` | Takes effect next boot for most elements |
| `domrename <dom> <new-name>` | Rename a domain | `virsh domrename old new` | Domain must be inactive |

### Access & Autostart

| Command | What it does | Example | Notes |
|---|---|---|---|
| `console <dom> [devname] [--safe] [--force] [--resume]` | Attach to serial console | `virsh console web01 --force` | Escape is `^]`; change with `virsh -e`. `--force` kicks off existing sessions ⚠️ |
| `domdisplay <dom> [--all] [--type vnc\|spice\|rdp] [--include-password]` | Graphical display URI | `virsh domdisplay web01 --all` | 🔒 `--include-password` prints the SPICE password |
| `vncdisplay` / `ttyconsole` | VNC port / TTY path | `virsh vncdisplay web01` | Legacy but still present |
| `autostart <dom> [--disable] [--once]` | Start on host boot | `virsh autostart web01` | `--once` (next boot only) is independent of persistent autostart 🧪 |

---

## 2. Memory & forensics commands (primary focus)

### 2.1 The command table

#### Acquisition

| Command | What it does | Example | Notes |
|---|---|---|---|
| `dump <dom> <corefilepath> [--bypass-cache] {--live \| --crash \| --reset} [--verbose] [--memory-only] [--format <fmt>]` | Dump guest memory (and, without `--memory-only`, the full domain core) to a host file | `virsh dump win10 /evidence/win10.elf --memory-only --format elf --verbose` | 💲🔒 The core forensic command. `--live`, `--crash`, `--reset` are mutually exclusive. See §2.2–2.6 |
| `save <dom> <state-file> [--bypass-cache] [--xml file] [{--running\|--paused}] [--verbose]` | Save RAM + CPU state to a file, then stop the domain | `virsh save db01 /var/lib/libvirt/save/db01.save --verbose` | ⚠️💲 Domain is no longer running afterwards; memory is freed. Disk state is not saved |
| `save ... --parallel [--parallel-connections N]` | Multi-connection parallel save to multiple files | `virsh save db01 /save/db01.save --parallel --parallel-connections 4` | 🧪 Recent libvirt only (11.x era). Check `virsh help save` |
| `managedsave <dom> [--bypass-cache] [{--running\|--paused}] [--verbose]` | Same as save, but libvirt owns the file location | `virsh managedsave web01 --running` | ⚠️ Domain goes to shut off (saved from running); next start resumes it. `dominfo` shows `Managed save: yes` |

#### Restoration

| Command | What it does | Example | Notes |
|---|---|---|---|
| `restore <state-file> [--bypass-cache] [--xml file] [{--running\|--paused}]` | Restore a domain from a save file | `virsh restore /save/db01.save --paused` | 🔥 Never reuse a save file for a second restore unless all storage volumes were reverted to matching content — filesystem corruption otherwise |
| `managedsave-remove <dom>` | Delete the managed save image | `virsh managedsave-remove web01` | 🔥 Discards saved RAM; next start is a cold boot |
| `start <dom> --force-boot` | Start ignoring managed save | `virsh start web01 --force-boot` | 🔥 Equivalent to discarding the saved state |

#### State-file inspection

| Command | What it does | Example | Notes |
|---|---|---|---|
| `save-image-dumpxml <file> [--security-info] [--xpath] [--wrap]` | Print the domain XML embedded in a save file | `virsh save-image-dumpxml /save/db01.save` | Read-only — excellent for provenance in forensics |
| `save-image-define <file> --xml <file> [{--running\|--paused}]` | Replace the XML inside a save image | `virsh save-image-define /save/db01.save --xml fixed.xml` | ⚠️ Host-specific portions only |
| `save-image-edit <file> [{--running\|--paused}]` | `$EDITOR` on the embedded XML | `virsh save-image-edit /save/db01.save` | ⚠️ Modifies evidence — copy first |
| `managedsave-dumpxml <dom>` / `managedsave-edit` / `managedsave-define` | Same three operations for managed save images | `virsh managedsave-dumpxml web01` | 🧪 Added later than the `save-image-*` trio |

#### Live memory stats

| Command | What it does | Example | Notes |
|---|---|---|---|
| `dommemstat <dom> [--period N] [{--config\|--live}\|--current]` | Balloon-driver memory statistics | `virsh dommemstat web01 --period 5` | Needs a balloon device + guest driver; `--period` requires QEMU/KVM ≥ 1.5. Fields: swap_in/out, major_fault, minor_fault, unused, available, actual, rss, usable, last-update, disk_caches, hugetlb_pgalloc/pgfail |
| `domstats [--balloon] [--memory] [--dirtyrate] [--vm] [--state] [--raw] [--nowait] [--enforce]` | Bulk stats across one/many domains | `virsh domstats --balloon --dirtyrate web01` | `--memory` = RDT memory-bandwidth monitors 🧪; `--vm` = hypervisor-specific, outside libvirt's stable API guarantees |
| `domdirtyrate-calc <dom> [--seconds N] --mode=page-sampling\|dirty-bitmap\|dirty-ring` | Measure guest memory dirty rate | `virsh domdirtyrate-calc web01 --seconds 10 --mode dirty-ring` | 🧪 libvirt ≥ 7.x; dirty-ring needs newer QEMU. Read the result with `domstats --dirtyrate`. Key for judging live-dump smear |

#### Host memory

| Command | What it does | Example | Notes |
|---|---|---|---|
| `nodememstats [cell]` | Host/NUMA-cell memory stats | `virsh nodememstats 0` | |
| `freecell [--cellno N \| --all]` | Free memory per NUMA cell / total | `virsh freecell --all` | Capacity planning before a big dump |
| `freepages [--cellno N --pagesize SZ \| --all]` | Free hugepages per cell/size | `virsh freepages --all` | |
| `allocpages --pagesize SZ --pagecount N [--cellno N] [--add] [--all]` | Resize the host hugepage pool | `virsh allocpages --pagesize 2M --pagecount 1024 --add` | ⚠️ Without `--add`, the count is absolute and can shrink the pool |
| `node-memory-tune [shm-pages-to-scan] [shm-sleep-millisecs] [shm-merge-across-nodes]` | Display/set KSM parameters | `virsh node-memory-tune --shm-pages-to-scan 100` | 🔒 KSM page dedup across guests has known side-channel implications |

#### Guest memory config

| Command | What it does | Example | Notes |
|---|---|---|---|
| `setmem <dom> <size> [--config] [--live] [--current]` | Change balloon target | `virsh setmem web01 4G --live` | ⚠️ Async. Ballooning down discards guest memory content — destroys evidence |
| `setmaxmem <dom> <size> [--config] [--live] [--current]` | Change maximum memory | `virsh setmaxmem web01 16G --config` | Usually requires domain restart to take effect |
| `memtune <dom> [--hard-limit] [--soft-limit] [--swap-hard-limit] [--min-guarantee] [--config] [--live] [--current]` | cgroup memory limits | `virsh memtune web01 --hard-limit 8G --live` | ⚠️ A too-low hard limit gets the QEMU process OOM-killed |
| `update-memory-device <dom> [--alias\|--node] [--requested-size] [--config] [--live] [--current] [--print-xml]` | Adjust virtio-mem device size | `virsh update-memory-device web01 --alias mem0 --requested-size 2G --live` | 🧪 libvirt ≥ 7.x, virtio-mem only |

#### Consistency

| Command | What it does | Example | Notes |
|---|---|---|---|
| `domfsfreeze <dom> [--mountpoint PATH]...` | Freeze guest filesystems via guest agent | `virsh domfsfreeze web01` | ⚠️ Guest I/O stalls until thaw. Requires qemu-guest-agent. Always pair with a thaw |
| `domfsthaw <dom> [--mountpoint PATH]...` | Thaw previously frozen filesystems | `virsh domfsthaw web01` | ⚠️ A missed thaw leaves the guest hung |
| `domfsinfo <dom>` | Mounted filesystems inside the guest | `virsh domfsinfo web01` | Requires guest agent |
| `domfstrim <dom> [--minimum bytes] [--mountpoint PATH]` | Issue fstrim in the guest | `virsh domfstrim web01` | 🔥 Discards unused blocks — actively destroys deleted-file evidence. Never run pre-acquisition |

#### Guest introspection

| Command | What it does | Example | Notes |
|---|---|---|---|
| `guestinfo <dom> [--user] [--os] [--timezone] [--hostname] [--filesystem] [--disk] [--interface]` | Rich guest-agent info (users, OS, disks, FS) | `virsh guestinfo web01 --os --user` | 🧪 libvirt ≥ 5.7. Requires guest agent. Excellent triage |
| `domhostname <dom> [--source lease\|agent]` | Guest hostname | `virsh domhostname web01 --source agent` | |
| `domifaddr <dom> [iface] [--full] [--source lease\|agent\|arp]` | Guest IP/MAC addresses | `virsh domifaddr web01 --source agent --full` | `lease` is the default source |
| `domtime <dom> [--now] [--pretty] [--sync] [--time N]` | Read/set guest RTC | `virsh domtime web01 --pretty` | Critical for timeline correlation. Setting needs the agent ⚠️ |
| `guestvcpus <dom> [--cpulist LIST] [{--enable\|--disable}]` | Guest-side vCPU state via agent | `virsh guestvcpus web01` | |

#### Visual evidence & crash triggers

| Command | What it does | Example | Notes |
|---|---|---|---|
| `screenshot <dom> [file] [--screen N]` | Capture the guest display to an image | `virsh screenshot web01 /evidence/screen.ppm` | Non-intrusive, timestamped, great for reports |
| `inject-nmi <dom>` | Inject an NMI into the guest | `virsh inject-nmi web01` | ⚠️ Triggers a guest kernel panic/crashdump if configured that way |
| `send-key <dom> [--codeset CS] [--holdtime MS] <keycode>...` | Inject keystrokes | `virsh send-key web01 --codeset linux KEY_LEFTALT KEY_SYSRQ KEY_C` | ⚠️ Magic SysRq-C = crash the guest |
| `send-process-signal <dom> <pid> <signame>` | Signal a process inside a container | `virsh send-process-signal ct01 1 SIGTERM` | ⚠️ LXC/container drivers |

#### Low-level

| Command | What it does | Example | Notes |
|---|---|---|---|
| `qemu-monitor-command <dom> [--hmp] [--pretty] [--return-value] '<cmd>'` | Raw QMP/HMP passthrough to QEMU | `virsh qemu-monitor-command --hmp win10 'dump-guest-memory -p /evidence/g.elf'` | ⚠️🔒 Unsupported and can desynchronise libvirt's state. This is how you reach `pmemsave`, `memsave`, `dump-guest-memory -w` (Windows DMP) and `info mtree` when `virsh dump` can't express it. Use only on lab/consented systems |
| `qemu-agent-command <dom> [--timeout\|--async\|--block] '<json>'` | Raw guest-agent command | `virsh qemu-agent-command web01 '{"execute":"guest-info"}'` | ⚠️🔒 Can execute code in the guest depending on agent config |
| `qemu-monitor-event [--domain D] [--event E] [--loop] [--timestamp] [--regex]` | Watch raw QEMU monitor events | `virsh qemu-monitor-event --loop --timestamp` | Useful for catching GUEST_PANICKED, STOP, RESUME during acquisition |
| `qemu-attach <pid>` | Adopt an externally-started QEMU process | `virsh qemu-attach 12345` | ⚠️🧪 Fragile; deprecated in practice |

#### Confidential computing

| Command | What it does | Example | Notes |
|---|---|---|---|
| `nodesevinfo` | Host AMD SEV capabilities | `virsh nodesevinfo` | 🧪 SEV-capable hosts only |
| `domlaunchsecinfo <dom>` | Launch-security params of a running domain (SEV measurement etc.) | `virsh domlaunchsecinfo cvm01` | 🔒 If launch security is active, host-side memory dumps are encrypted/unusable |
| `domsetlaunchsecstate <dom> --secrethdr H --secret S [--set-address ADDR]` | Inject a launch secret into guest memory | `virsh domsetlaunchsecstate cvm01 --secrethdr h.b64 --secret s.b64` | 🔒 Guest must be paused; on failure it should be destroyed |

#### Job control

| Command | What it does | Example | Notes |
|---|---|---|---|
| `domjobinfo <dom> [--completed [--keep-completed]] [--anystats] [--rawstats]` | Progress of dump/save/migrate | `virsh domjobinfo web01 --completed` | Completed stats are destroyed once read unless `--keep-completed` |
| `domjobabort <dom> [--postcopy]` | Cancel the running job | `virsh domjobabort web01` | ⚠️ Aborting a dump leaves a truncated file |

### 2.2 `virsh dump` — behaviour, in detail

Default (no flag): the guest is paused for the duration of the dump and resumes automatically when it completes. This gives the most internally consistent image, at the cost of guest downtime proportional to RAM size and disk throughput.

The three mode flags are mutually exclusive:

| Flag | VM behaviour during dump | VM state after | Use when |
|---|---|---|---|
| *(none)* | Paused up front | Resumed (running) | Default choice for forensics — best consistency, acceptable downtime |
| `--live` | Keeps running throughout | Running | Downtime is unacceptable; accept a smeared image |
| `--crash` | Halted | crashed | You want the VM stopped and flagged as crashed |
| `--reset` | Paused | Reset after a successful dump | Debug-then-recover workflows ⚠️🔥 |

**Other flags:**

- `--memory-only` — writes an ELF file containing only guest memory and common CPU registers. Upstream notes this is required for the output to be loadable by the `crash` utility: the legacy kvmdump format is obsolete and unreadable by `crash` ≥ 6.1.0. It is also the right choice when the domain uses host devices directly (VFIO passthrough).
- `--format <string>` — only valid together with `--memory-only`. Documented values include `elf`, `kdump-zlib`, `kdump-lzo`, `kdump-snappy`. Newer libvirt/QEMU combinations add a Windows crashdump format (`win-dmp`) 🧪 — confirm with `virsh help dump` on the target host before relying on it. The older `--compress` flag survives as an alias for the zlib kdump format.
- `--bypass-cache` — writes with `O_DIRECT`, avoiding the host page cache. Slower, but it stops a multi-GB dump from evicting the host's cache. Recommended on busy hosts.
- `--verbose` — progress output. Pair with `domjobinfo` from a second shell.

**Prerequisites and risks**

- Some hypervisors require you to ensure permissions on the target path yourself; libvirt will not fix them. On SELinux/AppArmor hosts, write to a path the QEMU process is permitted to write (a labelled directory under `/var/lib/libvirt/`), or the dump fails with a confusing `EACCES`.
- Free space must exceed guest RAM. A 64 GB VM writes a ~64 GB uncompressed ELF. Check with `virsh dominfo` and `df`.
- Dump duration scales with RAM ÷ write throughput. Pausing a latency-sensitive production VM for that long is a real outage — plan it.
- If the domain uses huge pages or large VFIO-mapped regions, dump size and behaviour can differ from the nominal RAM figure.

### 2.3 Live vs offline acquisition

| | Live (`--live`, or `qemu-monitor-command`) | Paused (default `dump`) | Offline (`save`/`managedsave`) |
|---|---|---|---|
| **Guest downtime** | None | Duration of dump | Permanent until restore |
| **Consistency** | Smeared — pages change while being written | High | Highest (VM stopped at a single point) |
| **Volatile data** | Fully live | Fully preserved | Fully preserved |
| **Output** | ELF / kdump / raw | ELF / kdump | libvirt save format (RAM + CPU state + embedded XML) |
| **Forensic soundness** | Weakest | Strong | Strong, but changes VM state |
| **Typical use** | Production triage | IR on a VM you may stop | Preserve-and-hand-over |

**On smear:** a live dump captures pages at different moments. Pointer-chasing structures (process lists, page tables, network connection tables) can be internally inconsistent, and analysis tools may fail to build a profile. Use `domdirtyrate-calc` first — if the dirty rate is high relative to your write throughput, expect a bad image and prefer a paused dump.

**Recommended order for a paused acquisition:**

```bash
virsh domstate win10 --reason                 # 1. record state
virsh domtime win10 --pretty                  # 2. guest clock for timeline
virsh dumpxml win10 > /evidence/win10.xml     # 3. configuration provenance
virsh screenshot win10 /evidence/screen.ppm   # 4. visual state
virsh suspend win10                           # 5. freeze (explicit, auditable)
virsh dump win10 /evidence/win10.elf \
      --memory-only --format elf --bypass-cache --verbose
sha256sum /evidence/win10.elf | tee /evidence/win10.elf.sha256
virsh resume win10                            # 6. restore service
```

Pausing explicitly with `suspend` rather than relying on `dump`'s implicit pause gives you a clean, separately logged boundary — and means an aborted dump doesn't silently resume the guest.

**Do not** run `domfstrim`, `setmem` (downward), or snapshot deletion before acquisition. Each destroys data.

### 2.4 save / managedsave / restore

`save` writes RAM and CPU state (not disk state) to a file and then stops the domain, freeing its host memory. `managedsave` is the same operation with libvirt choosing and tracking the file location; `dominfo` reports `Managed save: yes`, and `list --all --managed-save` annotates it.

**State transitions worth memorising:**

| Command | From | To |
|---|---|---|
| `managedsave` | running | shut off (saved from running) |
| `managedsave` | paused | shut off (saved from paused) |
| `managedsave --running` | paused | shut off (saved from running) |
| `managedsave --paused` | running | shut off (saved from paused) |
| `start` | shut off (saved from running) | running (restored) |
| `start --force-boot` | any saved state | running (booted) — saved state discarded 🔥 |

`--running` / `--paused` on `save`, `managedsave` and `restore` override which state the domain comes back in; by default it matches how it was saved.

`--xml file` supplies an alternative domain XML for the restored guest, with changes only in host-specific portions — e.g. adjusting paths when underlying storage was renamed or snapshotted after the save.

> 🔥 **The single biggest footgun:** restoring the same save file twice without reverting storage to its matching content corrupts the guest filesystem. The saved RAM contains cached filesystem metadata that no longer matches what's on disk. Treat a save file as single-use unless you also revert every volume.

### 2.5 Processing the output

| Format | Produced by | Analyse with |
|---|---|---|
| ELF core | `dump --memory-only --format elf` | `crash`, volatility3 (`-f file.elf`), `gdb`, `readelf -n` for notes/registers |
| kdump-compressed | `dump --memory-only --format kdump-zlib\|kdump-lzo\|kdump-snappy` | `crash`, `makedumpfile -R` to convert back |
| Windows DMP 🧪 | `dump --memory-only --format win-dmp` (newer libvirt) or QMP `dump-guest-memory -w` | WinDbg, Volatility |
| Raw physical range | QMP/HMP `pmemsave` / `memsave` | Manual carving, strings, YARA |
| libvirt save file | `save` / `managedsave` | `virsh save-image-dumpxml` for metadata; the RAM region is QEMU migration-stream format, not a flat dump — not directly consumable by Volatility |

**Quick sanity checks:** `readelf -l dump.elf` (PT_LOAD segments = memory ranges), `readelf -n dump.elf` (CPU register notes), `ls -lh` against the guest's configured RAM.

### 2.6 Security and privacy

> 🔒 A guest memory dump is the most sensitive artefact on the host. It contains, in cleartext: disk-encryption keys (LUKS, BitLocker), TLS private keys and session keys, SSH agent material, kernel keyring contents, database buffers, decrypted user documents, browser sessions, and credentials.

- Write dumps to encrypted, access-controlled storage. `/tmp` and world-readable paths are unacceptable.
- Hash immediately (`sha256sum`) and record the hash separately for chain of custody.
- `dumpxml --security-info` and `domdisplay --include-password` print VNC/SPICE passwords — omit them unless you specifically need them, and treat the output accordingly.
- `qemu-monitor-command` bypasses libvirt's access-control layer. Where polkit rules restrict operations, monitor passthrough can circumvent them; restrict who can reach it.
- Anyone with `qemu:///system` write access can dump any guest's memory. In multi-tenant environments this is a full tenant-isolation break — treat libvirt socket access as equivalent to root on every guest.
- On SEV/SEV-SNP/TDX guests, host-side memory is encrypted with a key the host cannot access. `virsh dump` will produce ciphertext. Check `domlaunchsecinfo` and `nodesevinfo` first — if launch security is active, plan in-guest acquisition instead.
- **Legal:** acquiring guest memory captures data belonging to the guest's users. Confirm authorisation before running any of this on a system you don't own.

---

## 3. Advanced commands

### CPU

| Command | What it does | Example | Notes |
|---|---|---|---|
| `vcpuinfo <dom> [--pretty]` | Per-vCPU state, time, affinity | `virsh vcpuinfo web01 --pretty` | |
| `vcpucount <dom> [--maximum\|--active] [--live\|--config\|--current] [--guest]` | vCPU counts | `virsh vcpucount web01 --guest` | |
| `vcpupin <dom> [vcpu] [cpulist] [--live] [--config] [--current]` | Pin vCPUs to host CPUs | `virsh vcpupin web01 0 2-3` | ⚠️ Bad pinning tanks performance |
| `emulatorpin <dom> [cpulist] [--live] [--config]` | Pin the emulator thread | `virsh emulatorpin web01 0-1 --live` | |
| `setvcpus <dom> <count> [--maximum] [--live] [--config] [--guest] [--hotpluggable]` | Change vCPU count | `virsh setvcpus web01 4 --live` | ⚠️ Async; hot-unplug often fails |
| `setvcpu <dom> <vcpulist> [--enable\|--disable] [--live] [--config]` | Enable/disable individual vCPUs | `virsh setvcpu web01 3 --enable --live` | 🧪 |
| `cpu-stats <dom> [--total] [start] [count]` | Per-vCPU CPU time | `virsh cpu-stats web01 --total` | Domain must be running |
| `schedinfo <dom> [--set param=val] [--live] [--config] [--current]` | CPU scheduler params (shares, quota, period) | `virsh schedinfo web01 --set cpu_shares=2048 --live` | ⚠️ Can starve a guest |
| `cpu-compare FILE [--error] [--validate]` / `cpu-baseline FILE [--features] [--migratable]` | Compare/compute CPU models vs host | `virsh cpu-compare guest-cpu.xml --error` | |
| `hypervisor-cpu-compare` / `hypervisor-cpu-baseline` / `hypervisor-cpu-models [--all]` | Same, but accounting for hypervisor ability | `virsh hypervisor-cpu-models --arch x86_64 --all` | 🧪 Newer than the `cpu-*` trio. `hypervisor-cpu-baseline --ignore-host` 🧪 |
| `cpu-models <arch>` | CPU models libvirt knows for an arch | `virsh cpu-models x86_64` | |

### NUMA & IOThreads

| Command | What it does | Example | Notes |
|---|---|---|---|
| `numatune <dom> [--mode strict\|preferred\|interleave] [--nodeset LIST] [--live] [--config]` | Guest NUMA memory policy | `virsh numatune web01 --mode strict --nodeset 0-1 --live` | ⚠️ strict + insufficient node memory = failure to start |
| `iothreadinfo` / `iothreadadd` / `iothreaddel` / `iothreadpin` / `iothreadset` | Manage QEMU IOThreads | `virsh iothreadpin web01 1 0-3 --live` | 🧪 `iothreadset` (polling tuning) is newer |

### Perf

| Command | What it does | Example | Notes |
|---|---|---|---|
| `perf <dom> [--enable list] [--disable list] [--live] [--config]` | Toggle perf events (cache misses, cycles, page faults…) | `virsh perf web01 --enable cmt,mbmt --live` | Read via `domstats --perf`. Needs host PMU access |

### Block

| Command | What it does | Example | Notes |
|---|---|---|---|
| `domblklist <dom> [--inactive] [--details]` | List block devices | `virsh domblklist web01 --details` | Source of the path argument for other block commands |
| `domblkinfo <dom> [dev --all] [--human]` | Capacity/allocation/physical size | `virsh domblkinfo web01 --all --human` | Spot thin-provisioned overcommit |
| `domblkstat <dom> [dev] [--human]` | Per-disk I/O counters | `virsh domblkstat web01 vda --human` | Running domains only |
| `domblkerror <dom>` | Disks currently in error state | `virsh domblkerror web01` | Run this when `domstate --reason` says paused due to I/O error |
| `domblkthreshold <dom> <dev> <threshold>` | Set the block-threshold event trigger | `virsh domblkthreshold web01 vda 10G` | For thin-provisioning alerts |
| `blockresize <dom> <path> <size> [--capacity] [--extend]` | Resize a block device live | `virsh blockresize web01 vda 100G --extend` | 🔥 Always use `--extend` to prevent accidental shrink/data loss. Defaults to KiB without a suffix |
| `blockcommit <dom> <path> [base] [top] [--shallow] [--active] [--delete] [--pivot] [--wait --verbose] [--keep-relative]` | Merge snapshot deltas down into backing files | `virsh blockcommit web01 vda --active --pivot --wait --verbose` | 🔥💲 Committed files are invalidated, possibly as soon as the job starts. `--delete` removes them |
| `blockcopy <dom> <path> {dest [format] \| --xml f} [--shallow] [--reuse-external] [--pivot\|--finish] [--transient-job] [--synchronous-writes] [--dest-is-zero] [--print-xml]` | Mirror a disk to a new destination | `virsh blockcopy web01 vda /backup/vda.qcow2 --wait --verbose --finish` | 💲 Storage migration / forensic disk imaging of a live VM. `--dest-is-zero` 🧪 |
| `blockpull <dom> <path> [base] [--wait --verbose] [--keep-relative]` | Flatten a backing chain into the active layer | `virsh blockpull web01 vda --wait --verbose` | 💲 Heavy I/O |
| `blockjob <dom> <path> [--info\|--raw] [--abort] [--async] [--pivot] [bandwidth] [--bytes]` | Monitor/throttle/abort block jobs | `virsh blockjob web01 vda --info --raw` | ⚠️ `--abort` mid-copy can leave the destination unusable |
| `blkdeviotune <dom> <dev> [--total-bytes-sec ...] [--total-iops-sec ...] [*-max] [*-max-length] [--group-name] [--live] [--config]` | Per-disk I/O throttling | `virsh blkdeviotune web01 vda --total-bytes-sec 100M --live` | Setting one value in a category resets the others to unlimited |
| `domthrottlegroupset` / `-del` / `-info` / `-list` | Named, shareable throttle groups | `virsh domthrottlegroupset web01 grp1 --total-iops-sec 500 --live` | 🧪 Recent libvirt (11.x era) |
| `blkiotune <dom> [--weight N] [--device-weights ...] [--device-read-iops-sec ...] [--live] [--config]` | cgroup blkio weights | `virsh blkiotune web01 --weight 500 --live` | Weight range [10,1000] on kernels ≥ 2.6.39 |

### Network

| Command | What it does | Example | Notes |
|---|---|---|---|
| `domiflist <dom> [--inactive]` | List virtual NICs | `virsh domiflist web01` | Gives the MAC/target for other commands |
| `domifstat <dom> <iface>` | Per-NIC counters | `virsh domifstat web01 vnet0` | RX/TX may be swapped for unmanaged ethernet type |
| `domif-setlink` / `domif-getlink <dom> <iface> [up\|down] [--config] [--print-xml]` | Link up/down | `virsh domif-setlink web01 vnet0 down` | ⚠️🔒 Network isolation for incident containment — cuts the guest off without alerting it via shutdown |
| `domiftune <dom> <iface> [--inbound avg,peak,burst,floor] [--outbound avg,peak,burst] [--live] [--config]` | Per-NIC QoS | `virsh domiftune web01 vnet0 --inbound 1000,2000,100 --live` | Zero average clears the setting |
| `domifannounce <dom> [iface] [--initial ms] [--max ms] [--rounds n] [--step ms]` | Inject gratuitous ARP | `virsh domifannounce web01 vnet0 --rounds 10` | 🧪 Re-syncs switches after topology change |

### Devices

| Command | What it does | Example | Notes |
|---|---|---|---|
| `attach-device` / `detach-device <dom> FILE [--live] [--config] [--current] [--persistent]` | Hotplug from XML | `virsh attach-device web01 disk.xml --live --config` | ⚠️ Detach is async and the guest may refuse |
| `attach-disk <dom> <source> <target> [--driver] [--subdriver] [--cache] [--type] [--mode readonly\|shareable] [--persistent] [--live] [--config] [--print-xml]` | Hotplug a disk | `virsh attach-disk web01 /iso/evidence.iso sdb --type cdrom --mode readonly --live` | Handy for mounting a read-only acquisition toolkit |
| `attach-interface <dom> <type> <source> [--model] [--mac] [--live] [--config]` | Hotplug a NIC | `virsh attach-interface web01 bridge br0 --model virtio --live` | |
| `detach-device-alias <dom> <alias> [--live] [--config]` | Detach by device alias | `virsh detach-device-alias web01 ua-mydisk --live` | 🧪 |
| `update-device <dom> FILE [--live] [--config] [--force]` | Modify an attached device | `virsh update-device web01 cdrom.xml --live` | ⚠️ `--force` can break the guest |
| `change-media <dom> <path> [source] [--eject] [--insert] [--update] [--live] [--config] [--force] [--print-xml]` | CD/floppy media | `virsh change-media web01 sda /iso/tools.iso --insert --live` | |
| `dom-fd-associate <dom> <name> [--seclabel-writable] [--seclabel-restore]` | Associate host FDs with a domain's security context | — | 🧪🔒 Very recent, niche |

### Power management & migration

| Command | What it does | Example | Notes |
|---|---|---|---|
| `dompmsuspend <dom> <mem\|disk\|hybrid> [--duration N]` | Guest S3/S4 suspend | `virsh dompmsuspend web01 mem` | ⚠️🔥 Requires guest agent. With `disk`, QEMU terminates the process — runtime changes (hotplug, live memory settings) are lost unless made with `--config` |
| `dompmwakeup <dom>` | Wake from pmsuspended | `virsh dompmwakeup web01` | |
| `migrate <dom> <desturi> [--live] [--offline] [--p2p] [--tunnelled] [--copy-storage-all] [--copy-storage-inc] [--auto-converge] [--postcopy] [--postcopy-resume] [--compressed] [--persistent] [--undefinesource] [--verbose] [--timeout N]` | Move a domain to another host | `virsh migrate --live --verbose web01 qemu+ssh://host2/system` | ⚠️💲🔒 Transfers full guest memory over the network. Without TLS it's cleartext RAM on the wire |
| `migrate-setspeed` / `-getspeed` / `-setmaxdowntime` / `-getmaxdowntime` / `-compcache` / `-postcopy` | Tune an in-flight migration | `virsh migrate-setspeed web01 1000` | `migrate-compcache` 🧪 deprecated in newer QEMU |

### Metadata, events & misc

| Command | What it does | Example | Notes |
|---|---|---|---|
| `metadata <dom> [uri] [--key K] [--set VALUE] [--remove] [--live] [--config]` | XML metadata namespace | `virsh metadata web01 http://ex.org/ns --key case --set 'IR-2024-017'` | Useful for tagging a domain under investigation |
| `desc <dom> [--title] [--edit] [--new-desc TEXT] [--live] [--config]` | Free-text title/description | `virsh desc web01 --title --new-desc 'QUARANTINED'` | |
| `event [--domain D] [--event E] [--all] [--loop] [--timestamp] [--timeout N]` | Watch libvirt lifecycle events | `virsh event --all --loop --timestamp` | Excellent live-demo material |
| `await <dom> <event> [--timeout N] [--interval N]` | Block until a condition is met | `virsh await web01 domain-state --timeout 60` | 🧪 Recent addition; scripting-friendly |
| `set-lifecycle-action <dom> <type> <action> [--live] [--config]` | Set on-poweroff/on-reboot/on-crash behaviour | `virsh set-lifecycle-action web01 on_crash coredump-destroy --config` | 🧪 Set `on_crash` to `coredump-destroy`/`coredump-restart` for automatic crash capture |
| `set-user-password <dom> <user> <password> [--encrypted]` | Set a guest account password | `virsh set-user-password web01 root 'x'` | 🔒⚠️ Requires agent. Modifies the guest — forensically destructive |
| `set-user-sshkeys` / `get-user-sshkeys <dom> <user> [--file F] [--reset] [--remove]` | Manage guest SSH keys | `virsh get-user-sshkeys web01 root` | 🧪🔒 Requires agent |
| `domxml-from-native <format> <config>` / `domxml-to-native <format> {<domain>\|--xml f}` | Convert to/from native config | `virsh domxml-to-native qemu-argv --xml web01.xml` | 🔎 Shows the actual QEMU command line — invaluable for debugging and for documenting the exact VM configuration |
| `lxc-enter-namespace <dom> [--noseclabel] -- <cmd>` | Run a command inside a container's namespaces | `virsh lxc-enter-namespace ct01 -- /bin/ls /proc` | ⚠️🔒 LXC driver only; effectively container escape-in-reverse |

---

## Snapshots, checkpoints, backups

### Snapshot

| Command | What it does | Example | Notes |
|---|---|---|---|
| `snapshot-create-as <dom> [name] [desc] [--disk-only] [--live] [--memspec ...] [--diskspec ...] [--atomic] [--quiesce] [--no-metadata] [--reuse-external] [--halt] [--validate]` | Create a snapshot from CLI args | `virsh snapshot-create-as web01 snap1 --memspec file=/snap/mem.img,snapshot=external --diskspec vda,snapshot=external --atomic --quiesce` | 💲 `--memspec` writes guest RAM to a file — a legitimate alternative acquisition path. `--quiesce` needs the guest agent |
| `snapshot-create <dom> [xmlfile] [flags…]` | Create from a snapshot XML | `virsh snapshot-create web01 snap.xml` | Full control over disk/memory targets |
| `snapshot-list <dom> [--tree] [--parent] [--leaves] [--metadata] [--external] [--internal] [--name]` | List snapshots | `virsh snapshot-list web01 --tree` | |
| `snapshot-dumpxml <dom> <snap> [--security-info]` | Snapshot metadata XML | `virsh snapshot-dumpxml web01 snap1` | |
| `snapshot-info` / `snapshot-parent` / `snapshot-current` / `snapshot-edit` | Inspect/navigate the snapshot tree | `virsh snapshot-current web01 --name` | |
| `snapshot-revert <dom> <snap> [--running] [--paused] [--force]` | Roll back to a snapshot | `virsh snapshot-revert web01 snap1 --running` | 🔥 Discards all changes since the snapshot, including guest memory. `--force` needed for risky reverts |
| `snapshot-delete <dom> <snap> [--metadata] [--children] [--children-only]` | Delete a snapshot | `virsh snapshot-delete web01 snap1 --children` | 🔥 `--metadata` leaves the data but orphans it |

### Checkpoint & Backup

| Command | What it does | Example | Notes |
|---|---|---|---|
| `checkpoint-create-as <dom> [name] [desc] [--diskspec ...] [--quiesce]` | Create an incremental-backup checkpoint | `virsh checkpoint-create-as web01 cp1` | 🧪 libvirt ≥ 5.6, needs QEMU dirty-bitmap support |
| `checkpoint-list` / `-info` / `-dumpxml` / `-parent` / `-edit` / `-delete` | Manage checkpoints | `virsh checkpoint-list web01 --tree` | |
| `backup-begin <dom> [backupxml] [checkpointxml] [--reuse-external] [--preserve-domain-on-shutdown]` | Start a push- or pull-model backup job | `virsh backup-begin web01` | 🧪💲 Returns immediately; track with `domjobinfo`, end with `domjobabort`. `--preserve-domain-on-shutdown` keeps the VM paused rather than terminating it mid-backup 🧪 |
| `backup-dumpxml <dom> [--xpath] [--wrap]` | XML of the running backup job | `virsh backup-dumpxml web01` | Shows libvirt-assigned filenames |

---

## Storage, network, node devices, secrets

### Pool

| Command | What it does | Example | Notes |
|---|---|---|---|
| `pool-list [--all] [--details] [--persistent] [--autostart] [--type T]` | List storage pools | `virsh pool-list --all --details` | |
| `pool-define` / `pool-define-as` / `pool-create` / `pool-create-as` | Define/create pools | `virsh pool-define-as ev dir --target /evidence` | `pool-create*` = transient |
| `pool-build <pool> [--overwrite] [--no-overwrite]` | Initialise pool backing store | `virsh pool-build ev` | 🔥 `--overwrite` formats the target |
| `pool-start` / `pool-destroy` / `pool-refresh` / `pool-autostart` | Pool lifecycle | `virsh pool-refresh default` | `pool-refresh` after out-of-band file changes |
| `pool-delete <pool>` | Delete the pool's backing resources | `virsh pool-delete old` | 🔥 Destroys data |
| `pool-undefine` / `pool-info` / `pool-dumpxml` / `pool-edit` / `pool-name` / `pool-uuid` / `pool-event` | Manage/inspect pools | `virsh pool-info default` | |
| `find-storage-pool-sources <type> [srcSpec]` / `find-pool-sources-as` | Discover iSCSI/NFS/etc. sources | `virsh find-storage-pool-sources netfs --host nas01` | |
| `pool-capabilities` | Supported pool types/formats | `virsh pool-capabilities` | 🧪 |

### Volume

| Command | What it does | Example | Notes |
|---|---|---|---|
| `vol-list <pool> [--details]` / `vol-info` / `vol-dumpxml` / `vol-path` / `vol-name` / `vol-key` / `vol-pool` | Inspect volumes | `virsh vol-list default --details` | |
| `vol-create` / `vol-create-as` / `vol-create-from` / `vol-clone` | Create volumes | `virsh vol-create-as default new.qcow2 20G --format qcow2` | |
| `vol-upload` / `vol-download <vol> <file> [--pool P] [--offset N] [--length N] [--sparse]` | Stream data in/out of a volume | `virsh vol-download win10.qcow2 /evidence/disk.img --pool default --sparse` | 💲🔒 Disk imaging through libvirt — works without host filesystem access to the image |
| `vol-resize <vol> <cap> [--pool P] [--allocate] [--delta] [--shrink]` | Resize a volume | `virsh vol-resize d.qcow2 50G --pool default` | 🔥 `--shrink` loses data. Defaults to bytes without a suffix (differs from `blockresize`) |
| `vol-delete <vol> [--pool P] [--delete-snapshots]` | Delete a volume | `virsh vol-delete old.qcow2 --pool default` | 🔥 |
| `vol-wipe <vol> [--pool P] [--algorithm A]` | Securely overwrite a volume | `virsh vol-wipe scratch.img --pool default --algorithm zero` | 🔥💲 Irreversible; algorithms include zero, nptl, dod, bsi, gutmann, random |

### Network, node devices & secrets

| Command | What it does | Example | Notes |
|---|---|---|---|
| `net-list [--all] [--inactive]` / `net-info` / `net-dumpxml` / `net-name` / `net-uuid` | Inspect virtual networks | `virsh net-list --all` | |
| `net-define` / `net-create` / `net-start` / `net-destroy` / `net-undefine` / `net-edit` / `net-autostart` | Network lifecycle | `virsh net-destroy default` | ⚠️ `net-destroy` disconnects every guest on it |
| `net-update <net> <cmd> <section> <xml> [--live] [--config] [--parent-index N]` | Modify a live network (DHCP hosts, forwarding) | `virsh net-update default add ip-dhcp-host "<host mac='52:54:00:aa:bb:cc' ip='192.168.122.50'/>" --live --config` | |
| `net-dhcp-leases <net> [mac]` | Current DHCP leases | `virsh net-dhcp-leases default` | 🔎 Maps MACs to IPs for network forensics |
| `net-event` / `net-desc` / `net-metadata` | Events and annotations | `virsh net-event --all --loop` | 🧪 |
| `net-port-list` / `net-port-create` / `net-port-dumpxml` / `net-port-delete` | Network port objects | `virsh net-port-list default` | 🧪 libvirt ≥ 5.5 |
| `nodedev-list [--cap C] [--tree] [--inactive] [--all]` / `nodedev-info` / `nodedev-dumpxml` | Host device inventory | `virsh nodedev-list --tree --cap pci` | |
| `nodedev-detach <dev> [--driver vfio]` / `nodedev-reattach` / `nodedev-reset` | Bind/unbind devices for passthrough | `virsh nodedev-detach pci_0000_03_00_0 --driver vfio` | ⚠️🔥 Detaching an in-use host device (NIC, storage HBA) can take the host down |
| `nodedev-create` / `nodedev-define` / `nodedev-undefine` / `nodedev-start` / `nodedev-destroy` / `nodedev-autostart` / `nodedev-update` / `nodedev-event` | Manage mediated/virtual devices | `virsh nodedev-define mdev.xml` | 🧪 Persistent mdev support is recent |
| `secret-list [--ephemeral] [--private]` / `secret-dumpxml` / `secret-define` / `secret-undefine` / `secret-event` | Manage libvirt secrets | `virsh secret-list` | 🔒 |
| `secret-set-value <uuid> {--file F \| --interactive}` / `secret-get-value <uuid> [--plain]` | Set/read secret values | `virsh secret-get-value <uuid>` | 🔒🔥 Reveals LUKS/iSCSI/Ceph keys in cleartext. Prefer `--file` over the deprecated `--base64` argument on the command line (it leaks via shell history/ps) |
| `nwfilter-list` / `-define` / `-undefine` / `-dumpxml` / `-edit` | Network filter rules | `virsh nwfilter-list` | 🔒 Guest-level firewalling |
| `nwfilter-binding-list` / `-create` / `-dumpxml` / `-delete` | Filter-to-port bindings | `virsh nwfilter-binding-list` | 🧪 libvirt ≥ 4.5 |
| `nodesuspend <mem\|disk\|hybrid> <duration>` | Suspend the host | `virsh nodesuspend mem 3600` | ⚠️🔥 Takes down every guest. Duration must be ≥ 60 s |
| `iface-list` / `iface-define` / `iface-start` / `iface-destroy` / `iface-bridge` / `iface-unbridge` / `iface-dumpxml` / `iface-edit` / `iface-name` / `iface-mac` / `iface-undefine` | Host interface config via netcf | `virsh iface-list --all` | 🧪 Often unavailable — netcf is unmaintained and omitted from many distro builds |
| `iface-begin` / `iface-commit` / `iface-rollback` | Transactional host network changes | `virsh iface-begin` | 🧪 Same caveat. `iface-rollback` is your safety net when reconfiguring remote hosts |

---

## 4. Deprecated, discouraged and version-dependent

| Command / option | Status | Guidance |
|---|---|---|
| `nodeinfo` | Discouraged upstream. Cannot faithfully represent non-symmetrical NUMA or multi-die hosts; reports a fake flat topology in those cases, and CPU frequency reflects only CPU 0 at one instant | Use `capabilities` and read `/capabilities/host/topology` |
| `dump` without `--memory-only` | Legacy kvmdump format, obsolete; unreadable by `crash` ≥ 6.1.0 | Always pass `--memory-only` for analysable output |
| `--compress` on `dump` | Retained as an alias for the zlib kdump format | Use `--format kdump-zlib` explicitly |
| `--dump-format` on `dump` | Naming from an intermediate development series | The shipped spelling is `--format` — verify with `virsh help dump` |
| Underscored option spellings (`--total_bytes_sec`) | Kept for backward compatibility only | Use dashed forms |
| `--tunnelled` | Alternate spelling retained | Use `--tunneled` |
| `--persistent` on `domif-setlink` / `domif-getlink` | Compatibility alias | Use `--config` |
| `iface-*` (netcf) | Frequently not compiled in | Manage host networking with the distro's own tooling |
| `qemu-attach` | Fragile, effectively abandoned | Don't build workflows on it |
| `migrate-compcache` | Tied to QEMU's old compression path, deprecated in newer QEMU | Prefer `--auto-converge` / multifd |
| `secret-set-value --base64 <value>` | Leaks the secret via shell history and ps | Use `--file` or `--interactive` |
| `save --parallel` / `--parallel-connections` | 🧪 New (libvirt 11.x era) | Confirm with `virsh help save` |
| `domthrottlegroup*` | 🧪 New (libvirt 11.x era) | |
| `await`, `dom-fd-associate`, `domdisplay-reload`, `net-metadata`, `nodedev-define`/`-autostart` | 🧪 Recent additions | |
| `domdirtyrate-calc --mode dirty-ring` | 🧪 Needs a QEMU build with dirty-ring support | |
| `--format win-dmp` on `dump` | 🧪 Availability varies by libvirt/QEMU | Fall back to QMP `dump-guest-memory -w` |
| `guestinfo`, `set-user-sshkeys`, `update-memory-device` | 🧪 libvirt ≥ 5.7 / ≥ 7.x respectively | |

> Always confirm on the target host: `virsh version --daemon`, then `virsh help <command>`. The manpage on libvirt.org describes the newest release, not what's installed.

---

## 5. State and privilege requirements

**Requires the VM to be running**
`dump` · `save` · `managedsave` · `suspend` · `dommemstat` · `domblkstat` · `domifstat` · `cpu-stats` · `domdirtyrate-calc` · `domfsfreeze` · `domfsthaw` · `domfsinfo` · `domfstrim` · `domifaddr --source agent` · `domhostname --source agent` · `guestinfo` · `guestvcpus` · `domtime` · `screenshot` · `console` · `domdisplay` · `vncdisplay` · `inject-nmi` · `send-key` · `migrate --live` · `blockcommit` · `blockcopy` · `blockpull` · `blockjob` · `blockresize` · `setmem --live` · `domjobinfo` · `domlaunchsecinfo` · `domthrottlegroup* --live` · all `--live` variants generally

**Requires the VM to be paused**
`resume` · `domsetlaunchsecstate` (guest must be paused; destroy it on failure)

> Note that `dump` without a mode flag pauses the guest itself and resumes it afterwards — you don't need to pause first, though doing so explicitly is better practice.

**Works on shut-off VMs**
`start` · `define` · `undefine` · `domrename` (requires inactive) · `dumpxml --inactive` · `edit` · `domblklist --inactive` · `domiflist --inactive` · `domthrottlegrouplist --inactive` · `autostart` · `dominfo` · `domstate` · `domuuid` / `domname` · `snapshot-*` (most) · `managedsave-remove` · `managedsave-dumpxml` · `desc --config` · `metadata --config` · all `--config` variants

**Works on files, not domains (VM state irrelevant)**
`restore` · `save-image-dumpxml` · `save-image-define` · `save-image-edit` · `domxml-from-native` · `domxml-to-native` · `cpu-compare` · `cpu-baseline` · `hypervisor-cpu-*`

**Requires root / privileged access**
Effectively everything on `qemu:///system`. Specifically security-relevant: `dump`, `save`, `restore`, `qemu-monitor-command`, `qemu-agent-command`, `secret-get-value`, `nodedev-detach`, `nodesuspend`, `allocpages`, `node-memory-tune`, `iface-*`, `lxc-enter-namespace`, `dumpxml --security-info`, `domdisplay --include-password`.

Read-only operations (`list`, `dominfo`, `domstate`, `dumpxml` without `--security-info`, `domstats`, `capabilities`) work over a `--readonly` connection — use that for triage and demos.

---

## 6. Troubleshooting playbook

| Symptom | Commands, in order |
|---|---|
| VM unresponsive | `domstate <d> --reason` → `domcontrol <d>` → `domjobinfo <d>` → `domblkerror <d>` |
| VM paused unexpectedly | `domstate --reason` → `domblkerror` → check host `df` and pool free space |
| Guest hung, need a kernel dump | Confirm crash-on-panic is configured → `inject-nmi`, or `send-key ... KEY_LEFTALT KEY_SYSRQ KEY_C` → collect the guest-side dump, or `dump --memory-only` host-side |
| High memory pressure | `dommemstat --period 5` → `domstats --balloon` → `nodememstats` → `freecell --all` → `memtune` |
| Slow live migration | `domdirtyrate-calc --seconds 10` → `domjobinfo` → `migrate-setspeed` / `migrate-setmaxdowntime` → consider `--auto-converge` or `--postcopy` |
| "Where did my disk go?" | `domblklist --details` → `domblkinfo --all --human` → `vol-list <pool> --details` |
| Hotplug refused | `domcapabilities` → `dumpxml` → `qemu-monitor-event --loop` while retrying |
| Need the exact QEMU invocation | `domxml-to-native qemu-argv --xml <file>` |
| Anything unexplained | `virsh -d 4 <command>` and `/var/log/libvirt/qemu/<domain>.log` |

---

## 7. Top commands to demonstrate live

Twelve commands, ordered as a narrative. All are fast, visual, and safe on a lab VM.

| # | Command | Why it lands |
|---|---|---|
| 1 | `virsh list --all --title --with-managed-save` | Sets the scene; shows filtering power beyond plain `list` |
| 2 | `virsh dominfo demo && virsh domstate demo --reason` | State plus reason — immediately useful, rarely known |
| 3 | `virsh domxml-to-native qemu-argv --xml demo.xml` | Reveals the real QEMU command line. Reliably gets a reaction |
| 4 | `virsh dommemstat demo --period 5` | Live balloon telemetry; explain unused vs available vs rss |
| 5 | `virsh domdirtyrate-calc demo --seconds 5 --mode page-sampling && virsh domstats demo --dirtyrate` | Two-step, shows why live dumps smear. Strong setup for the next slide |
| 6 | `virsh screenshot demo /tmp/before.ppm` | Instant visual artefact, zero risk |
| 7 | `virsh suspend demo && virsh domstate demo` | The explicit acquisition boundary |
| 8 | `virsh dump demo /tmp/demo.elf --memory-only --format elf --verbose` | The headline. Run on a 1–2 GB VM so it finishes on stage |
| 9 | `readelf -l /tmp/demo.elf \| head -20 && sha256sum /tmp/demo.elf` | Proves the output is real and demonstrates chain of custody in one line |
| 10 | `virsh resume demo && virsh domstate demo` | Closes the loop; audience sees the VM survive |
| 11 | `virsh managedsave demo && virsh dominfo demo \| grep -i managed && virsh start demo` | Offline acquisition and clean resume in three commands |
| 12 | `virsh event --all --loop --timestamp` (second terminal, running throughout) | Every command above appears as a timestamped event. Excellent closing visual |

**Backup demos if time allows:** `virsh domif-setlink demo vnet0 down` (incident containment in one command), `virsh guestinfo demo --os --user` (agent-powered triage), `virsh net-dhcp-leases default` (MAC-to-IP mapping).

**Pre-flight for the demo:** a small VM (1–2 GB RAM) so the dump is quick; qemu-guest-agent installed if you want #12's backups; ~2 GB free in `/tmp`; root or a polkit-authorised user; and `virsh help dump` run beforehand to confirm this host's available `--format` values.

---

## References

- libvirt project, virsh(1) manual — https://libvirt.org/manpages/virsh.html (primary source for all syntax above)
- libvirt domain XML format — https://libvirt.org/formatdomain.html
- libvirt backup XML format — https://libvirt.org/formatbackup.html
- libvirt connection URIs — https://libvirt.org/uri.html
- libvirt host capabilities format — https://libvirt.org/formatcaps.html
- Red Hat, Virtualization Deployment and Administration Guide — save/restore/managedsave option semantics
- IBM, KVM Virtual Server Management — virsh dump default pause-and-resume behaviour and state-transition tables
- libvirt commit history (virDomainCoreDumpWithFormat, --memory-only ELF requirement for crash ≥ 6.1.0)
