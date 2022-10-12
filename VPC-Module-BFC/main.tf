
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = var.vpc_tags
  instance_tenancy = var.instance_tenancy
}

resource "aws_subnet" "subnets" {
  vpc_id = aws_vpc.vpc.id  #requered
  count = var.Create_subnets && length(var.subnet_blocks) > 0 ? length(var.subnet_blocks) : 0  
  cidr_block = var.subnet_blocks[count.index] #if we to take the length of subnets list and create the subnet 

  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  enable_dns64 = var.enable_dns64
  enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  ipv6_native = var.ipv6_native
  map_public_ip_on_launch = var.map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch
}


resource "aws_route_table" "route_table" {
  
  vpc_id = aws_vpc.vpc.id  #requered
  tags = var.route_table_tags
}



resource "aws_route" "routes" {
 route_table_id = aws_route_table.route_table.id   #requred
 
  
 }