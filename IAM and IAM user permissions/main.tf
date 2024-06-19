module "iam_user" {
source = "./modules/iam_user"
aws_region = var.aws_region
iam_user_name = var.iam_user_name
team = var.team
owner = var.owner
owner_email = var.owner_email
environment = var.environment
policy_arns = var.policy_arns
kms_key_id = var.kms_key_id
}