resource "aws_security_group" "web" {
name = "vpc_web"
description = "Accept incoming connections."

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = -1
to_port = -1
protocol = "icmp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 3306
to_port = 3306
protocol = "tcp"
cidr_blocks = ["${var.private_subnet_cidr}"]
}

vpc_id = "${aws_vpc.default.id}"

tags = {
Name = "WebServerSG"
}
}
