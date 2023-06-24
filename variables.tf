variable "region" {
  description = "AWS region"
  type        = string
}

variable "availability_zones" {
  description = "AWS region"
  type        = list(any)
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}
variable "owner" {
  description = "Resource owner identified using an email address"
  type        = string
}

variable "ttl" {
  description = "Resource TTL (time-to-live)"
  type        = number
}

variable "deployment_id" {
  description = "Deployment id"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(any)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(any)
}

variable "aws_key_pair_key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "ssh_pubkey" {
  description = "ssh public key"
  type        = string
}

variable "enable_vpc" {
  description = <<EOT
    (Optional) Enable AWS VPC creation.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "enable_http_access" {
  description = <<EOT
    (Optional) Enable http access.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "enable_ssh_access" {
  description = <<EOT
    (Optional) Enable ssh access.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "enable_tgw" {
  description = <<EOT
    (Optional) Enable AWS Transit Gateway.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "enable_ssm" {
  description = <<EOT
    (Optional) Enable AWS Systems Management.

    Default: true
  EOT
  type        = bool
  default     = true
}