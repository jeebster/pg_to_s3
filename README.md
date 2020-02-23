# pg_to_s3

A shell script to backup a postgres database to an AWS S3 bucket

## Dependencies

* [PostgreSQL](https://www.postgresql.org/)
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Usage

Invoke the script with the following arguments (NOTE: Order of arguments):

* Database name
* Filepath for database backup
* Filepath for S3 bucket

e.g.

`sh pg_to_s3.sh database_name /path/to/backup/directory/ /path/to/s3/bucket/`