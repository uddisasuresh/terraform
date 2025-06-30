provider "aws" {
  region = "us-east-1"
}

import {
  id = "i-0800374519e7a9401"
  to = aws_instance.example
}
