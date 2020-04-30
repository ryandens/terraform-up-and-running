# MySQL
Used to define the MySQL RDS infrastructure on AWS. 


## Configuration
Note, the DB password is to be provided via an environment variable. 
I generated the password and stored the password in LastPass and used
the following command to configure the environment variable. 
```shell script
$ export TF_VAR_db_password=$(lpass show --password <GROUP>/terraform-up-and-running)
```