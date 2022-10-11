output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.vpc.id
}

output "vpc_arn" {
  description = "VPC ARN"
  value = aws_vpc.vpc.arn
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}