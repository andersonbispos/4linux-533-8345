resource "aws_instance" "web1" {
  ami           = var.default_web_image
  instance_type = var.default_web_size

  subnet_id = aws_subnet.subnet1.id

  associate_public_ip_address = var.instance_public_ip

  vpc_security_group_ids = [aws_security_group.allow_default.id]

  user_data = base64encode("#!/bin/bash\n sudo apt update; sudo apt install nginx -y")

  tags = {
    Name = "web1"
  }
}