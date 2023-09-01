resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-2c"
  size              = 10
  type              = "gp3"

  tags = {
    Name = "web-data"
  }
}