provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source                 = "../../../modules/services/webserver-cluster"
  cluster_name           = "webserver-stage"
  db_remote_state_bucket = "terrafrom-state-terraform-up-and-running"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  instance_type          = "t2.micro"
  max_size               = 10
  min_size               = 2
  server_text            = "New server text"
}