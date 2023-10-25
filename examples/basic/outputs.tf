output "vpc_id" {
  description = "VPC id"
  value       = module.landingzone.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet ids"
  value       = module.landingzone.public_subnet_ids
}

output "security_group_http_id" {
  description = "Security Group HTTP ID"
  value       = module.landingzone.security_group_http_id
}

output "security_group_ssh_id" {
  description = "Security Group SSH ID"
  value       = module.landingzone.security_group_ssh_id
}

output "ssm_instance_profile_name" {
  description = "Provides an IAM instance profile."
  value       = module.landingzone.ssm_instance_profile_name
}

output "aws_key_pair_key_name" {
  description = "Provides an IAM instance profile."
  value       = module.landingzone.aws_key_pair_name
}