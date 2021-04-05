resource "aws_route53_zone" "zone-spoke1-private" {
  name = "spoke1.dmilanawz.xyz"
  force_destroy = "true"
  vpc {
    vpc_id = module.vpc.vpc_id
  }
}
