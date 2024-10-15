terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = [ "C:/Users/Quan/.aws/credentials" ]
}

# Create EC2 instance
resource "aws_instance" "jenkins" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name      = "public-ec2-key"
  subnet_id     = "subnet-09f008b76583d8cae"
  vpc_security_group_ids = [ "sg-0a238ff54ef4115e7" ]

  tags = {
    Name = "Jenkins Server"
  }
}