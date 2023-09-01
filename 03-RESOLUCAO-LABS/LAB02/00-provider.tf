terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = {
      Environment = "Lab"
      Terraform   = "yes"
    }
  }
}