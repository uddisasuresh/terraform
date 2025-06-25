terraform {
  backend "s3" {
    bucket = "sureshabhishek-s3-demo-xyz"
    key = "abhi/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}