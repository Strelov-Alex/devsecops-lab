# Day 02: Services, Package Management & SSH

📅 Date: 2025-05-10

---

## ✅ What I Learned

- How to install and remove packages using `apt`, `dpkg`, and `snap`
- Managing system services using `systemctl`
- Viewing logs of services with `journalctl`
- Creating and managing users with `adduser`, `passwd`, `usermod`
- Understanding the `-aG` flag when modifying user groups
- Installing and configuring `openssh-server` for remote access
- Accessing the VM via SSH from the host machine
- Using Nginx as a real-world example service to control and test

---

## 📦 Package Management

```bash
sudo apt update
sudo apt install nginx
sudo apt remove apache2
sudo dpkg -i package.deb
sudo snap install htop
```

---

## ⚙️ Service Management with `systemctl`

```bash
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl enable nginx
sudo systemctl status nginx
sudo journalctl -u nginx
```

### 🔍 What does `ctl` mean?

- `ctl` stands for **"control"**
- Commands ending with `ctl` are used to manage specific system components:
  - `systemctl` = control services
  - `journalctl` = control and view logs
  - `hostnamectl` = control hostname
  - `timedatectl` = control time settings

---

## 👤 User Management

```bash
sudo adduser bob
sudo passwd bob
sudo usermod -aG sudo bob
sudo deluser bob
```

### 🔍 What does `-aG` mean?

- `-G` specifies groups to assign
- `-a` means **append**, so the user keeps their existing groups
- If you use only `-G`, it **overwrites all group memberships**
- Correct usage: `usermod -aG sudo bob` to **add** `bob` to the `sudo` group without removing others

---

## 🔐 SSH Setup and Logs

```bash
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
sudo journalctl -u ssh
```

### Example Log Output (via `journalctl -u ssh`):

```
Accepted password for LinuxLab from 172.16.31.113 port 59015 ssh2
pam_unix(sshd:session): session opened for user LinuxLab(uid=1000)
```

This confirms:
- The SSH server is running and listening on port 22
- The user successfully logged in remotely from another machine

---

## 🌐 What is Nginx?

- Nginx (pronounced “engine-x”) is a high-performance web server and reverse proxy
- It's commonly used for serving websites, handling load balancing, proxying, and caching
- We used Nginx in this lesson as a practical service to install, enable, start, and test
- After installation, it serves a default page at `http://<VM_IP>`

### How I tested it:
1. Installed Nginx: `sudo apt install nginx`
2. Verified it is running: `sudo systemctl status nginx`
3. Found my VM IP with `ip a` → `172.16.31.197`
4. Opened `http://172.16.31.197` in my host machine’s browser
5. Saw the default **"Welcome to nginx!"** page

---

## 🧪 Practice Completed

- [x] Installed Nginx and tested from host browser
- [x] Enabled Nginx as a systemd service
- [x] Started and stopped system services using `systemctl`
- [x] Viewed system logs using `journalctl`
- [x] Created and deleted users
- [x] Assigned sudo rights with `usermod -aG`
- [x] Installed and verified OpenSSH server
- [x] Connected to the VM via SSH from my Mac

---

## ❓ Questions to Explore

- When should I prefer `snap` over `apt`?
- How do I forward VM ports to the host for better service testing?
- What are best practices to secure SSH access (disable root, use keys)?

---

## 🔗 Resources

- https://linuxjourney.com
- https://explainshell.com
- https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-services-and-units
- https://nginx.org/en/docs/
- https://help.ubuntu.com/community/SSH/OpenSSH/Configuring

---

## 🧠 Reflection

Today I went beyond basic Linux commands and learned how to work with system services, users, and remote access. I now understand how to:

- Install and manage software packages
- Start and monitor services like Nginx
- Read logs using journalctl
- Securely access my machine remotely with SSH

> _“To control infrastructure, you must first learn to control its services.”_
