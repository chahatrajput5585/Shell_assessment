ssh ec2-user@13.233.255.117
sudo yum update -y   
sudo yum install mailx -y
sudo mkdir -p /opt/app/data
echo "This is test data for backup." | sudo tee /opt/app/data/test.txt
sudo mkdir -p /backup/appdata
sudo chmod 700 /backup/appdata
nano backup_script.sh
crontab -e
sudo yum install cronie -y
sudo systemctl enable crond
sudo systemctl start crond
systemctl status crond    
chmod +x backup_script.sh
./backup_script.sh
sudo chown ec2-user:ec2-user /backup/appdata
sudo chmod 700 /backup/appdata
LOG_FILE="/home/ec2-user/backup_errors.log"
sudo yum install sendmail -y
sudo systemctl enable sendmail
sudo systemctl start sendmail
BACKUP_DIR="/backup/appdata"
LOG_FILE="/home/ec2-user/backup_errors.log" 
chmod 700 $BACKUP_DIR
sudo chown ec2-user:ec2-user /backup/appdata
sudo chmod 700 /backup/appdata
sudo yum install sendmail -y
sudo systemctl enable sendmail
sudo systemctl start sendmail
./backup_script.sh
nano backup_script.sh
./backup_script.sh
ls -l /backup/appdata/
cat /home/ec2-user/backup_errors.log
./backup_script.sh
crontab -e
crontab -l
ls -l /backup/appdata/
cat /var/log/backup_errors.log
which backup_script.sh
0 18 * * 1-5 /home/ec2-user/backup_script.sh
crontab -e
*/2 * * * * /home/ec2-user/backup_script.sh
tail -f /home/ec2-user/backup_errors.log
crontab -e
crontab -l
tail -f /home/ec2-user/backup_errors.log
ls -l /backup/appdata/
cat /var/log/backup_errors.log
cat /home/ec2-user/backup_errors.log
crontab -l
tail -f /home/ec2-user/backup_errors.log
cat /var/log/backup_errors.log
ls -l /backup/appdata/
cat /var/log/backup_errors.log
clear
