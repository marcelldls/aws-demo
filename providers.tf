terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.33.0"
    }
  }
  required_version = ">= 1.2.0"
}

# Configure the AWS provider
provider "aws" {
  region = "eu-west-1"
}
