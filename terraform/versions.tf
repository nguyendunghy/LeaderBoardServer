terraform {
  required_version = ">= 1.4.0"

  backend "s3" {
    bucket         = "my-terraform-states"   # thay bằng bucket của bạn
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-locks"       # bảng DynamoDB để lock state
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}