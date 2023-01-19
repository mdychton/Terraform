provider "aws" {
  region = "us-east-1"
}


/*resource "aws_instance" "panda" {
    ami = "ami-0b5eea76982371e91"
    instance_type = var.ec2_type #"t2.micro"
}*/

terraform {
  backend "s3" {
    bucket = "dychton-michal-panda-devops-core-11"
    key    = "infra/terraform.state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
}