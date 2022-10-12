##################################### VPC #####################################
variable "vpc_cidr" {
  description = "cidr Block for VPC"
  type        = string
  default = "10.10.0.0/16"
}

variable "enable_dns_support" {
  description = "enable or disable dns support"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  type = bool
  description = "value"
  default     = false
}
variable "instance_tenancy" {
  default = "default"
}

variable "vpc_tags" {
  #type = map(string)
  description = "provide a tag for the resources"
  default = {}
}

##################################### subnet #####################################

variable "azs" {
  description = "availability zone"
  type = list(string)
  default = [ "us-east-2a" ]
}

variable "subnet_blocks" {
  type = list(string)
  default = []

}

variable "assign_ipv6_address_on_creation" {
  type = bool
  description = "enable ipv6 when subnet is created "
  default = false
}

variable "enable_dns64" {
  description = "Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations"
  type = bool
  default = false
}

variable "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records"
  type = bool
  default = false
}

variable "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records"
  type = bool
  default = false
}

variable "ipv6_native" {
  description = " Indicates whether to create an IPv6-only subnet"
  type = bool
  default = false
}


variable "map_public_ip_on_launch" {
  description = " Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
  type = bool
  default = false
}

variable "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames to assign to instances in the subnet at launch"
  type = string
  default = "ip-name"
}

variable "subnet_tags" {
  #type = map(string)
  description = "provide a tag for the resources"
  default = {}
}

variable "Create_subnets" {
  type = bool
  default = false
}

##################################### route table #####################################

variable "route_table_tags" {
  description = " map of tags to assign to the route tables"
  default = {}
}
