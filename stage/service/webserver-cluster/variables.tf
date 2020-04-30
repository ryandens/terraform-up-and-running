variable "server_port" {
  description = "The port the server will use for HTTP reqeuests"
  type        = number
  default     = 8080
}

variable "alb_ingress_port" {
  description = "The port the Application Load Balancer will listen for requests on"
  type        = number
  default     = 80
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}
