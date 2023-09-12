terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = {
      Environment = "modules"
      Terraform   = "yes"
    }
  }
}