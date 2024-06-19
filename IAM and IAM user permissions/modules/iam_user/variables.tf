variable "aws_region" {
  description = "AWS Region for creating resources"
  type = string
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  type = string
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
  type        = list(string)
}

variable "kms_key_id" {
  description = "KMS Key ID for encrypting secrets"
  type        = string
}