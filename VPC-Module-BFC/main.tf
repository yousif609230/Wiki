/*
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"
cidr = "10.121.0.0/20"
azs = ["us-east-2a", "us-east-2b"]
intra_subnets = ["10.121.0.0/22","10.121.4.0/22"]
enable_nat_gateway = false

}

resource "aws_route" "name" {
  route_table_id = module.vpc.intra_subnets[0].id
}

*/

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
}


