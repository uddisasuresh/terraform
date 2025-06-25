provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0e449927258d45bc4"
  instance_type_value = "t2.micro"
}