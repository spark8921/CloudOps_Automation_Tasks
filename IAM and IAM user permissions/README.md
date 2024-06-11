IAM and IAM User Permissions using terraform

This project demonstrates how to use terraform to create an AWS IAM user with specific permissions and access keys. It also includes additional configurations to manage the IAM user's access.

#Prerequisites:
1) Terraform v0.12 or later : Install Terraform from the official site (https://www.terraform.io/downloads.html).
2) AWS CLI: Install and configure with correct permissions. (https://aws.amazon.com/cli/).
3) AWS account: Ensure you have an AWS account with the necessary permissions to create following resources:
   - IAM User
   - IAM Policy
   - IAM Access Key
  
#Project Structure:
1) main.tf : Calls the module to create IAM user
2) variables.tf : Variables used throughout the configuration
3) terraform.tfvars : Values for variables
4) provider.tf : AWS provider configuration
5) outputs.tf : Outputs for the IAM user's access keys and account ID
6) main.tf of modules folder : IAM user and policies configuration
7) outputs.tf of modules folder : Outputs IAM user details
8) variables.tf of modules folder: Variables for IAM user creation
README.md : Documentation file for the project

#Steps for running the application
1) terraform init
2) terraform plan
3) terraform apply
4) If you want to destroy, then terraform destroy
