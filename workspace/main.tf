provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value of ami"
}
variable "instance_type" {
  description = "value of instance type"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type
}