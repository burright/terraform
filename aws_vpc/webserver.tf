resource "aws_instance" "web-1" {
ami="${lookup(var.amis,var.region)}"
availability_zone="us-west-1b"
instance_type="t2.micro"
key_name="${var.key_name}"
vpc_security_group_ids=["${aws_security_group.web.id}"] 
subnet_id="${aws_subnet.public-subnet-in-us-west-1.id}"
associate_public_ip_address=true
source_dest_check=false
tags={
Name="Web Server LAMP"
}
}
