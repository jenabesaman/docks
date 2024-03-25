#!/bin/bash

# Define the path to the backup file on the local machine
LOCAL_BACKUP_FILE="/home/Backups/172.16.40.170/mongodb_backup.archive"

# Restore only the DFile collection from the DSTV3_Download database from the backup
mongorestore --db DSTV3_Download --collection DFile --archive=$LOCAL_BACKUP_FILE --noIndexRestore
