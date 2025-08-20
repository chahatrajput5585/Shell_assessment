# EC2 Backup Automation with Email Notifications

This project automates backups on an **Amazon EC2 instance**.  
The script creates compressed `.tar.gz` archives, stores them in a backup directory,  
and sends **email notifications** using Gmail SMTP.

---

## Features
- Automated daily backups (Mon–Fri at 6:00 PM using cron)
- Compressed `.tar.gz` backup files
- Logs stored in `/var/log/backup_errors.log`
- Email notification for success or failure
- Skips weekends (Saturday & Sunday)

---

## Prerequisites
- Amazon Linux (or similar Linux distribution)
- `mailx` installed → `sudo dnf install mailx -y`
- `git` installed → `sudo dnf install git -y`
- Gmail account with an **App Password** (not your regular password)

---

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   cd <repo-name>
