output "vpc_id" {
  description = "ID da VPC"
  value = aws_vpc.vpc_default.id
}

output "igw_id" {
  description = "ID da Internet Gateway"
  value = aws_internet_gateway.gw.id
}

output "rt_public_id" {
  description = "ID da tabela de rotas publica"
  value = aws_route_table.rt_public.id
}