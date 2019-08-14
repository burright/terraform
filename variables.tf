variable "region" {
 default = "us-east-1"
}

variable "amis" {
 type = "map"
 default = {
  "us-east-1" = "ami-b374d5a5"
  "us-west-1" = "ami-4b32be2b"
  }
}

output "ip" {
 value = aws_eip.ip.public_ip
}
