provider "aws" {
  profile                 = var.profile
  shared_credentials_file = var.shared_credentials_file
  region                  = var.region
}

locals {
  udagram_id_prefix = "udagram-${var.stage}-"
}

resource "aws_s3_bucket" "udagram" {
  bucket_prefix = local.udagram_id_prefix
  acl           = "private"
  force_destroy = true
  cors_rule {
    allowed_headers = [
      "*",
    ]
    allowed_methods = [
      "GET",
      "PUT",
      "POST",
      "DELETE",
    ]
    allowed_origins = [
      "*",
    ]
    expose_headers  = []
    max_age_seconds = 0
  }
}

resource "aws_db_instance" "udagram" {
  identifier_prefix                     = local.udagram_id_prefix
  allocated_storage                     = 20
  max_allocated_storage                 = 100
  storage_type                          = "gp2"
  auto_minor_version_upgrade            = true
  name                                  = var.db_name
  username                              = var.db_username
  password                              = var.db_password
  publicly_accessible                   = true
  engine                                = "postgres"
  engine_version                        = "11.6"
  apply_immediately                     = true
  instance_class                        = var.db_instance_class
  performance_insights_enabled          = true
  performance_insights_retention_period = 7
  skip_final_snapshot                   = var.db_skip_final_snapshot
  vpc_security_group_ids = [
    aws_default_security_group.default.id
  ]
}

resource "aws_default_security_group" "default" {
  revoke_rules_on_delete = false
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description = ""
      from_port   = 0
      ipv6_cidr_blocks = [
        "::/0",
      ]
      prefix_list_ids = []
      protocol        = "-1"
      security_groups = []
      self            = false
      to_port         = 0
    },
  ]
  ingress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description = ""
      from_port   = 0
      ipv6_cidr_blocks = [
        "::/0",
      ]
      prefix_list_ids = []
      protocol        = "-1"
      security_groups = []
      self            = false
      to_port         = 0
    },
  ]
}
