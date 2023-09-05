resource "aws_instance" "web1" {
  ami           = "ami-0af6e9042ea5a4e3e"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.subnet1.id

  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.allow_default.id]

  user_data = base64encode("#!/bin/bash\n sudo apt update; sudo apt install nginx -y")

  tags = {
    Name = "web1"
  }
}