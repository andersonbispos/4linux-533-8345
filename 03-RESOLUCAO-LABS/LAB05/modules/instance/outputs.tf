output "instance_id" {
  description = "Instance ID"
  value       = aws_instance.web.id
}

output "instance_private_ip" {
  description = "Instance private ip"
  value       = aws_instance.web.private_ip
}

output "instance_public_ip" {
  description = "Instance public ip"
  value       = aws_instance.web.public_ip
}