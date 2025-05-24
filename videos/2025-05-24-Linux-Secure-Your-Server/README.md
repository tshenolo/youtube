# 🛡️ Secure Your Linux Server

**Video**: [Stop Hackers Fast With This Easy Linux Firewall Trick](https://youtube.com/shorts/nraQmzeZh0w)  
**Blog**: [Secure Your Linux Server (No Experience Needed)](https://medium.com/@tshenolomos/secure-your-linux-server-no-experience-needed-491272d8efd8)

## 💡 What You’ll Learn

* Why firewalls are critical for server security
* How to check if UFW (Uncomplicated Firewall) is installed
* How to allow only necessary services (SSH, HTTP, HTTPS)
* How to enable and verify your firewall settings
* How to block unused ports in seconds

## 🔐 Commands

### 1. Check UFW Status

```bash
sudo ufw status
```

### 2. Install UFW (if not installed)

```bash
sudo apt install ufw
```

### 3. Allow Essential Ports

```bash
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
```

### 4. Enable Firewall

```bash
sudo ufw enable
```

### 5. Verify Rules

```bash
sudo ufw status
```

## 📁 Resources

* [firewall-checklist.md](firewall-checklist.md) – Step-by-step firewall setup checklist
