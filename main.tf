locals {
  deployment_id = lower("${var.deployment_name}-${random_string.suffix.result}")
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}

module "vpc" {
  count   = var.enable_vpc ? 1 : 0
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name                 = local.deployment_id
  cidr                 = var.vpc_cidr
  azs                  = var.availability_zones
  public_subnets       = var.public_subnets
  private_subnets      = var.private_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  create_igw           = true

  tags = {
    "applications/${local.deployment_id}" = "sea"
  }

  public_subnet_tags = {
    "applications/${local.deployment_id}" = "sea"
  }
}

resource "aws_iam_instance_profile" "ssm_instance_profile" {
  count = var.enable_ssm ? 1 : 0
  name  = "ssm_instance_profile_${local.deployment_id}"
  role  = aws_iam_role.ssm_role[0].id
}

resource "aws_iam_role" "ssm_role" {
  count = var.enable_ssm ? 1 : 0
  name  = "ssm_role_${local.deployment_id}"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_policy_attachment" {
  count      = var.enable_ssm ? 1 : 0
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = aws_iam_role.ssm_role[0].name
}

resource "aws_key_pair" "main" {
  key_name   = "${local.deployment_id}-${var.aws_key_pair_key_name}"
  public_key = var.ssh_pubkey
}

module "security_group_http" {
  count   = var.enable_http_access ? 1 : 0
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "~> 5.0"

  name        = "${local.deployment_id}-http"
  description = "Security group with HTTP ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc[0].vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}

module "security_group_ssh" {
  count   = var.enable_ssh_access ? 1 : 0
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "~> 5.0"

  name        = "${local.deployment_id}-ssh"
  description = "Security group with ssh ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc[0].vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}
