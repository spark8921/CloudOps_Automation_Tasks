variable "region" {
  description = "The AWS region to create resources in it"
  type = string
  default = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR block for vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "CIDR block of first subet"
  type = string
  default = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block of second subnet"
  type = string
  default = "10.0.2.0/24"
}

variable "web_instance_ami" {
  description = "AMI ID for EC2 instances"
  type = string
  default = "ami-0c55b159cbfafe1f0"
}

variable "web_instnace_type"{
    description = "Instance type of EC2"
    type = string
    default = "t2.micro"
} 