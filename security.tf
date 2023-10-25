resource "aws_key_pair" "main" {
  key_name   = "${var.deployment_id}-${var.aws_key_pair_key_name}"
  public_key = var.ssh_pubkey
}

module "security_group_http" {
  count   = (var.enable_http_access ? 1 : 0)
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "4.17.1"

  name        = "${var.deployment_id}-http"
  description = "Security group with HTTP ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc[0].vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}

module "security_group_ssh" {
  count   = (var.enable_ssh_access ? 1 : 0)
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "4.17.1"

  name        = "${var.deployment_id}-ssh"
  description = "Security group with ssh ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc[0].vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}