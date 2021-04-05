# resource "aws_route53_resolver_rule" "sys" {
#   name                 = "my-global-resolver"
#   domain_name = "."
#   rule_type   = "SYSTEM"
# }

# resource "aws_route53_resolver_rule_association" "system" {
#   resolver_rule_id = aws_route53_resolver_rule.sys.id
#   vpc_id           = module.vpc.vpc_id
# }

# resource "aws_route53_resolver_rule" "fwd-hub" {
#   domain_name          = "hub.dev.aws.dmilanawz.xyz"
#   name                 = "hub-resolver"
#   rule_type            = "FORWARD"
#   resolver_endpoint_id = aws_route53_resolver_endpoint.outboud-endpoint.id

#   target_ip {
#     ip =  tolist(aws_route53_resolver_endpoint.inbound-endpoint.ip_address)[0].ip
#   }
#   target_ip {
#     ip =  tolist(aws_route53_resolver_endpoint.inbound-endpoint.ip_address)[1].ip
#   }

#   tags = {
#     Environment = "Prod"
#   }
# }

# resource "aws_route53_resolver_rule_association" "rule-hub" {
#   resolver_rule_id = aws_route53_resolver_rule.fwd-hub.id
#   vpc_id           = module.vpc.vpc_id
# }