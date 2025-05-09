# Day 01: Terminal Basics & Lab Setup

📅 Date: 2025-05-09

---

## ✅ Topics Covered

- Introduction to the Linux terminal
- Basic navigation: `pwd`, `ls`, `cd`
- File operations: `mkdir`, `touch`, `rm`, `cp`, `mv`
- Viewing and editing files: `cat`, `nano`
- Search and find tools: `grep`, `find`, wildcards (`*`, `?`)
- Understanding file types with `-type f` and `-name "*.txt"`
- Absolute vs relative paths
- Wildcards in bash: `*`, `?`, and filename patterns
- Using `history` to view command history

---

## 🛠 System Setup

- Installed Ubuntu Server in VirtualBox on macOS
- Chose `Bridged Adapter` to enable external SSH access
- Installed and enabled OpenSSH server (`openssh-server`)
- Connected from macOS Terminal to VM via SSH
- Increased terminal font size using `console-setup`
- Installed essential tools:
  - `htop`, `mc`, `git`, `curl`, `net-tools`, `dircolors`

---

## 🧠 GitHub Integration

- Created GitHub repo: [devsecops-lab](https://github.com/Strelov-Alex/devsecops-lab)
- Generated SSH key (`ed25519`) for Git
- Linked VM to GitHub via SSH
- Cloned repo and initialized structure:
  - `README.md`
  - `log/used_commands.log`
  - `push_logs.sh`
- Wrote and committed first log and README

---

## ⏰ Cron Automation

- Created a logging script: `push_logs.sh`
- Script saves last 30 commands from history to `used_commands.log` and pushes to GitHub
- Configured daily `cron` job at 23:30:
  ```cron
  30 23 * * * /home/LinuxLab/devsecops-lab/push_logs.sh


📘 Key Commands Practiced
pwd
ls -lAh
cd ~
cd ..
mkdir test
touch notes.txt
rm notes.txt
find . -type f -name "*.txt"
grep -r "password" .


💡 Insights
ls -lAh gives detailed info, including hidden files and permissions
Using .. and ../.. is crucial for moving around efficiently
Wildcards are powerful but require attention (*, ?, [0-9])
grep -r searches recursively; find locates files by name/type

🧭 Reflection
Today I not only learned how to move around in the Linux filesystem but also created a fully functional lab with GitHub integration, automated logging, and my first DevSecOps workflow.
From now on, I’m not just typing commands — I’m building my system. One command, one idea, one improvement at a time.
💡 “Discipline equals freedom.” – Jocko Willink
