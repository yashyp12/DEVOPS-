

## Terminal

- Definition: A text-based application window to enter commands and view output.
- Quick: Window where you type commands.
- Examples: Windows Terminal, GNOME Terminal, macOS Terminal.
- Open (examples):
  - Windows: press `Win` and type `Windows Terminal` or `wt`
  - Linux (GUI): `Ctrl+Alt+T`
  - macOS: `⌘ + Space` → type `Terminal`

---

## Shell

- Definition: Command-line interpreter that reads commands and runs them.
- Quick: Translator between you and the OS.
- Common shells: `bash`, `zsh`, `fish`, `powershell`, `cmd`.
- Check current shell (Linux/macOS):
  - `echo $SHELL`
- Show available shells: `cat /etc/shells`

---

## Bash (Bourne Again Shell)

- Definition: A widely used Unix/Linux shell and scripting language.
- Quick: Common default shell for many Linux distros.
- Useful commands (examples):
  - Navigation: `pwd`, `ls -la`, `cd /path`
  - File ops: `cp src dest`, `mv src dest`, `rm file`, `mkdir dir`, `touch file`
  - Viewing: `cat file`, `less file`, `head -n 20 file`, `tail -f file`
  - Search & pipes: `grep 'pattern' file`, `ps aux | grep java`, `cmd1 | cmd2`
  - Redirects: `command > out.txt`, `command >> append.txt`, `command 2>&1`
  - Permissions: `chmod 755 file`, `chown user:group file`
  - Processes: `ps aux`, `top` / `htop`, `kill <PID>`, `kill -9 <PID>`

---

## Command Prompt (CMD) — Windows

- Definition: Windows' basic command-line interpreter for legacy commands and batch scripts.
- Quick: Simple Windows shell.
- Examples: `dir`, `cd`, `del file`, `copy src dest`, `cls`

---

## PowerShell

- Definition: Microsoft’s advanced shell and scripting environment for automation and administration.
- Quick: More powerful than CMD; object-based piping.
- Basic commands (PowerShell):
  - List: `Get-ChildItem` (alias `ls`)
  - Change dir: `Set-Location` (alias `cd`)
  - Processes: `Get-Process`, `Stop-Process -Id <PID>`
  - Commands discovery: `Get-Command`, `Get-Help <cmd>`

---

## Kernel

- Definition: Core component of an operating system that manages hardware and core services.
- Responsibilities:
  - CPU scheduling and management
  - Memory management (allocation, swap)
  - Process lifecycle and IPC
  - Device drivers and I/O
  - Filesystem access and management
- Check kernel version (Linux/macOS): `uname -r`

---

## WSL (Windows Subsystem for Linux)

- Definition: Runs a real Linux environment inside Windows without a VM.
- Quick: Use Linux tools on Windows.
- Useful commands (Windows PowerShell / cmd):
  - List distributions: `wsl -l -v`
  - Set default distro: `wsl --setdefault <DistroName>`
  - Run a command in WSL: `wsl -d <DistroName> -- <command>`
  - Launch default distro: `wsl` or open it from Windows Terminal

---

## Linux vs Distributions

- Clarification: "Linux" is strictly the kernel. Distributions bundle the kernel with tools and a package manager.
- Examples of distributions: Ubuntu, Debian, Fedora, CentOS, Arch.

---

## Ubuntu

- Definition: A popular Linux distribution built on the Linux kernel.
- Quick: General-purpose OS used for servers, cloud, and development.
- Common package management commands (APT):
  - Update package lists: `sudo apt update`
  - Upgrade packages: `sudo apt upgrade`
  - Install a package: `sudo apt install <package>`
  - Remove a package: `sudo apt remove <package>`

---

## Quick Reference — Common Commands

- Bash / Linux:
  - `ls -la` — list files
  - `cd /path` — change directory
  - `cat file` — show file
  - `grep -R "text" .` — search recursively
  - `sudo <command>` — run as root
- System:
  - `uname -a` — kernel and system info
  - `df -h` — disk usage
  - `free -m` — memory usage
  - `journalctl -u <service>` — view systemd logs
- WSL:
  - `wsl -l -v`, `wsl -d Ubuntu`
- PowerShell:
  - `Get-ChildItem`, `Get-Process`, `Stop-Process -Id <PID>`

---

 