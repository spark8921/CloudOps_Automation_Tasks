variable "aws_region" {
  description = "AWS region for creating resources"
  type = string
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  type = string
  default = "sample_user"
}

variable "team" {
  description = "Team name"
  type = string
}

variable "environment" {
  description = "Environment name"
  type = string
}

variable "owner" {
  description = "Owner name"
  type = string
}

variable "owner_email" {
  description = "Owner email"
  type = string
}

variable "policy_arns" {
  description = "List of ARNs of the IAM policies to attach to the user"
  type = list(string)
  default = []
}

variable "kms_key_id" {
  description = "KMS Key ID for encrypting secrets"
  type = string
}