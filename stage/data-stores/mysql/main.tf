provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    region         = "us-east-2"
    bucket         = "terrafrom-state-terraform-up-and-running"
    key            = "stage/data-stores/mysql/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database"
  username            = "admin"
  password            = var.db_password
  skip_final_snapshot = true
}