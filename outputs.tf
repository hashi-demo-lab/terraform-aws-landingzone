output "vpc_id" {
  description = "VPC id"
  value       = module.vpc[0].vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet ids"
  value       = module.vpc[0].public_subnets
}

output "security_group_http_id" {
  description = "Security Group HTTP ID"
  value       = module.security_group_http[0].security_group_id
}

output "security_group_ssh_id" {
  description = "Security Group SSH ID"
  value       = module.security_group_ssh[0].security_group_id
}

output "key" {
  description = "private_key_pem"
  value = tls_private_key.main.private_key_pem
}