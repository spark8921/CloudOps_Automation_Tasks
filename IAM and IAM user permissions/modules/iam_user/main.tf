#Creates an IAM user
resource "aws_iam_user" "sample_user" {
  name = var.iam_user_name
  tags={
    team=var.team
    environment=var.environment
    owner=var.owner
    owner_email=var.owner_email
    creation_date=timestamp()
  }
}

# Loop through the policy ARNs and attach each one to the IAM user
resource "aws_iam_user_policy_attachment" "dynamic_policy_attachment" {
  for_each = toset(var.policy_arns)
  user = aws_iam_user.sample_user.name
  policy_arn = local.policy_arns_map[each.value]
}

#Optionally, creates access keys for the user
resource "aws_iam_access_key" "sample_user_access_key" {
  user=aws_iam_user.sample_user.name
}

# Store the access key in AWS Secrets Manager with encryption
resource "aws_secretsmanager_secret" "sample_user_access_key_secret" {
  name = "sample_user_access_key_secret"
  kms_key_id = var.kms_key_id
}

resource "aws_secretsmanager_secret_version" "sample_user_access_key_secret_version" {
  secret_id     = aws_secretsmanager_secret.sample_user_access_key_secret.id
  secret_string = jsonencode({
    access_key_id     = aws_iam_access_key.sample_user_access_key.id
    secret_access_key = aws_iam_access_key.sample_user_access_key.secret
  })
}

#Retrieve the information about current user
data "aws_caller_identity" "sampleuser_current_caller_identity" {}