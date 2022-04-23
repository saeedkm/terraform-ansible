terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-ssaeed"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
