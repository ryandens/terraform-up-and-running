provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name = "admin"
  password = var.db_password
}