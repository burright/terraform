resource "aws_subnet" "public-subnet-in-us-west-1" {
vpc_id="${aws_vpc.default.id}"
cidr_block="${var.public_subnet_cidr}"
availability_zone="us-west-1b"
tags={
Name="Test Public Subnet"
}
}
