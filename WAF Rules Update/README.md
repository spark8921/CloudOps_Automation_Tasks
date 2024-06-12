# AWS WAF Rules Update using Terraform

This module helps you set up and manage AWS WAF (Web Application Firewall) Web ACLs,IP sets and rules using terraform.

#Prerequisites:
1) Terraform v0.12 or later : Install Terraform from the official site (https://www.terraform.io/downloads.html).
2) AWS CLI: Install and configure with correct permissions. (https://aws.amazon.com/cli/).
3) AWS account: Ensure you have an AWS account with the necessary permissions to create resources.

#Project Structure:
1) main.tf: Refers the sub-module for WAF configuration
2) modules/: Directory containing sub-modules
3) modules/waf_rules_update/: Contains the code for updating WAF rules
   - main.tf: Defines resources for creating the WAF Web ACL and IP set.
   - outputs.tf: Specifies what values will be output from the sub-module
   - variables.tf: Lists input variables for the sub-module
4) outputs.tf: Specifies what values will be output from the root module
5) providers.tf: Sets up the AWS provider to manage AWS resources
6) terraform.tfvars: Defines actual values for variables used in the terraform configuration.
7) variables.tf: Declares input variables used in the root module.

#Steps for running the application
1) terraform init
2) terraform plan
3) terraform apply
4) If you want to destroy, then terraform destroy
