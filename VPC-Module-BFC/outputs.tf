output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc.id
}

output "vpc_arn" {
  description = "VPC ARN"
  value       = aws_vpc.vpc.arn
}

output "vpc_cidr" {
  description = "VPC CIDR block"
  value = aws_vpc.vpc.cidr_block
}

output "subnet_id" {
  description = "The ID of the subnet"
  value = aws_subnet.subnets.*.id
}

output "subnet_arn" {
  
  description = "The ARN of the subnet"
  value = aws_subnet.subnets.*.arn
}

output "route_table_id" {
  
  description = "The ID of the routing table"
  value = aws_route_table.route_table.id
}