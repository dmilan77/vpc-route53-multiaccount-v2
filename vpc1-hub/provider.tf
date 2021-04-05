terraform {
    backend "s3" {
        bucket = "tf-state-dmilan"
        encrypt = true
        key = "route53/invfra/vpc1-hub-v2"
        region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/milandas/.aws.milan/credentials"
  profile                 = "default"
}