resource "aws_vpc" "tf-vpc-lab" {
  cidr_block = "192.168.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "tf-vpc-lab"
  }
}