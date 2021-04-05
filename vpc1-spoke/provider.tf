terraform {
    backend "s3" {
        bucket = "tf-state-worker-1"
        encrypt = true
        key = "route53/invfra/vpc-spoke-1-v2"
        region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/milandas/.aws.spoke/credentials"
  profile                 = "default"
}