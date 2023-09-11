resource "aws_instance" "web1" {
  ami           = var.default_web_image
  instance_type = var.default_web_size

  associate_public_ip_address = var.instance_public_ip

  #subnet_id = aws_subnet.public_subnet.id
  #vpc_security_group_ids = [aws_security_group.allow_default.id]
  #user_data = filebase64(var.user_data_path)

  tags = {
    Name = format("web1-%s", terraform.workspace)
  }
}