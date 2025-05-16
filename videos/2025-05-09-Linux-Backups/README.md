# 🗃️ Linux Backups with Rsync and Cron

**Video**: [Struggling with Linux Backups? Try This EASY Automation!](https://www.youtube.com/watch?v=YOUR_VIDEO_ID)  
**Blog**: [Backup Your Linux Server Fast](https://medium.com/@tshenolomos/backup-your-linux-server-fast-3684c2c70ed7)


## 💡 What You’ll Learn
- How to back up important files from a Linux server
- Using `rsync` for secure and efficient syncing
- Automating it with a cron job

## 💻 Commands
### Step 1: Use rsync to back up important files.
```
rsync -avz /var/www/ user@backupserver:/backups/www/
```

### Step 2: Dump your database and back it up   
Save a copy of your database into a file.
```
mysqldump -u root -p your_database > /tmp/db_backup.sql
```

Back up that file to another server
```
rsync -avz /tmp/db_backup.sql user@backupserver:/backups/db/
```

### Step 3: Automate your backups.

Create a bash script 
```
vim /home/user/scripts/backup.sh
```

Make the script executable
```
chmod +x /home/user/scripts/backup.sh
```

Schedule the script using cron job
```
crontab -e
```

Cron job entry. The script will run every day at midnight
```
0 0 * * * /home/user/scripts/backup.sh
```

## 📁 Resources
- [backup.sh](backup.sh) – Backup script

