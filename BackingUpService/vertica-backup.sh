#!/bin/bash
/usr/bin/sshpass -pKahkeshan@123 ssh -o StrictHostKeyChecking=no root@172.16.43.137 "mkdir -p /home/Backups/172.16.43.246/services /home/Backups/172.16.43.246/sites-available"
/usr/bin/sshpass -pKahkeshan@123 /usr/bin/rsync -av -e "ssh -o StrictHostKeyChecking=no"  /home/ root@172.16.43.137:/home/Backups/172.16.43.246/
/usr/bin/sshpass -pKahkeshan@123 /usr/bin/rsync -av -e "ssh -o StrictHostKeyChecking=no" /usr/lib/systemd/system/*.service root@172.16.43.137:/home/Backups/172.16.43.246/services
/usr/bin/sshpass -pKahkeshan@123 /usr/bin/rsync -av -e "ssh -o StrictHostKeyChecking=no" /etc/nginx/sites-available/* root@172.16.43.137:/home/Backups/172.16.43.246/sites-available
#mongodump --archive | /usr/bin/sshpass -pKahkeshan@123 ssh -o StrictHostKeyChecking=no root@172.16.43.137 "cat > /home/Backups/172.16.43.170/mongodb_backup/mongodb_backup.archive"