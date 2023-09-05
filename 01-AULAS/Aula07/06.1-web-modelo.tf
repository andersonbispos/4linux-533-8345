resource "aws_instance" "web-modelo" {

  count = 3

  ami           = var.default_web_image
  instance_type = var.default_web_size

  subnet_id = aws_subnet.public_subnet.id

  associate_public_ip_address = var.instance_public_ip

  vpc_security_group_ids = [aws_security_group.allow_default.id]

  user_data = filebase64(var.user_data_path)

  tags = {
    Name = format("web-%s", count.index)
  }
}