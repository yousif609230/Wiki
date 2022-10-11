
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = var.tags
}

resource "aws_subnet" "subnets" {
  vpc_id = aws_vpc.vpc.id
 # availability_zone = var.azs
  count = length(var.subnet_block)
  cidr_block = var.subnet_block[count.index]
}
