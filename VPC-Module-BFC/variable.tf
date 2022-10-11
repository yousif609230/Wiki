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

variable "tags" {
  type = map(string)
  description = "provide a tag for the resources"
  default     = {
    "name" = "test"
  }
}

variable "azs" {
  description = "availability zone"
  type = list(string)
  default = [ "us-east-2a" ]
}

variable "subnet_block" {
  type = list(string)
  default = [ "10.10.0.0/22" , "10.10.4.0/22" ]

}