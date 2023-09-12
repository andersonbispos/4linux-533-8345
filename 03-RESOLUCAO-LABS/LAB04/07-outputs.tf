output "web_modelo_names" {
  description = "IP publico do servidor web"
  value       = aws_instance.instance[*].tags.Name
}

output "web_modelo_public_ips" {
  description = "IP publico do servidor web"
  value       = aws_instance.instance[*].public_ip
}