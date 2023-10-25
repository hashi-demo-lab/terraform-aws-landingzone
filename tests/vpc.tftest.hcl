
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "vpc_validation" {
  assert {
    condition     = module.vpc[0].name == var.deployment_id
    error_message = "incorrect value for vpc name"
  }

  assert {
    condition     = module.vpc[0].cidr == var.vpc_cidr
    error_message = "incorrect value for vpc cidr"
  }

  assert {
    condition     = module.vpc[0].azs == var.availability_zones
    error_message = "incorrect value for vpc azs"
  }

  assert {
    condition     = module.vpc[0].public_subnets == var.public_subnets
    error_message = "incorrect value for vpc public_subnets"
  }

  assert {
    condition     = module.vpc[0].private_subnets == var.private_subnets
    error_message = "incorrect value for vpc private_subnets"
  }
}