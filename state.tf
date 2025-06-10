terraform {
  backend "s3" {
    bucket = "tejadevsecopsb81"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}