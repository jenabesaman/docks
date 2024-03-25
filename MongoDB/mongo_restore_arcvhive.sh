#!/bin/bash

# Define the path to the backup file on the remote machine
REMOTE_BACKUP_FILE="/home/Backups/172.16.43.170/mongodb_backup/mongodb_backup.archive"

# Define the path to the local directory where the backup file will be copied
LOCAL_DIR="/home/Backups/172.16.40.170/"

# Define the remote machine's address
REMOTE_MACHINE="root@172.16.43.137"

# Copy the backup file from the remote machine to the local machine
/usr/bin/sshpass -p'Kahkeshan@123' scp -o StrictHostKeyChecking=no $REMOTE_MACHINE:$REMOTE_BACKUP_FILE $LOCAL_DIR

# Define the path to the backup file on the local machine
LOCAL_BACKUP_FILE="$LOCAL_DIR$(basename $REMOTE_BACKUP_FILE)"

# Restore the MongoDB database from the backup file
mongorestore --archive=$LOCAL_BACKUP_FILE --noIndexRestore