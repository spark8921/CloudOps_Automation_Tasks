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