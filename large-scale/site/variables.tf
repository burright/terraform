variable "ip_range" {
  default = "0.0.0.0/0" # Need to figure out what this IP range is for
}
variable "availability_zones" {
  default = "us-west-2a,us-west-2b,us-west-2c"
}
variable "vpc_cidr" {
  description = "CIDR for the whole vpc"
  default = "10.1.0.0/16"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "10.0.0.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default = "10.0.1.0/24"
}

variable "key_name" {
  
}





