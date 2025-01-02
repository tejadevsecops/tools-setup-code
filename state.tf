terraform {
  backend "s3" {
    bucket = "terraformstate-devsecops-b81"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}