terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20.0"
    }
  }
  required_version = ">= 1.4.0"

  backend "s3" {
    bucket         = "leaderboard-terraform-states"   # thay bằng bucket của bạn
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "leaderboard-terraform-locks"       # bảng DynamoDB để lock state
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}