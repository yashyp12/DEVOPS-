# Linux Command Cheatsheet — DevOps/Cloud Engineer Track
*Practice environment: WSL2 Ubuntu + AWS EC2 (`ssh aws-dev`)*

Legend: 🔴 Tier 1 (must be muscle memory, zero hesitation) | 🟡 Tier 2 (know it exists, look up exact flags)

---

## 1. Navigation & Filesystem

| Command | What it does | Notes |
|---|---|---|
| 🔴 `pwd` | Print current directory | |
| 🔴 `cd <path>` | Change directory | `cd ..` up one, `cd ~` home, `cd -` previous dir |
| 🔴 `ls -la` | List all files incl. hidden, long format | `-l` = long, `-a` = all (hidden), `-h` = human sizes |
| 🔴 `mkdir -p a/b/c` | Make directory (nested with `-p`) | |
| 🔴 `touch file.txt` | Create empty file / update timestamp | |
| 🔴 `cp file dest` | Copy file | `-r` for directories |
| 🔴 `mv file dest` | Move / rename | Same command does both |
| 🔴 `rm file` | Delete file | `-r` recursive, `-f` force — **no undo, no trash bin** |
| 🔴 `rmdir dir` | Delete empty directory | Use `rm -r` for non-empty |
| 🔴 `cat file` | Print entire file to screen | Bad for huge files |
| 🔴 `less file` | Page through file | `q` to quit, `/word` to search inside |
| 🔴 `head -n 20 file` | First 20 lines | Default 10 |
| 🔴 `tail -n 20 file` | Last 20 lines | |
| 🔴 `tail -f file` | Live-follow a growing file | **Critical for watching logs in real time** |
| 🟡 `tree` | Visual directory tree | Not installed by default, `sudo apt install tree` |
| 🟡 `ln -s target link` | Create symbolic link | Like a shortcut |

---

## 2. Permissions & Ownership

| Command | What it does | Notes |
|---|---|---|
| 🔴 `chmod 644 file` | Set permission bits | Format: owner-group-other, each 0-7 (r=4,w=2,x=1) |
| 🔴 `chmod +x script.sh` | Make executable | Common for scripts |
| 🔴 `chmod 400 key.pem` | Owner read-only | Required for SSH private keys |
| 🔴 `chown user:group file` | Change owner + group | `sudo chown ubuntu:ubuntu file` |
| 🔴 `ls -la` | Also shows permission string | `-rw-r--r--` = owner rw, group r, other r |
| 🟡 `chmod -R 755 dir` | Recursive permission change | Careful with recursive on large trees |
| 🟡 `umask` | Default permission mask for new files | Rarely changed manually |

**Quick reference — permission digits:**
`7`=rwx, `6`=rw-, `5`=r-x, `4`=r--, `0`=---
`644` = owner read/write, group read, other read (typical file)
`755` = owner full, group/other read+execute (typical script/dir)
`400` = owner read only (SSH keys)

---

## 3. Process Management

| Command | What it does | Notes |
|---|---|---|
| 🔴 `ps aux` | List all running processes | Pipe to `grep` to filter |
| 🔴 `ps aux \| grep nginx` | Find specific process | |
| 🔴 `top` | Live process viewer | `q` to quit |
| 🟡 `htop` | Better `top`, color UI | `sudo apt install htop` |
| 🔴 `kill <PID>` | Terminate process gracefully | Sends SIGTERM |
| 🔴 `kill -9 <PID>` | Force kill | Sends SIGKILL, last resort |
| 🔴 `killall <name>` | Kill by process name | e.g. `killall node` |
| 🟡 `jobs` | List background jobs in current shell | |
| 🟡 `bg` / `fg` | Send job to background / bring to foreground | |
| 🟡 `nohup cmd &` | Run command immune to hangup, in background | Survives terminal close |
| 🔴 `command &` | Run in background | Frees up terminal |
| 🔴 `Ctrl+C` | Kill foreground process | |
| 🔴 `Ctrl+Z` | Suspend foreground process | Resume with `fg` |

---

## 4. Disk & Memory

| Command | What it does | Notes |
|---|---|---|
| 🔴 `df -h` | Disk space per filesystem | `-h` = human readable |
| 🔴 `du -sh <dir>` | Size of a directory | `-s` = summary, `-h` = human readable |
| 🔴 `free -h` | RAM usage | Shows used/free/available memory |
| 🟡 `du -sh * \| sort -rh` | Sizes of everything in current dir, sorted biggest first | Very useful for "what's eating my disk" |

---

## 5. Text Processing / grep / find / regex

| Command | What it does | Notes |
|---|---|---|
| 🔴 `grep "text" file` | Search for text in file | |
| 🔴 `grep -i "text" file` | Case-insensitive | |
| 🔴 `grep -r "text" dir/` | Recursive search across directory | |
| 🔴 `grep -c "text" file` | Count matches | |
| 🔴 `grep -v "text" file` | Invert — show lines NOT matching | |
| 🟡 `grep -E "regex"` | Extended regex support | |
| 🔴 `find . -name "*.log"` | Find files by name pattern | |
| 🔴 `find . -type f` / `-type d` | Filter files vs directories | |
| 🟡 `find . -mmin -10` | Modified in last 10 min | |
| 🟡 `find . -size +100M` | Files bigger than 100MB | |
| 🟡 `awk '{print $1}'` | Column-based text extraction | Learn only when you hit a real need |
| 🟡 `sed 's/old/new/g'` | Find & replace in text stream | Same — learn on demand |
| 🔴 `\| ` (pipe) | Chain commands, output → input | e.g. `ps aux \| grep nginx` |
| 🔴 `>` / `>>` | Redirect output (overwrite / append) | |
| 🟡 `xargs` | Build commands from piped input | e.g. `find . -name "*.tmp" \| xargs rm` |

---

## 6. User Management

| Command | What it does | Notes |
|---|---|---|
| 🔴 `whoami` | Current user | |
| 🔴 `sudo <command>` | Run as superuser | |
| 🟡 `su - username` | Switch user | |
| 🟡 `adduser username` | Create new user | |
| 🟡 `usermod -aG group user` | Add user to group | `-aG` = append to group, don't overwrite existing |
| 🟡 `passwd username` | Change password | |
| 🟡 `groups` | Show groups current user belongs to | |
| 🟡 `id` | Show UID, GID, groups | |

---

## 7. Networking

| Command | What it does | Notes |
|---|---|---|
| 🔴 `ping -c 4 host` | Test reachability, 4 packets | `-c` limits count, else runs forever |
| 🔴 `curl -I https://url` | Fetch headers only | Quick "is this up" check |
| 🔴 `curl https://url` | Fetch full response body | |
| 🔴 `ss -tulnp` | List listening ports + owning process | Modern replacement for netstat |
| 🟡 `netstat -tulnp` | Older equivalent of `ss` | Still common in older docs/interviews |
| 🔴 `hostname -I` | Show local IP address(es) | |
| 🟡 `traceroute host` | Show network path/hops to host | |
| 🟡 `nslookup domain` / `dig domain` | DNS lookup | `dig` more detailed |
| 🔴 `wget url` | Download a file | |
| 🟡 `nmap` | Port scanning | Not preinstalled, use responsibly |

---

## 8. SSH & File Transfer

| Command | What it does | Notes |
|---|---|---|
| 🔴 `ssh -i key.pem user@ip` | Connect to remote server | |
| 🔴 `ssh aws-dev` | Connect via config alias | Once `~/.ssh/config` is set |
| 🔴 `chmod 400 key.pem` | Fix key permission error | Required before SSH will accept the key |
| 🔴 `scp -i key.pem file user@ip:/path` | Copy file to remote | |
| 🔴 `scp user@ip:/path/file ./` | Copy file from remote | |
| 🟡 `scp -r` | Copy whole directory | |
| 🟡 `sftp user@ip` | Interactive file transfer session | Lower priority — SCP covers most needs |
| 🟡 `ssh-keygen -t ed25519` | Generate new SSH keypair | |
| 🟡 `ssh-agent` / `ssh-add` | Avoid re-entering passphrase each time | |

---

## 9. Package Management (apt — Debian/Ubuntu)

| Command | What it does | Notes |
|---|---|---|
| 🔴 `sudo apt update` | Refresh package index (NOT install anything) | Always run before install |
| 🔴 `sudo apt upgrade` | Actually install newer versions of installed packages | Different from `update` — common confusion |
| 🔴 `sudo apt install <pkg>` | Install a package | `-y` to skip confirmation |
| 🔴 `sudo apt remove <pkg>` | Remove package, keep config files | |
| 🟡 `sudo apt purge <pkg>` | Remove package + config files | |
| 🔴 `apt search <term>` | Search available packages | |
| 🟡 `apt list --installed` | List installed packages | |
| 🟡 `apt list --upgradable` | Show what can be upgraded | |

---

## 10. Service Management (systemctl)

| Command | What it does | Notes |
|---|---|---|
| 🔴 `sudo systemctl status <svc>` | Check if running | e.g. `nginx`, `sshd` |
| 🔴 `sudo systemctl start <svc>` | Start service | |
| 🔴 `sudo systemctl stop <svc>` | Stop service | |
| 🔴 `sudo systemctl restart <svc>` | Stop + start | Use after config changes |
| 🔴 `sudo systemctl enable <svc>` | Auto-start on boot | Doesn't start it now, just on future boot |
| 🟡 `sudo systemctl disable <svc>` | Remove from boot startup | |
| 🟡 `journalctl -u <svc>` | View service logs | `-f` to follow live |

---

## Daily Scenario Drills (run these from memory, no scrolling)

1. Check what's using port 80, then check running processes.
2. Check disk space and find what's eating it in your home directory.
3. Search a log file for the word "error", case-insensitive, with a count.
4. Copy a local file to EC2, then copy a different file back.
5. Install a package, verify it's there, remove it.
6. Start a service, confirm it's running, stop it, confirm it stopped.
7. Fix a "permission denied" on a script you just wrote.
8. Find all `.log` files modified in the last hour under a directory.

---

*Keep this file updated as you learn new commands. Move things from Tier 2 to Tier 1 once they're automatic — don't just add without removing.*
