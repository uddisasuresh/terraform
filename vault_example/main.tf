provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "54.173.210.169:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "804bc832-888e-5694-d481-ae12b4b14c6c"
      secret_id = "601b5e59-6ea1-6ba7-0c53-d87f32de55aa"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"

  tags = {
    Name = "valuetest"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}