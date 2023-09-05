locals {
  vpcid      = "vpc-0d42613db3ec6ec52"
  infra_zone = "us-east-2c"

  common_tags = {
    Environment = "Lab"
    Terraform   = "yes"
  }

}