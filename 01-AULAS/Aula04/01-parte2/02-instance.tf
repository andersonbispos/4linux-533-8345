resource "aws_instance" "web" {
  ami           = "ami-0cf0e376c672104d6"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [aws_security_group.allow_default.id]

  tags = {
    Name = "web-instance"
  }
}