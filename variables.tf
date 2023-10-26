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
  default     = "my-keypair"
}

variable "ssh_pubkey" {
  description = "SSH public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC/ByuTnASXmElqUNlm8M0s9qe9JntOfoDXF8cg3A/AXVzgRsU7bisji+db6oNQLQCNVUpOgj7r5+c4lon/DjSyRyGNMwGRDfYcxii/o4p9JTt8AcKWqVfvISi1+rRQ9ZlQrWWkXvuSzWuEuinlzdsopp4oCWNMxswd8GKoAdTmbJA6oFXvikBy6jiuXDXW5VGqOmO6ir6XNsw6hQnv7U4IpKqNyse0o4ttQEkzaZYve4mOepfNdJkY5VacrAyCiBXnKgGdE5AgECWA5CJ5H43h5r+MM/yIiV2UaInetM240j/qbBXaYjyVeYczFDOR7QKGevuszL7I9Ce5U0MbRV9YHboaHDaaWSJOifBUGPQKgrKg0dz/EK/wJkeZAdKZSKVfw48ua/iYfurUJD6cMZ2+2T3tvAu2GfTWY1WFccRrMqnEVEAshUGdXVO8XaHZld+maeGtN6f4euh2TgZhU4radqVfgepMGsVBRFysorY57rvtMR+bpTKSWngYv7KKlkTQ7jtbi8t8vr/05C7AH7yEPdGMg09pPOXz2a62OqdnI5a4yT+W0pYo3ujPHSgQGGIMZxifjNrrORynMNpa5BRfJgAkhjaGuteV0i5gY4CJDAyRrIrxlLJ6TqTNioYtcpJuiBPMbsNIeiCKQ7is68ymk5RMa01JjhODJKA86ssT9Q== aarone@aarone-NHVVW7JKQV"
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
