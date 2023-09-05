output "web1_private_ip" {
  description = "IP privado do servidor web1"
  value         = aws_instance.web1.private_ip
}

output "web1_public_ip" {
  description = "IP publico do servidor web1"
  value         = aws_instance.web1.public_ip
}