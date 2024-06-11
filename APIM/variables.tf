variable "resource_group_name" {
  description = "The name of the resource group in which to create the APIM service."
  type        = string
  default     = "sample-resources"
}

variable "location" {
  description = "The Azure region in which to create the APIM service."
  type        = string
  default     = "West Europe"
}

variable "publisher_name" {
  description = "The name of the publisher of the APIM service."
  type        = string
  default     = "MyCompany"
}

variable "publisher_email" {
  description = "The email address of the publisher of the APIM service."
  type        = string
  default     = "admin@mycompany.com"
}

variable "sku_name" {
  description = "The SKU (pricing tier) of the APIM service."
  type        = string
  default     = "Developer_1"
}

variable "sku_capacity" {
  description = "The capacity of the APIM service."
  type        = number
  default     = 1
}
