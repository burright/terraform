variable "region" {
  default = "us-west-2"
}

variable "key_name" {
  
}
variable "instance_type" {
  default = "t2.nano"
}

variable "amis" {
  default = {
    us-east-1 = "ami-60b6c60a"
    us-west-2 = "ami-f0091d91"
  }
}

variable "webapp_http_inbound_sg_id" {
  
}
variable "webapp_ssh_inbound_sg_id" {
  
}
variable "webapp_outbound_sg_id" {
  
}






