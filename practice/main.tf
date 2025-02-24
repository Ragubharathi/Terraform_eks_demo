provider "aws" {
  region = var.projectA_region
}

resource "aws_security_group" "securitygroup" {
  name = "ec2-securitygroup"
  description = "allow ssh and http"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "ec2-aws_instance" {
  instance_type = "t2.micro"
  ami = "ami-0d682f26195e9ec0f"
  subnet_id = aws_subnet.public_sub_1
  security_groups = aws_security_group.securitygroup.id
  tags = {
    Name = "ec2_instance_terraform"
  }
}