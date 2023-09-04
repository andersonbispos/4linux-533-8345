# __generated__ by Terraform
resource "aws_vpc" "test_vpc" {

  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  instance_tenancy    = "default"
  ipv4_ipam_pool_id   = null
  ipv4_netmask_length = null

  tags = {
    Name = "project-vpc"
  }
  tags_all = {
    Name = "project-vpc"
  }
}
