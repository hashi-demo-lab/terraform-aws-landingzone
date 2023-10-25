deployment_name       = "deployment-basic-example"
region                = "ap-southeast-2"
availability_zones    = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
owner                 = "aarone"
ttl                   = 30
deployment_id         = "sample-deployment"
vpc_cidr              = "10.200.0.0/16"
public_subnets        = ["10.200.10.0/24"]
private_subnets       = ["10.200.20.0/24"]
aws_key_pair_key_name = "landingzone"
ssh_pubkey            = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC/ByuTnASXmElqUNlm8M0s9qe9JntOfoDXF8cg3A/AXVzgRsU7bisji+db6oNQLQCNVUpOgj7r5+c4lon/DjSyRyGNMwGRDfYcxii/o4p9JTt8AcKWqVfvISi1+rRQ9ZlQrWWkXvuSzWuEuinlzdsopp4oCWNMxswd8GKoAdTmbJA6oFXvikBy6jiuXDXW5VGqOmO6ir6XNsw6hQnv7U4IpKqNyse0o4ttQEkzaZYve4mOepfNdJkY5VacrAyCiBXnKgGdE5AgECWA5CJ5H43h5r+MM/yIiV2UaInetM240j/qbBXaYjyVeYczFDOR7QKGevuszL7I9Ce5U0MbRV9YHboaHDaaWSJOifBUGPQKgrKg0dz/EK/wJkeZAdKZSKVfw48ua/iYfurUJD6cMZ2+2T3tvAu2GfTWY1WFccRrMqnEVEAshUGdXVO8XaHZld+maeGtN6f4euh2TgZhU4radqVfgepMGsVBRFysorY57rvtMR+bpTKSWngYv7KKlkTQ7jtbi8t8vr/05C7AH7yEPdGMg09pPOXz2a62OqdnI5a4yT+W0pYo3ujPHSgQGGIMZxifjNrrORynMNpa5BRfJgAkhjaGuteV0i5gY4CJDAyRrIrxlLJ6TqTNioYtcpJuiBPMbsNIeiCKQ7is68ymk5RMa01JjhODJKA86ssT9Q== aarone@aarone-NHVVW7JKQV"
workspace_type        = "staging"
enable_vpc            = true
enable_http_access    = true
enable_ssh_access     = true
enable_tgw            = false
enable_ssm            = true
