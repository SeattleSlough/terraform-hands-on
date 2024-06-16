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