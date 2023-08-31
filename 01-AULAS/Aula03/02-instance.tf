resource "aws_instance" "web" {
  ami           = "ami-0cf0e376c672104d6"
  instance_type = "t2.micro"

  availability_zone = "us-east-2b"

  vpc_security_group_ids = ["sg-0e1cbcf1e2aabd218"]

  tags = {
    Name = "web-instance"
  }
}