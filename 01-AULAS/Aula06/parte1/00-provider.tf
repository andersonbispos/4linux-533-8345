terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }
  }

  /* backend "s3" {
    bucket         = "state-bucket-098273213"
    key            = "lab/terraform.state"
    region         = "us-east-2"
    dynamodb_table = "db-table-state"
  } */
}

provider "aws" {
  region = "us-east-2"
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = {
      Environment = "Lab"
      Terraform   = "yes"
    }
  }
}