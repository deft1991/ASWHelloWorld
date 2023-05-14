terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "aws" {
  profile = "deft"
  region  = "us-east-2"
}
