//data "aws_availability_zones" "available" {}

module "vpc" {
  count   = (var.enable_vpc ? 1 : 0)
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"

  name                 = var.deployment_id
  cidr                 = var.vpc_cidr
  azs                  = var.availability_zones
  public_subnets       = var.public_subnets
  private_subnets      = var.private_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  create_igw           = true

  tags = {
    "applications/${var.deployment_id}" = "sea"
  }

  public_subnet_tags = {
    "applications/${var.deployment_id}" = "sea"
  }
}