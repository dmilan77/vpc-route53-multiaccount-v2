# resource "aws_route53_resolver_endpoint" "inbound-endpoint" {
#   name      = "hub-inbound-endpoint"
#   direction = "INBOUND"

#   security_group_ids = [
#     module.security_group-10.this_security_group_id,
#   ]

#   ip_address {
#     subnet_id = tolist(module.vpc.private_subnets)[0]
#     ip        = "10.0.1.10"
#   }

#   ip_address {
#     subnet_id = tolist(module.vpc.private_subnets)[1]
#     ip        = "10.0.2.10"
#   }

#   tags = {
#     Environment = "Poc"
#   }
# }

# resource "aws_route53_resolver_endpoint" "outboud-endpoint" {
#   name      = "hub-outboud-endpoint"
#   direction = "OUTBOUND"

#   security_group_ids = [
#     module.security_group-10.this_security_group_id,
#   ]

#   ip_address {
#     subnet_id = tolist(module.vpc.public_subnets)[0]
#   }

#   ip_address {
#     subnet_id = tolist(module.vpc.public_subnets)[1]
#   }

#   tags = {
#     Environment = "Poc"
#   }
# }