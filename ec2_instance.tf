terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

provider "aws" {
  region      = "us-east-1"
  access_key = ""
  secret_key = ""
  
}
# Input values

#EC2 instance values
instance_name   = "Shubham_EC2"
ami_id          = "ami-00e6b9cc06404b3ca"
instance_type   = "t2.micro"

#VPC and Subnet values
vpc_name            = "Sample VPC"
vpc_cidr            = "172.31.0.0/16"
instance_tenancy    = "default"
subnet_name         = "sbx-apps-aws-use1-sub-vpc001-general1"
subnet_cidr_block   = "172.31.80.0/20"
private_ip          =  ["172.31.89.75"]
nic_name            = "ec2_instance_nic"

#Security group vaules
sg-name                             = "sbx-shubham"
security_group_name                 = "sbx-shubham-aws-use1-sgp-ec2"
security_group_description          = "Security group for Shubham test environment"
security_group_ingress_cidr_blocks  = ["0.0.0.0/0"]


###Tags
environment_name = "sandbox"
costcenter_name  = "Demo"