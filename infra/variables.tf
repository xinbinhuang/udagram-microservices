variable "profile" {
  default = "default"
  type    = string
}

variable "shared_credentials_file" {
  default = "~/.aws/credentials"
  type    = string
}

variable "region" {
  default = "us-west-2"
  type    = string
}

variable "stage" {
  default = "dev"
  type    = string
}

variable "db_username" {
  default = "udagram_dev"
  type    = string
}

variable "db_password" {
  default = "udagram_dev"
  type    = string
}

variable "db_name" {
  default = "udagram"
  type    = string
}

variable "db_instance_class" {
  default = "db.t2.micro"
  type    = string
}

variable "db_skip_final_snapshot" {
  default = true
  type    = bool
}

