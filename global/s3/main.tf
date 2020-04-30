provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    region         = "us-east-2"
    bucket         = "terrafrom-state-terraform-up-and-running"
    key            = "states/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = "true"
  }
}


module "backend" {
  source         = "github.com/samstav/terraform-aws-backend"
  backend_bucket = "terrafrom-state-terraform-up-and-running"
}