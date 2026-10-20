# Terraform & Provider Configuration
terraform {
  # required version
  required_version = ">=1.0"

  # required provider -> inbuilt SDK
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "1.75.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}