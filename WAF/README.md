# AWS WAF Using Terraform

This project demonstrates how to use Terraform to set up an AWS Web Application FireWall(WAF) service. The setup includes a WAF Web ACL and associated IP sets and rules, structured using Terraform modules for clarity and reusability.

#Prerequisites:
1) Terraform v0.12 or later : Install Terraform from the official site (https://www.terraform.io/downloads.html).
2) AWS CLI: Install and configure with correct permissions. (https://aws.amazon.com/cli/).
3) AWS account: Ensure you have an AWS account with the necessary permissions to create WAF resources.

#Project Structure:
1) main.tf: Invokes the WAF module
2) providers.tf: Specifies the AWS provider configuration
3) outputs.tf: Defines output variables to retrieve the WAF Web ACL ID after deployment
4) variables.tf: Defines input variables used throughout the configuration.
5) terraform.tfvars: provides values for the input variables
6) modules/waf/main.tf: The main terraform configuration for the WAF module
7) modules/waf/variables.tf: Defines input variables for the WAF module
8) modules/waf/outputss.tf: Defines output variables

