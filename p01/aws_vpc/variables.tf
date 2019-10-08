variable "region" {
description="AWS region for hosting the network"
default="us-west-1"
}

variable "key_path" {
description="Key path for SSHing into EC2"
default=".ssh/Test-VPC.pem"
}

variable "key_name" {
description="Name of SSH key"
default="Test-VPC"
}

variable "vpc_cidr" {
description="CIDR for VPC"
default="10.0.0.0/16"
}

variable "public_subnet_cidr" {
description="CIDR for public subbet"
default="10.0.1.0/24"
}

variable "private_subnet_cidr" {
description="CIDR for private subnet"
default="10.0.2.0/24"
}

variable "amis" {
description="Base AMI to launch the instances"
default = {
us-west-1="ami-0245d318c6788de52"
}
}
