variable "vpc_cidr" {
  description = "cidr Block for VPC"
  type = string
  }

  variable "enable_dns_support" {
    description = "enable or disable dns support"
    type = boolean
    default = true
  }

  variable "enable_dns_hostnames" {
    description = "value"
    default = false
  }

  variable "tags" {
    description = "provide a tag for the resources"
    default = ""
  }