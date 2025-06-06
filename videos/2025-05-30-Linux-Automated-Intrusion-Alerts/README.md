# 🔐 Automated Intrusion Alerts

**Video**: [Set Up Automated Intrusion Alerts in 60 Seconds](https://youtube.com/shorts/YOUR_VIDEO_LINK)
**Blog**: [How to Stop Hackers Fast with Automated Intrusion Alerts on Linux](https://medium.com/@tshenolomos/xxxxxxxx)

---

## 💡 What You’ll Learn

* How to set up intrusion alerts on your Linux server
* Installing Fail2Ban and Mailutils
* Enabling email alerts for SSH login attempts
* Creating daily summaries using Logwatch
* Writing a custom script to report failed logins
* Automating alerts with cron jobs

---

## 💻 Commands

### 1. Install Fail2Ban and Mailutils

```bash
sudo apt install fail2ban mailutils
```

### 2. Enable Alerts for SSH in jail.local

Edit `/etc/fail2ban/jail.local` and add:

```ini
[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 3
action = %(action_mwl)s
destemail = your@email.com
sendername = Fail2Ban
mta = sendmail
```

### 3. Install Logwatch

```bash
sudo apt install logwatch
sudo logwatch --mailto your@email.com
```

### 4. Custom Script

```bash
#!/bin/bash
LOG="/var/log/auth.log"
OUTPUT="/tmp/ssh-failures.txt"
echo "Recent Failed SSH Attempts:" > $OUTPUT
grep "Failed password" $LOG | tail -n 10 >> $OUTPUT
mail -s "SSH Alert from $(hostname)" your@email.com < $OUTPUT
```

### 5. Cron Job (every 30 mins)

```cron
*/30 * * * * /path/to/report.sh
```

---

## 📁 Resources

* [report.sh](report.sh) – Custom SSH alert script
