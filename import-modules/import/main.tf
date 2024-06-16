terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tf-instance" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    key_name = "core"
    tags = {
      Name="ubuntu-24.04"
    }

}

resource "aws_instance" "example" {
  ami = "ami-0bb84b8ffd87024d8"
  key_name = "core"
  instance_type = "t2.micro"
  tags = {
    Name = "tf-ec2-template"
  }
}

import {
  to = aws_instance.example
  id = "i-0c773520f2c7030eb"
}
