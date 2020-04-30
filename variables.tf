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
