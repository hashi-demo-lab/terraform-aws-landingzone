/*run "output_validation" {
  assert {
    condition     = output.vpc_id == module.vpc[0].vpc_id
    error_message = "incorrect VPC ID output"
  }

  assert {
    condition     = output.public_subnet_ids == module.vpc[0].public_subnets
    error_message = "incorrect public subnet IDs output"
  }

  assert {
    condition     = output.security_group_http_id == module.security_group_http[0].security_group_id
    error_message = "incorrect HTTP security group ID output"
  }

  assert {
    condition     = output.security_group_ssh_id == module.security_group_ssh[0].security_group_id
    error_message = "incorrect SSH security group ID output"
  }

  assert {
    condition     = output.ssm_instance_profile_name == aws_iam_instance_profile.ssm_instance_profile[0].name
    error_message = "incorrect SSM instance profile name output"
  }

  assert {
    condition     = output.aws_key_pair_name == aws_key_pair.main.key_name
    error_message = "incorrect AWS key pair name output"
  }

  assert {
    condition     = output.deployment_id == local.deployment_id
    error_message = "incorrect deployment ID output"
  }
}*/