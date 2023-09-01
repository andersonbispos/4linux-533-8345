resource "aws_ebs_volume" "example" {
  availability_zone = aws_instance.web.availability_zone
  size              = 10

  tags = {
    Name = "web-data"
  }
}

resource "aws_volume_attachment" "ebs_att_web_data" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}