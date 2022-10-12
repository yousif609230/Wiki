terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}



module "myvpc" {
  source = "../VPC-Module-BFC"
  

  vpc_cidr = "10.10.0.0/16"
   Create_subnets = true
   subnet_blocks = [ "10.10.0.0/22" , "10.10.4.0/22" , "10.10.8.0/22" ]
  
}