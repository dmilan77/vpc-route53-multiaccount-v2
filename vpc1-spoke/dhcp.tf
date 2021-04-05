# resource "aws_vpc_dhcp_options" "custom-hub-dhcp" {
#   domain_name          = "ec2.internal"
# #   domain_name_servers  = ["10.0.1.10", "10.0.2.10"]
#   domain_name_servers  = ["AmazonProvidedDNS"]
#   tags = {
#     Name = "custom-hub-dhcp-name"
#   }
# }

# resource "aws_vpc_dhcp_options_association" "dns_resolver" {
#   vpc_id          = module.vpc.vpc_id
#   dhcp_options_id = aws_vpc_dhcp_options.custom-hub-dhcp.id
# }