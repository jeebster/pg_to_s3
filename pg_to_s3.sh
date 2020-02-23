#!/bin/sh

echo "Backing up Postgres Database: $1"

CURRENT_TIMESTAMP=`date +"%Y_%m_%d"`
BACKUP_FILE_SCHEME="$1_dump_$CURRENT_TIMESTAMP"

pg_dump $1 > $BACKUP_FILE_SCHEME.sql

echo "Backup complete: $BACKUP_FILE_SCHEME.sql"
echo "Uploading $BACKUP_FILE_SCHEME.sql to S3"

aws s3 cp $2/$BACKUP_FILE_SCHEME.sql $3

echo "Upload complete"
echo "Deleting Local Backup $BACKUP_FILE_SCHEME.sql"

rm $BACKUP_FILE_SCHEME.sql

echo "Local Backup Deleted"
