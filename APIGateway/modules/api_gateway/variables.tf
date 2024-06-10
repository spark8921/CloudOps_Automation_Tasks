variable "api_name" {
  description = "Name of the API gateway"
  type = string
}

variable "resource_name" {
  description = "Name of the API resource"
  type = string
}

variable "method_type" {
  description = "HTTP method type"
  type = string
  default = "GET"
}

variable "stage_name" {
  description = "Deployment stage name"
  type = string
  default = "dev"
}