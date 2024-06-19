#Policy to allow password change
resource "aws_iam_policy" "allow_password_change" {
  name = "AllowPasswordChange"
  description = "A policy to allow IAM users for password change"
  policy = jsonencode(
    {
        Version = "2012-10-17",
        Statement = [
            {
                Action = "iam:ChangePassword",
                Effect = "Allow",
                Resource = "*"
            }
        ]
    }
  )
}

#Sample IAM policy for S3 bucket access
resource "aws_iam_policy" "s3_bucket_policy" {
  name = "S3BucketPolicy"
  description = "A sample policy for S3 bucket access"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "s3:*",
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

#Policy to restrict access to secrets
resource "aws_iam_policy" "secrets_access_policy" {
  name        = "SecretsAccessPolicy"
  description = "Policy to allow only the main user to access secrets"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Deny",
        Action = "secretsmanager:GetSecretValue",
        Resource = "*",
        Condition = {
          StringNotEquals = {
            "aws:username": var.iam_user_name
          }
        }
      }
    ]
  })
}

# Attach the policy to the user
resource "aws_iam_user_policy_attachment" "secrets_access_policy_attachment" {
  user      = aws_iam_user.sample_user.name
  policy_arn = aws_iam_policy.secrets_access_policy.arn
}
