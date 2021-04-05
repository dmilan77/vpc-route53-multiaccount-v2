data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }

  filter {
    name = "owner-alias"

    values = [
      "amazon",
    ]
  }
}



module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-spoke1"
  instance_count         = 1

  ami                    = "ami-038f1ca1bd58a5790"
  instance_type          = "t2.micro"
  key_name               = "ssh-key-vpc-peer-spoke1"
  monitoring             = true
  vpc_security_group_ids = [module.security_group-0000.this_security_group_id]
  subnet_id              = tolist(module.vpc.public_subnets)[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}