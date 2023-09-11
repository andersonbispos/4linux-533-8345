resource "aws_instance" "web1" {

  count = terraform.workspace == "prod" ? 3 : 1

  ami           = var.default_web_image
  instance_type = var.map_web_sizes[terraform.workspace]

  associate_public_ip_address = var.instance_public_ip

  #subnet_id = aws_subnet.public_subnet.id
  #vpc_security_group_ids = [aws_security_group.allow_default.id]
  #user_data = filebase64(var.user_data_path)

  tags = {
    Name = format("web-%s-%s", count.index, terraform.workspace)
  }
}