// generic variables

variable "deployment_id" {
  description = "TFC Deployment Id"
  type        = string
  default     = ""
}
variable "region" {
  description = "AWS region"
  type        = string
}

variable "owner" {
  description = "Resource owner identified using an email address"
  type        = string
  default     = ""
}

variable "ttl" {
  description = "Resource TTL (time-to-live)"
  type        = number
  default     = 48
}


variable "deployment_name" {
  description = "Deployment name, used to prefix resources"
  type        = string
  default     = "landing_zone_key_pair"
}

variable "aws_vpc_cidr" {
  description = "AWS VPC CIDR"
  type        = string
}

variable "aws_public_subnets" {
  description = "AWS public subnets"
  type        = list(any)
}

variable "aws_private_subnets" {
  description = "AWS private subnets"
  type        = list(any)
}

variable "address_space" {
  type        = string
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "10.0.10.0/24"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  type        = string
  default     = "t2.micro"
}

variable "admin_username" {
  description = "Administrator user name for mysql"
  type        = string
  default     = "ubuntu"
}

variable "hcp_client_id" {
  description = "HCP client id"
  type        = string
  default     = ""
}

variable "hcp_client_secret" {
  description = "HCP client secret"
  type        = string
  default     = ""
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
    (Optional) Enable http access to ec2 instance.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "enable_ssh_access" {
  description = <<EOT
    (Optional) Enable ssh access to ec2 instances.

    Default: true
  EOT
  type        = bool
  default     = true
}
variable "enable_tgw" {
  description = <<EOT
    (Optional) Enable AWS Transit Gateway.

    Default: false
  EOT
  type        = bool
  default     = false
}


variable "enable_ssm" {
  description = <<EOT
    (Optional) Enable AWS Systems Management.

    Default: true
  EOT
  type        = bool
  default     = true
}

variable "aws_key_pair_key_name" {
  description = "AWS key pair key name"
  type        = string
  default     = ""
}

variable "ssh_pubkey" {
  description = "SSH public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC/ByuTnASXmElqUNlm8M0s9qe9JntOfoDXF8cg3A/AXVzgRsU7bisji+db6oNQLQCNVUpOgj7r5+c4lon/DjSyRyGNMwGRDfYcxii/o4p9JTt8AcKWqVfvISi1+rRQ9ZlQrWWkXvuSzWuEuinlzdsopp4oCWNMxswd8GKoAdTmbJA6oFXvikBy6jiuXDXW5VGqOmO6ir6XNsw6hQnv7U4IpKqNyse0o4ttQEkzaZYve4mOepfNdJkY5VacrAyCiBXnKgGdE5AgECWA5CJ5H43h5r+MM/yIiV2UaInetM240j/qbBXaYjyVeYczFDOR7QKGevuszL7I9Ce5U0MbRV9YHboaHDaaWSJOifBUGPQKgrKg0dz/EK/wJkeZAdKZSKVfw48ua/iYfurUJD6cMZ2+2T3tvAu2GfTWY1WFccRrMqnEVEAshUGdXVO8XaHZld+maeGtN6f4euh2TgZhU4radqVfgepMGsVBRFysorY57rvtMR+bpTKSWngYv7KKlkTQ7jtbi8t8vr/05C7AH7yEPdGMg09pPOXz2a62OqdnI5a4yT+W0pYo3ujPHSgQGGIMZxifjNrrORynMNpa5BRfJgAkhjaGuteV0i5gY4CJDAyRrIrxlLJ6TqTNioYtcpJuiBPMbsNIeiCKQ7is68ymk5RMa01JjhODJKA86ssT9Q== aarone@aarone-NHVVW7JKQV"
}

variable "vault_address" {
  description = "address to HashiCorp Vault platform"
  type        = string
  default     = "https://vault-dc1.hashibank.com:443"
}

variable "workspace_type" {
  description = "Terraform Cloud workspace type"
  type        = string
  default     = "landingZone"
}