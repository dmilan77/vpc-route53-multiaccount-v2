```
# From hub # hub.dmilanawz.xyz
aws route53 \
create-vpc-association-authorization \
--hosted-zone-id Z0955287TEV6BR7CLD8Z \
--vpc VPCRegion=us-east-1,VPCId=vpc-07ec54301ca288afd

# From spoke 1 # hub.dmilanawz.xyz
aws route53 \
associate-vpc-with-hosted-zone \
--hosted-zone-id Z0955287TEV6BR7CLD8Z \
--vpc VPCRegion=us-east-1,VPCId=vpc-07ec54301ca288afd \
--comment "Hub DNS Zone"

aws route53 \
list-vpc-association-authorizations \
--hosted-zone-id Z09970823KU600NGRC5HS

```