### main.tf
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

provider "aws" {
  access_key = "var.AWS_ACCESS_KEY"
  secret_key = "var.AWS_SECRET_KEY"
  version = "1.4.0"
  region = "ap-northeast-1"
}

#VPC trrraform
resource "aws_vpc" "dev-vpc-001" {
    cidr_block = "10.1.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "false"
    tags {
      Name = "dev-vpc-001"
    }
}
