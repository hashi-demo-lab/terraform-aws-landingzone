variable "region" {
  description = "AWS region"
  type        = string
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

variable "enable_vpc" {
  type        = bool
  description = <<EOT
    (Optional) Enable feature X.

    Default: true
  EOT
  default     = true
}

variable "enable_http_access" {
  type        = bool
  description = <<EOT
    (Optional) Enable feature X.

    Default: true
  EOT
  default     = true
}

variable "enable_ssh_access" {
  type        = bool
  description = <<EOT
    (Optional) Enable feature X.

    Default: true
  EOT
  default     = true
}

variable "enable_tgw" {
  type        = bool
  description = <<EOT
    (Optional) Enable feature X.

    Default: true
  EOT
  default     = true
}