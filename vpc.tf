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
