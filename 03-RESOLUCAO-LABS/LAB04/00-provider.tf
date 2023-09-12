terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  region = var.map_ambientes[terraform.workspace]
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = {
      Environment = terraform.workspace
      Terraform   = "yes"
    }
  }
}