terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "eu-west-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-00f6a0c18edb19300"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}
