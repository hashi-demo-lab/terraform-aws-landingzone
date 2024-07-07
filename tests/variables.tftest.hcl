/*run "variable_validation" {
  assert {
    condition     = var.region == "ap-southeast-2"
    error_message = "incorrect default value for region variable"
  }

  assert {
    condition     = var.availability_zones == ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
    error_message = "incorrect default value for availability_zones variable"
  }

  assert {
    condition     = var.owner == "owner@example.com"
    error_message = "incorrect default value for owner variable"
  }

  assert {
    condition     = var.ttl == 30
    error_message = "incorrect default value for ttl variable"
  }

  assert {
    condition     = var.vpc_cidr == "10.200.0.0/16"
    error_message = "incorrect default value for vpc_cidr variable"
  }

  assert {
    condition     = var.public_subnets == ["10.200.10.0/24"]
    error_message = "incorrect default value for public_subnets variable"
  }

  assert {
    condition     = var.private_subnets == ["10.200.20.0/24"]
    error_message = "incorrect default value for private_subnets variable"
  }

  assert {
    condition     = var.aws_key_pair_key_name == "key"
    error_message = "incorrect default value for aws_key_pair_key_name variable"
  }

  assert {
    condition     = var.workspace_type == "default"
    error_message = "incorrect default value for workspace_type variable"
  }

  assert {
    condition     = var.enable_vpc == true
    error_message = "incorrect default value for enable_vpc variable"
  }

  assert {
    condition     = var.enable_http_access == true
    error_message = "incorrect default value for enable_http_access variable"
  }

  assert {
    condition     = var.enable_ssh_access == true
    error_message = "incorrect default value for enable_ssh_access variable"
  }

  assert {
    condition     = var.enable_tgw == false
    error_message = "incorrect default value for enable_tgw variable"
  }

  assert {
    condition     = var.enable_ssm == true
    error_message = "incorrect default value for enable_ssm variable"
  }
}*/