# AWS API Gateway using Terraform

This repository contains a Terraform module to deploy an AWS API Gateway. This module creates a RESTful API with a specified resource and method type.

#Prerequisites:
1) Terraform v0.12 or later : Install Terraform from the official site (https://www.terraform.io/downloads.html).
2) AWS CLI: Install and configure with correct permissions. (https://aws.amazon.com/cli/).
3) AWS account: Ensure you have an AWS account with the necessary permissions to create API Gateway resources.

#Project Structure:
1) main.tf: Invokes the API Gateway module with specified variales
2) providers.tf: Configures the AWS provider
3) variables.tf: Declares input variables for the module
4) terraform.tfvars: Provides values for the declared variables.
5) outputs.tf: Defines output values to get important information about created resources.
6) modules/api_gateway/main.tf: contains the main resource definitions for API Gateway
7) modules/api_gateway/outputs.tf: specifies outputs for the module
8) modules/api_gateway/variables.tf: Declares input variables for the module

#Steps for running the application
1) terraform init
2) terraform plan
3) terraform apply
4) If you want to destroy, then terraform destroy
