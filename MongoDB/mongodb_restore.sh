#!/bin/bash

# Define the path to the backup directory
BACKUP_DIR="/home/Backups/172.16.43.245/Mongodb.Databases/mongodb_backup/"

# Iterate over each directory (database backup) in the backup directory
for DB_BACKUP in $BACKUP_DIR*/
do
    # Extract the database name from the directory path
    DB_NAME=$(basename $DB_BACKUP)

    # Restore the database from the backup
    mongorestore --db $DB_NAME --noIndexRestore $DB_BACKUP
done
