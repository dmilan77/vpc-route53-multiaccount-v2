resource "aws_route53_zone" "zone-hub-private" {
  name = "hub.dmilanawz.xyz"
  force_destroy = "true"
  vpc {
    vpc_id = module.vpc.vpc_id
  }
}
