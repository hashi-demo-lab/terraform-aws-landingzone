# output "vpc_id" {
#   description = "VPC id"
#   value       = module.vpc[0].vpc_id
# }

# output "public_subnet_ids" {
#   description = "Public subnet ids"
#   value       = module.vpc[0].public_subnets
# }

# output "security_group_http_id" {
#   description = "Security Group HTTP ID"
#   value       = module.security_group_http[0].security_group_id
# }

# output "security_group_ssh_id" {
#   description = "Security Group SSH ID"
#   value       = module.security_group_ssh[0].security_group_id
# }

# output "ssm_instance_profile_name" {
#   description = "Provides an IAM instance profile."
#   value       = aws_iam_instance_profile.ssm_instance_profile[0].name
# }

# output "aws_key_pair_name" {
#   description = "Provides an IAM instance profile."
#   value       = aws_key_pair.main.key_name
# }

# output "deployment_id" {
#   description = "Deployment ID genertaed for this project"
#   value = local.deployment_id
# }