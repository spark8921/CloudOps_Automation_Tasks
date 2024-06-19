#Output the IAM account number
output "account_id" {
  value = data.aws_caller_identity.sampleuser_current_caller_identity.account_id
}

#Output the IAM user name
output "sample_user_name" {
  value = aws_iam_user.sample_user.name
}


