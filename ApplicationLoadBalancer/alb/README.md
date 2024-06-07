#AWS ALB with EC2 using Terraform
This project demonstrates how to use terraform to set up an AWS Application Load Balancer(ALB) that routes traffic to EC2 instances within a VPC. The set up includes security groups,subnets,vpc and necessary configurations to ensure internal and external communication.

#Prerequisites:
1) Terraform v0.12 or later
2) AWS CLI with correct permissions
3) AWS acount with necessary resources

#Project Structure:
1) main.tf : Main configuration file for VPC,Subnets and Security Groups Configuration
2) alb.tf : Configuration for Application Load Balancer and Target Group
3) ec2_instances.tf : Configuration for EC2 instances
4) variables.tf : Variables used throughout the configuration
5) terraform.tfvars : Values for variables
6) outputs.tf : Outputs to retrieve the ALB DNS name after deployment
7) README.md : Documentation file for the project

#Steps for running the application
1) terraform init
2) terraform plan
3) terraform apply
4) If you want to destroy, then terraform destroy
