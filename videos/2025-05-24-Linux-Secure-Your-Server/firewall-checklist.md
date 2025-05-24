# ✅ Firewall Configuration in 30 Seconds – Quick Checklist

Use this step-by-step checklist to quickly lock down your Ubuntu server using UFW (Uncomplicated Firewall).

---

### 🔍 1. Check if UFW is Installed

* [ ] Run: `sudo ufw status`
* [ ] If not found, install it: `sudo apt install ufw`

### 🔓 2. Allow Essential Services

* [ ] Allow SSH: `sudo ufw allow ssh`
* [ ] Allow HTTP: `sudo ufw allow http`
* [ ] Allow HTTPS: `sudo ufw allow https`

> ✅ Tip: Always allow SSH before enabling the firewall if you're using remote access.

### 🔐 3. Enable the Firewall

* [ ] Run: `sudo ufw enable`
* [ ] Confirm prompt if it warns about SSH

### 📋 4. Verify Rules

* [ ] Run: `sudo ufw status`
* [ ] Confirm the list includes only the allowed services

### 🛑 (Optional) Disable UFW

* [ ] Run: `sudo ufw disable` *(only if needed for troubleshooting)*

### 🔁 Bonus Commands

* [ ] Check detailed status: `sudo ufw status verbose`
* [ ] Reset UFW: `sudo ufw reset`
* [ ] Deny specific port: `sudo ufw deny 23` *(example: blocking Telnet)*

---

### 🧠 Pro Tips

* Don’t open unused ports.
* Document firewall changes.
* Combine with fail2ban for brute-force protection.

---

Print this checklist or save it to your notes so your server is always protected in seconds! 💻🛡️
