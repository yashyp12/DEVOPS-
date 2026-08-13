# 1 Find only users with Bash as their login shell.


```bash
grep 'bin/bash' /etc/passwd
```

# 2 Show top resources confuming processes

```bash
top
```

# 3 Find only systemd or sshd processes

```bash
ps -ef | grep -E 'systemd|sshd'
```
