# 🐧 Linux Fundamentals

> A structured knowledge base for Linux, DevOps and Cloud Engineering.

---

# Table of Contents

1. Terminal
2. Shell
3. Bash
4. CMD
5. PowerShell
6. Kernel
7. WSL
8. Linux vs Linux Distribution
9. Ubuntu
10. Linux Prompt
11. PATH Environment Variable
12. Basic Linux Commands

---

# 1. Terminal

## Definition

A **Terminal** is a text-based application that provides an interface for users to interact with the operating system by entering commands and viewing their output.

## Simple Explanation

Think of it as a **chat window** where you communicate with the operating system.

## Examples

- Windows Terminal
- GNOME Terminal
- macOS Terminal

---

# 2. Shell

## Definition

A **Shell** is a command-line interpreter that reads user commands, interprets them, and communicates with the operating system to execute them.

## Simple Explanation

The shell acts as a **translator** between the user and the operating system.

## Common Shells

- Bash
- Zsh
- Fish
- Ksh
- CMD
- PowerShell

## Useful Commands

```bash
echo $SHELL
cat /etc/shells
```

---

# 3. Bash

## Definition

**Bash (Bourne Again Shell)** is the most widely used Unix/Linux shell and scripting language.

## Simple Explanation

Bash is one implementation of a shell.

Shell → Category

Bash → One type of Shell

---

# 4. Command Prompt (CMD)

## Definition

Command Prompt (CMD) is the default Windows command-line interpreter.

---

# 5. PowerShell

## Definition

PowerShell is Microsoft's advanced command-line shell and scripting environment used for automation and system administration.

---

# 6. Kernel

## Definition

The **Kernel** is the core component of the operating system that manages hardware resources and provides services to software applications.

## Responsibilities

- CPU Management
- Memory Management
- Process Management
- Device Management
- File System Management

## Check Kernel Version

```bash
uname -r
```

---

# 7. WSL

## Definition

WSL (Windows Subsystem for Linux) allows a real Linux environment to run directly inside Windows without using a virtual machine.

## Useful Commands

```powershell
wsl
wsl -l -v
wsl --shutdown
```

---

# 8. Linux vs Linux Distribution

## Linux

Linux is an **open-source kernel**.

## Linux Distribution

A Linux Distribution is a complete operating system built using the Linux kernel.

Examples

- Ubuntu
- Debian
- Fedora
- CentOS
- Arch Linux

---

# 9. Ubuntu

Ubuntu is one of the most popular Linux distributions used in cloud computing, DevOps and servers.

---

# 10. Linux Prompt

Example

```bash
yp@Yp:~$
```

## Structure

```text
username@hostname:current_directory$
```

| Part | Meaning |
|------|---------|
| yp | Logged-in Username |
| @ | Separator |
| Yp | Hostname |
| : | Separator |
| ~ | Home Directory |
| $ | Normal User |
| # | Root User |

## Home Directory

The symbol

```bash
~
```

represents

```bash
/home/<username>
```

Useful Commands

```bash
pwd
echo $HOME
cd ~
cd
```

---

# 11. PATH Environment Variable

## Definition

PATH is an environment variable that stores a list of directories where the shell searches for executable commands.

## Why do we need PATH?

Without PATH, we would need to type the full location of every program.

Instead of

```bash
/usr/bin/git
```

we simply type

```bash
git
```

## Workflow

```text
You type:

git
      │
      ▼
Shell
      │
Checks PATH
      │
Searches directories
      │
Finds:
/usr/bin/git
      │
Runs Git
```

## Useful Commands

```bash
echo $PATH

which git

which python3

whereis git
```

---

# 12. Basic Linux Commands

## pwd

### Definition

Displays the current working directory.

### Syntax

```bash
pwd
```

---

## ls

### Definition

Lists files and directories.

### Syntax

```bash
ls
```

### Common Options

```bash
ls -l
ls -a
ls -la
ls -lh
```

---

## cd

### Definition

Changes the current working directory.

### Examples

```bash
cd Documents
cd ..
cd /
cd ~
cd
```

---

## mkdir

### Definition

Creates a new directory.

```bash
mkdir Linux
```

---

## touch

### Definition

Creates an empty file.

```bash
touch notes.txt
```

---

## cp

### Definition

Copies files or directories.

```bash
cp file1.txt file2.txt
cp -r folder1 folder2
```

---

## mv

### Definition

Moves or renames files/directories.

```bash
mv file1.txt file2.txt
mv notes.txt Documents/
```

---

## rm

### Definition

Deletes files or directories.

```bash
rm file.txt
rm -r folder
```

---

## clear

### Definition

Clears the terminal screen.

```bash
clear
```

Shortcut

```
Ctrl + L
```

---

## cat

### Definition

Displays the content of a file.

```bash
cat notes.txt
```

---

## echo

### Definition

Displays text or variable values.

```bash
echo "Hello Linux"

echo $HOME
```

---

## whoami

### Definition

Displays the current logged-in username.

```bash
whoami
```

---

## hostname

### Definition

Displays the hostname of the system.

```bash
hostname
```

---

## which

### Definition

Displays the executable path of a command.

```bash
which python3
which git
```

---

## whereis

### Definition

Displays the executable, source code and manual page locations.

```bash
whereis python3
```

---

## man

### Definition

Displays the manual page for a command.

```bash
man ls
```

Exit

```
q
```

---

# Quick Revision

| Command | Purpose |
|----------|----------|
| pwd | Current Working Directory |
| ls | List Files |
| cd | Change Directory |
| mkdir | Create Directory |
| touch | Create Empty File |
| cp | Copy Files |
| mv | Move / Rename |
| rm | Delete |
| clear | Clear Terminal |
| cat | View File |
| echo | Print Text |
| whoami | Current User |
| hostname | Computer Name |
| which | Executable Path |
| whereis | Executable + Docs |
| man | Documentation |

---

# Interview Questions

### What is the difference between Terminal and Shell?

Terminal is the application where users type commands.

Shell is the command interpreter that executes those commands.

---

### What is the difference between Bash and Zsh?

Both are shells.

Bash is the traditional default shell.

Zsh provides better auto-completion, plugins and customization.

---

### What is PATH?

PATH is an environment variable that stores directories where the shell searches for executable commands.

---

### Difference between Linux and Ubuntu?

Linux is a kernel.

Ubuntu is a Linux distribution built using the Linux kernel.

---

### Difference between Normal User and Root User?

- `$` → Normal User
- `#` → Root User