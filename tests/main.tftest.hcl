variables {
  region              = "ap-southeast-2"
  availability_zones  = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
  owner               = "owner@example.com"
  ttl                 = 30
  deployment_name     = "test-deployment"
  cidr                = "10.200.0.0/16"
  public_subnets      = ["10.200.10.0/24"]
  private_subnets     = ["10.200.20.0/24"]
  aws_key_pair_key_name = "key"
  ssh_pubkey          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC/ByuTnASXmElqUNlm8M0s9qe9JntOfoDXF8cg3A/AXVzgRsU7bisji+db6oNQLQCNVUpOgj7r5+c4lon/DjSyRyGNMwGRDfYcxii/o4p9JTt8AcKWqVfvISi1+rRQ9ZlQrWWkXvuSzWuEuinlzdsopp4oCWNMxswd8GKoAdTmbJA6oFXvikBy6jiuXDXW5VGqOmO6ir6XNsw6hQnv7U4IpKqNyse0o4ttQEkzaZYve4mOepfNdJkY5VacrAyCiBXnKgGdE5AgECWA5CJ5H43h5r+MM/yIiV2UaInetM240j/qbBXaYjyVeYczFDOR7QKGevuszL7I9Ce5U0MbRV9YHboaHDaaWSJOifBUGPQKgrKg0dz/EK/wJkeZAdKZSKVfw48ua/iYfurUJD6cMZ2+2T3tvAu2GfTWY1WFccRrMqnEVEAshUGdXVO8XaHZld+maeGtN6f4euh2TgZhU4radqVfgepMGsVBRFysorY57rvtMR+bpTKSWngYv7KKlkTQ7jtbi8t8vr/05C7AH7yEPdGMg09pPOXz2a62OqdnI5a4yT+W0pYo3ujPHSgQGGIMZxifjNrrORynMNpa5BRfJgAkhjaGuteV0i5gY4CJDAyRrIrxlLJ6TqTNioYtcpJuiBPMbsNIeiCKQ7is68ymk5RMa01JjhODJKA86ssT9Q== aarone@aarone-NHVVW7JKQV"
  workspace_type      = "default"
  enable_vpc          = true
  enable_http_access  = true
  enable_ssh_access   = true
  enable_tgw          = false
  enable_ssm          = true
}

/*run "resource_validation" {
  assert {
    condition     = random_string.suffix.length == 8
    error_message = "incorrect length for random string suffix"
  }

  assert {
    condition     = random_string.suffix.special == false
    error_message = "special characters should not be included in random string suffix"
  }

  assert {
    condition     = module.vpc[0].name == local.deployment_id
    error_message = "incorrect name for VPC module"
  }

  assert {
    condition     = module.vpc[0].cidr == var.vpc_cidr
    error_message = "incorrect CIDR for VPC module"
  }

  assert {
    condition     = module.vpc[0].azs == var.availability_zones
    error_message = "incorrect availability zones for VPC module"
  }

  assert {
    condition     = module.vpc[0].public_subnets == var.public_subnets
    error_message = "incorrect public subnets for VPC module"
  }

  assert {
    condition     = module.vpc[0].private_subnets == var.private_subnets
    error_message = "incorrect private subnets for VPC module"
  }

  assert {
    condition     = module.vpc[0].enable_nat_gateway == true
    error_message = "NAT gateway should be enabled for VPC module"
  }

  assert {
    condition     = module.vpc[0].single_nat_gateway == true
    error_message = "single NAT gateway should be enabled for VPC module"
  }

  assert {
    condition     = module.vpc[0].enable_dns_hostnames == true
    error_message = "DNS hostnames should be enabled for VPC module"
  }

  assert {
    condition     = module.vpc[0].create_igw == true
    error_message = "Internet gateway should be created for VPC module"
  }

  assert {
    condition     = aws_iam_instance_profile.ssm_instance_profile[0].name == "ssm_instance_profile_${local.deployment_id}"
    error_message = "incorrect name for SSM instance profile"
  }

  assert {
    condition     = aws_iam_role.ssm_role[0].name == "ssm_role_${local.deployment_id}"
    error_message = "incorrect name for SSM role"
  }

  assert {
    condition     = aws_key_pair.main.key_name == "${local.deployment_id}-${var.aws_key_pair_key_name}"
    error_message = "incorrect key name for AWS key pair"
  }

  assert {
    condition     = module.security_group_http[0].name == "${local.deployment_id}-http"
    error_message = "incorrect name for HTTP security group"
  }

  assert {
    condition     = module.security_group_ssh[0].name == "${local.deployment_id}-ssh"
    error_message = "incorrect name for SSH security group"
  }
}*/