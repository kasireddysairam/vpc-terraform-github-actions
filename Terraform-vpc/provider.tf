terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }

  backend "s3" {
    bucket = "sairam1998"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"

  }
}


provider "aws" {
  # Configuration options
  region = "ap-south-1"
}