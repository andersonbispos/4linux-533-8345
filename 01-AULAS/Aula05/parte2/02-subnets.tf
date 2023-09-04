# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_subnet" "public_subnet" {

  availability_zone = "us-east-2a"

  cidr_block = "10.0.0.0/20"

  tags = {
    Name = "project-subnet-public1-us-east-2a"
  }
  tags_all = {
    Name = "project-subnet-public1-us-east-2a"
  }
  vpc_id = aws_vpc.test_vpc.id
}

# __generated__ by Terraform
resource "aws_subnet" "private_subnet" {

  availability_zone = "us-east-2a"

  cidr_block = "10.0.128.0/20"


  tags = {
    Name = "project-subnet-private1-us-east-2a"
  }
  tags_all = {
    Name = "project-subnet-private1-us-east-2a"
  }
  vpc_id = aws_vpc.test_vpc.id
}