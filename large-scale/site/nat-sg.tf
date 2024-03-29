resource "aws_security_group" "nat" {
  name = "vpc_nat"
  description = "Allow traffic to pass from the private subnet to the internet"
  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["${var.private_subnet_cidr}"]
  }
  ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["${var.private_subnet_cidr}"] 
  }
  ingress {
      from_port = -1
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["${var.private_subnet_cidr}"]
  }
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = "${aws_vpc.default.id}"
  tags = {
      Name = "terraform"
  }
}
output "nat_sg_id" {
  value = "${aws_security_group.nat.id}"
}

resource "aws_security_group" "web_access_from_nat_sg" {
  name = "private_subnet_web_access"
  description = "Allow web access to the private subnet from the prublic subnet (via NAT instance)"
  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["${aws_subnet.demo_public.cidr_block}"]
  } 
  ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["${aws_subnet.demo_public.cidr_block}"]
  }
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = "${aws_vpc.default.id}"
  tags = {
      Name = "terraform"
  }
}
output "web_access_from_nat_sg_id" {
  value = "${aws_security_group.web_access_from_nat_sg.id}"
}



