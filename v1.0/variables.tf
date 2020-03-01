variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "counter" {
 default = 1
}

variable "region" {
  description = "AWS region for hosting our your network"
  default = "eu-west-3"
}

variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
  eu-west-3 = "ami-8ee056f3"
  }
}

data "aws_availability_zones" "all" {}

