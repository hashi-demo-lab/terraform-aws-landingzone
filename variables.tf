variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "owner" {
  description = "Resource owner identified using an email address"
  type        = string
  default     = "owner@example.com"
}

variable "ttl" {
  description = "Resource TTL (time-to-live) in days"
  type        = number
  default     = 30
}

variable "deployment_id" {
  description = "Deployment id"
  type        = string
  default     = "my-deployment"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.200.0.0/16"
}

variable "public_subnets" {
  description = "Public subnets CIDR blocks"
  type        = list(string)
  default     = ["10.200.10.0/24"]
}

variable "private_subnets" {
  description = "Private subnets CIDR blocks"
  type        = list(string)
  default     = ["10.200.20.0/24"]
}

variable "aws_key_pair_key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "ssh_pubkey" {
  description = "SSH public key"
  type        = string
}

variable "workspace_type" {
  description = "Terraform Cloud workspace type"
  type        = string
  default     = "default"
}

variable "enable_vpc" {
  description = "Enable AWS VPC creation"
  type        = bool
  default     = true
}

variable "enable_http_access" {
  description = "Enable HTTP access"
  type        = bool
  default     = true
}

variable "enable_ssh_access" {
  description = "Enable SSH access"
  type        = bool
  default     = true
}

variable "enable_tgw" {
  description = "Enable AWS Transit Gateway"
  type        = bool
  default     = false
}

variable "enable_ssm" {
  description = "Enable AWS Systems Management"
  type        = bool
  default     = true
}
