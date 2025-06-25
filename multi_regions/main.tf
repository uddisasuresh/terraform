provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}
provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
}

resource "aws_instance" "this" {
  ami                     = "ami-0e449927258d45bc4"
  instance_type           = "t2.micro"
  provider = "aws.us-east-1"
  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_instance" "second" {
  ami                     = "ami-06971c49acd687c30"
  instance_type           = "t2.micro"
  provider = "aws.us-east-2"
  tags = {
    Name = "HelloWorld"
  }
}