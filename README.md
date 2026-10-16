# DS1202 Project – Server Access & Git Proficiency

## Overview
This project is my submission for DS1202 AS02. It shows secure SSH access to a
Linux lab server using an Ed25519 key, a shell script that reports system
information, and a full Git workflow published to GitHub.

`sysinfo.sh` reports:
- Timestamp
- Hostname
- Kernel version
- Uptime
- Memory usage (`free -h`)
- Disk usage (`df -h`)

## Setup

### 1. Generate an SSH key
```bash
ssh-keygen -t ed25519 -C 26FTT1107@student.edu.bn
```

### 2. Copy the public key to the server
```bash
ssh-copy-id 26FTT1107@iib.politeknikbrunei.com
```

### 3. Log in without a password
```bash
ssh 26FTT1107@iib.politeknikbrunei.com
```

### 4. Create the project directories
```bash
mkdir -p ~/ds1202-project/{scripts,docs,logs}
chmod 755 ~/ds1202-project
```

## How to Run
```bash
chmod +x ~/ds1202-project/scripts/sysinfo.sh
~/ds1202-project/scripts/sysinfo.sh
```

## Git Workflow
1. `git init` to create the repository.
2. `git add .` and `git commit -m "Add directory structure and sysinfo script"` for the first commit on `main`.
3. `git switch -c feature-logging` to create a feature branch.
4.  Enhanced `sysinfo.sh` on that branch (added a timestamp, uptime and a completion message) and committed with `git commit -am "Add logging section to sysinfo"`.
5. `git switch main` then `git merge feature-logging` to merge the branch back.
6. Created a public GitHub repository, then ran `git remote add origin git@github.com:MdAmirulAshraf/ds1202-project.git`.
7. `git push -u origin main` and `git push origin feature-logging`.


## Evidence Screenshots
The evidence PDF contains, in order:
1. `ssh-keygen` output (key generated)
2. Passwordless SSH login to the server
3. `ls -la` of `~/ds1202-project` showing structure and permissions
4. Output of the enhanced `sysinfo.sh` after the merge
5. `git log --graph --oneline --all` showing commits and branches
