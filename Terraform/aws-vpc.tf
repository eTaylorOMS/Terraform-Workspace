module "vpc" {
  source                   = "terraform-aws-modules/vpc/aws"
  version                  = "5.9.0"
  name                     = "eve-vpc"
  cidr                     = "10.0.1.0/24"
  azs                      = ["us-east-1a", "us-east-1b"]
  private_subnets          = ["10.0.1.0/26", "10.0.1.64/26"]
  public_subnets           = ["10.0.1.128/26", "10.0.1.192/26"]
  enable_ipv6              = false
  enable_dns_hostnames     = true
  enable_dns_support       = true
  enable_dhcp_options      = true
  create_igw               = true
  map_public_ip_on_launch	 = true
}