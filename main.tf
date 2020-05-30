provider "aws" {
  profile                 = var.profile
  shared_credentials_file = var.shared_credentials_file
  region                  = var.region
}

resource "aws_s3_bucket" "udagram" {
}

