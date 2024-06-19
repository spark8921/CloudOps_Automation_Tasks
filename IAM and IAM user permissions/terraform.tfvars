aws_region = "us-west-1"
iam_user_name = "sample_user"
team="CloudOps"
environment = "practice"
owner="Spandana Karnati"
owner_email = "spandana.karnati@phenom.com"

# #List of policy ARNs to attch (directly passing policy arns)
# policy_arns = [ 
#     "arn:aws:iam::aws:policy/AllowPasswordChange",
#     "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
#  ]

#Policy keys as defined in the module's local map
policy_arns = [ "allow_password_change","s3_bucket_policy" ]

 #KMS Key ID for encrypting secrets
 kms_key_id = "arn:aws:kms:us-west-1:730335639652:key/d947f7c6-4bb2-479b-ada3-ff3cfa562f7c"