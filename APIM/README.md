# Azure API Managaement (APIM) Service using Terraform

This terraform configuration provides a structured approach to setting up an Azure API Management 
(APIM) service. The APIM service acts as a gateway to manage API requests from external users or systems to backend services, ensuring protection, security, and effective management of APIs at scale.

#Prerequisites:
1) Terraform v0.12 or later : Install Terraform from the official site (https://www.terraform.io/downloads.html).
2) AWS CLI: Install and configure with correct permissions. (https://aws.amazon.com/cli/).
3) AWS account: Ensure you have an AWS account with the necessary permissions to create resources.

#Project Structure
1) main.tf: Entry point for the Terraform configuration and calls the APIM module
2) variables.tf: Declares input variables used across the configuration.
3) outputs.tf: Defines output values for the entire configuration
4) providers.tf: Configures the Terraform providers, specifically Azure provider
5) terraform.tfvars: Contains variable values specific to the deployment.
6) modules/apim/ : Directory containing modularized Terraform configuration for APIM.

#Steps for running the application
1) terraform init
2) terraform plan
3) terraform apply
4) If you want to destroy, then terraform destroy
