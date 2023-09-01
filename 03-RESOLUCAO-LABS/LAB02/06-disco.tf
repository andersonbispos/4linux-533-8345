resource "aws_ebs_volume" "dados" {
  availability_zone = aws_instance.dbserver1.availability_zone
  size              = 10

  tags = {
    Name = "dados"
  }
}

resource "aws_volume_attachment" "ebs_att_web_data" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.dados.id
  instance_id = aws_instance.dbserver1.id
}