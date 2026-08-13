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

set env path in bash temporary session .
``` bash
- yp@Yp:~$ export NAME= "yASH"
- yp@Yp:~$ echo $NAME
```
---

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
ls -l   -shows detailed information
ls -a    - shows hidden files
ls -la   -shows detailed information including hidden files
ls -lh   - shows detailed information in human-readable format
ls -R    - lists files recursively
```

---

## cd

### Definition

Changes the current working directory.

### Examples

```bash
cd Documents
cd .. (previous directory)
cd . (current directory)
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
at practise/demo.txt

- to create a file and write contants in it

cat HELLO.txt > content of the file will be written in HELLO.txt
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
HISTORY
### Definition

Displays history of commands executed in the terminal.

```bash
history

history | grep "ls" (searches for "ls" in the command history)
```

---

tree
### Definition
shows the directory structure in a tree-like format.

```bash
tree
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



## cat

### Definition

Displays the content of a file.

```bash
cat notes.txt
```

---

## cat file1.txt file 2.txt > file3.txt

### Definition

combines the content of file1.txt and file2.txt and writes it to file3.txt.

```bash
cat file1.txt file2.txt > file3.txt
```

tranlsates content file from smaller to bigger text.

```bash
cat file.txt | tr 'a-z' 'A-Z' > upper.txt
```

## echo
### Definition

Displays text or variable values.

```bash
echo "Hello Linux"
echo $HOME

echo "Hello World" >> copy_file.txt
(appends the text to the file)
```
 
## man

### Definition

Displays the manual page for a command.

```bash
man ls
```
 
## mkdir

### Definition

Creates a new directory.

```bash
mkdir Linux

mkdir-p Linux/DevOps/Cloud
(creates parent directories if they don't exist)
```
  
## cp

### Definition

Copies files or directories.
```bash
cp file1.txt file2.txt

cp -r folder1 folder2
```


## mv

### Definition
Moves or renames files/directories.

```bash
mv file1.txt file2.txt
mv notes.txt Documents/
```

To move multiple files into another directory, list the files before the destination folder.

```bash
mv file1.txt file2.txt file3.txt backup/
mv *.txt Documents/
```

mv can also be use to rename a file or directory.

```bash     
mv oldname.txt ../newname.txt
```



## appropos

### Definition
Linux searches its manual pages and suggests related commands.

```bash    
appropos "copy"
```


## sudo

### Definition
Allows a permitted user to execute a command as the superuser or another user.

``` bash
sudo

```
## df
### Definition
Displays disk space usage of file systems.

```bash
df -h
```


## head
### Definition
Displays the first few lines of a file.

```bash
head -n 10 file.txt
```

## tail
### Definition
Displays the last few lines of a file.

```bash
tail -n 10 file.txt
```


## find
### Definition    

Searches for files and directories in a directory hierarchy.

```bash
find /path/to/search -name "filename"
```
```bash
find . -type -d
```   
(searches for directories in the current directory and its subdirectories)

```bash
find -type f
```
(searches for files in the current directory and its subdirectories)


```bash
find -type f -name "*.txt"
```   
(searches for all text files in the current directory and its subdirectories)

```bash
find -size +100M
```   
(searches for files larger than 100MB in the current directory and its subdirectories)


## file Permissions 
### Definition
File permissions determine who can read, write, or execute a file.

- Owner , Group , Others

```bash
ls -l
```

# chmod

chmod WHO OPERATION PERMISSION FILE

``` bash
chmod 755 file.txt
```

# Syntax:

chmod WHO OPERATION PERMISSION FILE

``` bash
chmod   u      +        x      script.sh
```

## Understanding `chmod 777`

### Syntax

```bash
chmod 777 filename
```

### How it Works

`chmod` = **Change Mode (Permissions)**

The three digits represent permissions for:

```text
777

│ │ │

│ │ └── Others
│ └──── Group
└────── Owner
```

Linux assigns a numeric value to each permission:

| Permission | Value |
|------------|------:|
| Read (`r`) | 4 |
| Write (`w`) | 2 |
| Execute (`x`) | 1 |
| No Permission (`-`) | 0 |

The numbers are simply the sum of these values.

Example:
```text
rwx

↓

4 + 2 + 1

↓

7
```

Therefore:

```text
777

↓

7     7     7

↓

rwx   rwx   rwx
```

Meaning:

- **Owner:** Read, Write, Execute
- **Group:** Read, Write, Execute
- **Others:** Read, Write, Execute

So,

```bash
chmod 777 upper.txt
```

gives **everyone full access** to `upper.txt`.

### Common Permission Values

| Permission | Numeric | Meaning |
|------------|--------:|---------|
| `rwx` | 7 | Read + Write + Execute |
| `rw-` | 6 | Read + Write |
| `r-x` | 5 | Read + Execute |
| `r--` | 4 | Read Only |
| `---` | 0 | No Permission |

### Examples

| Command | Permission |
|---------|------------|
| `chmod 777 file.txt` | `rwxrwxrwx` |
| `chmod 755 script.sh` | `rwxr-xr-x` |
| `chmod 644 notes.txt` | `rw-r--r--` |
| `chmod 600 id_rsa` | `rw-------` |




## chown
### Definition
Changes the ownership of a file or directory.

```bash
sudo chown newowner:newgroup file.txt
```



Ex - 

```bash     
sudo chown yp:yp file.txt
```

```bash
sudo chown root demo.txt
```

## to Change Only group
```bash     
sudo chown :newgroup file.txt
sudo chgrp newgroup file.txt
```

## check for group
```bash
cat /etc/group
```

## users context

(command is running as the current user )
```bash 
cat upper.txt
```

(command is running a root administrator user )
```bash 
sudo cat upper.txt
```


## grep
## Definition

grep searches for specific text (a pattern) inside one or more files and prints the matching lines.

- allow us to searc text within any file 

```bash
grep "pattern to search" filename 
```

Ex- 
```bash
grep "Linux" notes.txt
grep -w "Linux" notes.txt (searches for the whole word "Linux" in notes.txt)

grep -i "linux" notes.txt (searches for "linux" in a case-insensitive manner)

grep -win "yash" ./*.txt 
(searches for the whole word "yash" in a case-insensitive manner in all text files in the current directory)

grep -r "Linux" /path/to/directory 
(searches for "Linux" recursively in all files within the specified directory)
```


# terminnal shortcuts

```bash
git add .;git comit -m "message";git push origin main
```
```bash
sort companies.txt
(sorts the lines in companies.txt in ascending order)
```
```bash
sort -r companies.txt
(sorts the lines in companies.txt in descending order)
```

```bash
wget https://example.com/file.txt
(downloads file.txt from the specified URL)
```


# top
# definition

```bash
top (displays real-time information about system processes, resource usage, and performance metrics)
```

```bash
kill <PID> (terminates a specific process by its Process ID)
```
kill -9 <PID> (forcefully terminates a specific process by its Process ID)


# Process

```bash
ps -fp <PID> (displays detailed information about a specific process by its Process ID)


```bash
uname -a (displays detailed information about the system, including kernel version, hostname, and architecture)
```

# zip
# definition
(compresses files into a ZIP archive)
```bash     
zip archive.zip file1.txt file2.txt
```

# unzip
(extracts files from a ZIP archive)
```bash
unzip archive.zip
```

```bash
hostname -I (displays the IP address(es) associated with the hostname)
```

```bash
hostname -i (displays the IP address of the system)
```


# useradd
# definition
(creates a new user account on the system)

``` bash
sudo useradd -m newuser
(creates a new user account named "newuser" and creates a home directory for the user)
```

(set password for the new user)
```bash
sudo passwd newuser
```   

- To check whether the user created or not 
```bash
id newuser
cat /etc/passwd
```

- To switch to the new user account

```bash
su - newuser
```

- To delete the user account and its home directory
```bash
sudo userdel -r newuser
```

# adduser
command to add user (along with home directory)

```bash
sudo adduser newuser
```

# Opeating System Commands

# uname 
(displays system information, including the kernel name, version, and architecture)
```bash
uname -a
uname -o(displays the operating system name)
uname -m(displays the machine hardware name)
uname -r (displays the kernel release version)
```


- (displays detailed information about the CPU architecture and specifications)

```bash
lscpu
```

```bash
free -h (displays memory usage in a human-readable format)
```

```bash
vmstat (displays virtual memory statistics, including page faults, swaps, and memory usage)
```

```bash
id (displays user and group information for the current user)
```

``` bash
getent group (displays group information from the system's group database)
```

- Format
group_name : password : GID : members

```bash
lsof (lists open files and the processes that have them open)

lsof - root (lists open files for the root user)
```   


# Networking Commands 

# nslookup
### Definition
nslookup is a command-line tool used to query Domain Name System (DNS) servers to obtain information about domain names, IP addresses, and other DNS records.

```bash
nslookup google.com
``

```bash
netstat -tuln (displays active network connections, listening ports, and associated processes)
```

```bash
ifconfig (displays network interface configuration and IP address information)
```


### Definition
sed (Stream Editor) is a command-line utility used to read, filter, search, and modify text in a stream or file.

 ``` bash 
 sed
 ```

```bash
cut (  extracts selected portions (columns or fields) from each line of a file or command output.)
cut -c 1-2 companies.txt
```


``` bash
telnet (is a command-line tool used to establish a connection to a remote host over the Telnet protocol, allowing users to access and manage remote systems.)
```


``` bash
htop (is an interactive process viewer and system monitor for Unix-like operating systems, providing real-time information about running processes, resource usage, and system performance.)
```


# working with Operators 


``` bash 
 ping google.com & ping amazon.com
(sends ICMP echo requests to both google.com and amazon.com simultaneously in the background)
 ```


``` bash
echo "first" && "hello" (executes the second command only if the first command succeeds)
```

``` bash
echo "first" || "hello" (executes the second command only if the first command fails)
```

``` bash
echo "hey" && {echo "hi"; echo "i am good"}
```


```bash
rm -rf !(companies.txt)
(removes all files and directories in the current directory except for companies.txt)
```

### What is PATH?

PATH is an environment variable that stores directories where the shell searches for executable commands.

``` bash
- yp@Yp:~$ export NAME= "yASH"
- yp@Yp:~$ echo $NAME
```
---

### Difference between Linux and Ubuntu?

Linux is a kernel.

Ubuntu is a Linux distribution built using the Linux kernel.

---

### Difference between Normal User and Root User?

- `$` → Normal User
- `#` → Root User


# SSH - Secure Shell    
Secure Shell (SSH) is a cryptographic network protocol that allows secure communication between a client and a server over an unsecured network. It provides a secure channel for remote login, command execution, and data transfer

- Allows us to connect to a remot linux server and execute commands on it.


## Why SSH is Used

- Remote server administration
- Secure file transfer (SCP/SFTP)
- Deploy applications
- Execute Linux commands remotely
- Manage cloud servers (AWS, Azure, GCP)

## Why is it Called Secure Shell?

- **Secure** → Communication is encrypted.
- **Shell** → Provides remote command-line access to another computer.

# More about SSH 

- default port - 22

# SSH Architecture - 

SSH follows a client-server architecture, where the SSH client initiates a connection to the SSH server. The server authenticates the client and establishes a secure encrypted channel for communication.

## Components

- SSH Client → Initiates the connection.
- Internet → Transfers encrypted data.
- SSH Server → Accepts SSH connections.
- Port 22 → Default SSH port.
- Authentication → Verifies user identity.
- Authorization → Determines what the user can access.
- Secure Session → Allows encrypted command execution.

# SSH Authentication

Authentication is the process of verifying the identity of a user before granting access.

## Authentication Methods

### Password Authentication

- Uses username and password.
- Easy to use.
- Less secure.
- Vulnerable to brute-force attacks.

### SSH Key Authentication

- Uses a Public Key and a Private Key.
- Recommended for production servers.
- Used by AWS, Azure, GitHub, and most Linux servers.

## Public Key

- Safe to share.
- Stored on the server.
- Located in `~/.ssh/authorized_keys`.

## Private Key

- Secret.
- Stored only on your local machine.
- Never share or upload it.

## Key Pair

- Generated together using `ssh-keygen`.
- Public key → Server
- Private key → Client

# ~/.ssh Directory

The `~/.ssh` directory stores all SSH-related files.

## Common Files

### id_ed25519

- Private SSH Key
- Keep it secret
- Never share it

### id_ed25519.pub

- Public SSH Key
- Upload to GitHub, AWS, Azure

### known_hosts

- Stores trusted remote servers
- Prevents connecting to fake servers

### config

- Stores SSH connection shortcuts
- Useful for managing multiple servers

### authorized_keys

- Exists on the remote server
- Stores users' public keys
- Used for SSH key authentication

# What is ssh-keygen?

- ssh-keygen is a command used to generate an SSH public and private key pair for secure authentication.

# commands - 

```bash
ssh -V (displays the version of the SSH client installed on your system)
```

```bash
ls -la ~/.ssh (lists the contents of the ~/.ssh directory, including hidden files)
```

```bash
ssh-keygen (generates a new SSH key pair)
```

```bash
cd ~/.ssh (moves to the ~/.ssh directory)
ls

```

# clonining repo using ssh with github 

```bash
ssh -T git@github.com
(tests the SSH connection to GitHub and verifies authentication)
```

```bash
git clone git@github.com:username/repository.git
(clones a GitHub repository using SSH)
```

# SSH Config
SSH Config is a configuration file that stores predefined SSH connection settings, allowing you to connect to remote servers using short aliases instead of repeatedly typing full connection details.

# how to generate config file

```bash
mkdir -p ~/.ssh
touch ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config
```

```bash
nano ~/.ssh/config
(opens the SSH config file in the nano text editor)
```
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519

# Test
```bash
ssh -T git@github.com
```


# SCP (Secure Copy Protocol)

SCP (Secure Copy Protocol) is a command-line utility that securely transfers files and directories between two computers over SSH.

- SSH encrypts everything.
- Port 22, because SCP runs over SSH.

#  Commands

Copy a file from local machine to remote server:
```bash
scp file.txt user@remote_host:/path/to/destination 

(securely copies file.txt from the local machine to the specified path on the remote host)
```

- Upload file
```bash
scp file.txt ubuntu@IP:/home/ubuntu/
```

- Download file
```bash
scp ubuntu@IP:/home/ubuntu/file.txt /local/destination/
scp ubuntu@IP:/home/ubuntu/file.txt .
```

- Upload Folder 
```bash
scp -r project ubuntu@IP:/home/ubuntu/ 

(securely copies the entire "project" directory from the local machine to the specified path on the remote host)

```

# What is SFTP?
SFTP (SSH File Transfer Protocol) is a protocol that allows secure file management and file transfer over an SSH connection.


# Commands and setup

- Start SFTP session

```bash
sftp user@remote_host
sftp ubuntu@54.xx.xx.xx
```
```bash
ls 
(lists files and directories on the remote server)

cd logs 
(changes the current directory on the remote server to "logs")

put app.jar 
(uploads the local file "app.jar" to the current directory on the remote server)

get log.txt 
(downloads the remote file "log.txt" to the local machine)

put -r project 
(uploads the local directory "project" and its contents to the remote server)


get -r project 
(downloads the remote directory "project" and its contents to the local machine)

```
 

# SSH Troubleshooting 

Error 1 — Permission denied (publickey)

- Cause: The server does not recognize your public key.
- Solution: Ensure your public key is added to the `~/.ssh/authorized_keys` file on the server.
- Cause - Wrong private key
- Solution - Use the correct private key with the `-i` option when connecting.


Error 2 — Connection Timed Out
- Cause: The server is unreachable or the SSH service is not running.
- Solution: Check the server's IP address, ensure the SSH service is running, and verify that port 22 is open in the firewall.

Error 3 — Connection Refused
- Cause: The SSH service is not running on the server.
- Solution: Start the SSH service on the server and ensure it is listening on port 22.

Error 4 — Host Key Verification Failed
- Cause: The server's host key has changed or is not recognized.
- Solution: Remove the old host key from the `~/.ssh/known_hosts` file and reconnect to the server to accept the new host key.



# How to use SSH ?

- To use ssh service must be installed on Linux server and client machine.

```bash
sudo apt install openssh-server (installs the SSH server on the remote machine)
```

```bash
sudo apt install openssh-client  (installs the SSH client on the local machine)
```

- enable ssh 

```bash
sudo systemctl enable ssh (enables the SSH service to start automatically on system boot)

sudo systemctl start ssh  (starts the SSH service immediately) 
```

```bash
sudo systemctl restart ssh (restarts the SSH service to apply any configuration changes)
```

```bash
sudo systemctl stop ssh
```

### Check SSH Status

```bash
sudo systemctl status ssh
```


## Connect to Remote Server
```bash     
ssh username@server-ip
```

- Using a private key 
```bash
ssh -i mykey.pem ubuntu@54.210.xx.xx
```

- Copy public key to remote server

```bash
ssh-copy-id -i ~/.ssh/id_ed25519.pub username@server-ip
```

# practice on AWS EC2 Instance

- Guide to create an EC2 instance and connect to it using SSH:

 
 - connecting to the ec2 instance using ssh 
 - steps to connect to the ec2 instance using ssh
1. Open your terminal.
2. Navigate to the directory where your private key file (e.g., `mykey.pem`) is located.
3. Change the permissions of the private key file to be read-only by the owner:
   ```bash
   chmod 400 mykey.pem
   ```
4. Use the SSH command to connect to your EC2 instance, replacing `ubuntu` with your instance's username and `54.210.xx.xx` with your instance's public IP address:

5. Once connected, you can execute commands on the EC2 instance as if you were using a local terminal.

6. To disconnect from the EC2 instance, type `exit` and press Enter.

 ``` bash
 ssh -i "mykey.pem" ubuntu@54.210.xx.xx

ssh -v (enables verbose mode to display detailed information about the SSH connection process)
```

- TCP Connection Test 

```bash
 Test-NetConnection 65.2.150.54 -Port 22                
 ``` 
 (tests the TCP connection to the specified IP address on port 22, which is used for SSH)


Q1. Explain the SSH login process.

SSH first establishes a TCP connection on Port 22 using the TCP 3-way handshake. 

Next, the client and server negotiate encryption algorithms through the SSH key exchange. The client verifies the server's identity using the host key stored in known_hosts. 

Then the client proves ownership of its private key, while the server compares the corresponding public key in authorized_keys. If authentication succeeds, an encrypted interactive shell session is established.

- steps
``` bash
cd ~/.ssh

ssh -i ~/.ssh/devops-lab-key.pem ubuntu@65.2.150.54

ssh aws-dev
```

- Setting up .config file for SSH shortcuts

```bash
nano ~/.ssh/config
```

```bash
Host aws-dev
  HostName 65.2.150.54
  User ubuntu
  IdentityFile ~/.ssh/devops-lab-key.pem
```

- aws cli setup
```bash
sudo apt install awscli
aws configure

- autoamted the aws cli setup using bash script

```bash
aws-start
aws-stop
aws-status
```

# Basic task 

``` bash 
wc -l file.txt (counts the number of lines in file.txt)
head -2 logs/app.log (displays the first 2 lines of logs/app.log)

``` bash
grep        → show matching lines
grep -c     → count matches
grep -i     → ignore case
grep -n     → show line numbers
grep -r     → recursive search

- Permissions 

``` bash
chmod 755 script.sh (sets read, write, and execute permissions for the owner, and read and execute permissions for the group and others on script.sh)

```
- Processes 
``` bash
ps aux | grep nginx (displays all running processes and filters for those related to "nginx")

a	Show processes of all users
u	Show detailed information (owner, CPU, memory, etc.)
x	Show background processes too

systemctl status nginx (displays the status of the nginx service, including whether it is active, inactive, or failed)


uname -a (displays detailed information about the system, including kernel version, hostname, and architecture)

uname -r (displays the kernel release version)

echo $SHELL (displays the current shell being used)   

mkdir app-$(date +%F) (creates a directory named "app-" followed by the current date in YYYY-MM-DD format)

cat /etc/os-release (displays information about the operating system, including name, version, and ID)
```

# Access Windows directories from WSL
/mnt is a mount point in Linux.


```bash
cd /mnt/c (Windows C: drive)
cd /mnt/d (Windows D: drive)
```


 


# 1 - Lease Previlege Principle
The principle of least privilege is a security concept that states that users, applications, and systems should be granted the minimum level of access or permissions necessary to perform their tasks. 

>This approach helps reduce the risk of unauthorized access, data breaches, and potential damage caused by accidental or malicious actions.

- > Setup New Policy for user

IAM
↓
Policies
↓
Create Policy
↓
JSON

``` bash
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "EC2TerminalPractice",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeInstances",
                "ec2:StartInstances",
                "ec2:StopInstances",
                "ec2:RebootInstances"
            ],
            "Resource": "*"
        }
    ]
}
```
(This policy allows the user to describe, start, stop, and reboot EC2 instances, but does not grant permissions for other actions such as terminating instances or modifying security groups.)


``` bash
aws ec2 describe-instances
aws ec2 stop-instances --instance-ids <your-instance-id>
aws ec2 start-instances --instance-ids <your-instance-id>
(check attached iam polcies for user)
aws iam list-attached-user-policies --user-name devops-cli
```


# Package Management

> Cetralized system for installing, updating, and removing software packages on Linux systems.

# Components of  Package Management

1 - Package - compressed file that contains software, libraries, and metadata required for installation and management.

2 - Package Manager - a tool or utility that handles the installation, updating, and removal of software packages on a Linux system.

3 - Repository - a centralized storage location that hosts software packages and their metadata, allowing users to download and install them using a package manager.

4 - Dependency Resolution - the process of automatically identifying and installing any additional packages or libraries required for a software package to function correctly.

5 - Package Database - a local database that keeps track of installed packages, their versions, and dependencies on a Linux system.

6 - Package Format - the specific file format used for packaging software, which varies between different Linux distributions (e.g., .deb for Debian-based systems, .rpm for Red Hat-based systems).

7 - Package Signing - a security mechanism that uses cryptographic signatures to verify the authenticity and integrity of software packages before installation.


# Package Manager  - 

1) dpkg - Debian Package Manager (used in Debian-based distributions like Ubuntu)

```bash
sudo dpkg -i package.deb (installs a .deb package)
sudo dpkg -r package_name (removes an installed package)
```

2) apt - Advanced Package Tool (used in Debian-based distributions like Ubuntu)

```bash
sudo apt install package_name (installs a package from the repository)
sudo apt remove package_name (removes an installed package)


3) rpm - Red Hat Package Manager (used in Red Hat-based distributions like CentOS 


