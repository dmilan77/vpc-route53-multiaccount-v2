module "security_group-0000" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 3.0"

  name        = "all-open"
  description = "Security group for example usage with EC2 instance"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "all-icmp", "ssh-tcp"]
  egress_rules        = ["all-all"]
}

module "security_group-10" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 3.0"

  name        = "internal-ip-open"
  description = "Security group for example usage with EC2 instance"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["10.0.0.0/8"]
  ingress_rules       = ["dns-tcp", "dns-udp"]
  egress_rules        = ["all-all"]
}
