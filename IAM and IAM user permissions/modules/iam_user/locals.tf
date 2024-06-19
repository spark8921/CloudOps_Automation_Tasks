locals {
  policy_arns_map = {
    "allow_password_change" = aws_iam_policy.allow_password_change.arn
    "s3_bucket_policy" = aws_iam_policy.s3_bucket_policy.arn
  }
}