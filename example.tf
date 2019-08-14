provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-getting-started-guide001"
  acl = "private"
}

resource "aws_instance" "example" {
  ami = var.amis[var.region]
  instance_type = "t2.micro"
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
  depends_on = [aws_s3_bucket.example]
}
