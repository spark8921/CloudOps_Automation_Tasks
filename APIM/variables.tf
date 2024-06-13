variable "resource_group_name" {
  description = "The name of the resource group in which to create the APIM service."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the APIM service."
  type        = string
}

variable "apim_name" {
  description = "The name of the APIM service"
  type = string
}

variable "publisher_name" {
  description = "The name of the publisher of the APIM service."
  type        = string
}

variable "publisher_email" {
  description = "The email address of the publisher of the APIM service."
  type        = string
}

variable "sku_name" {
  description = "The SKU (pricing tier) of the APIM service."
  type        = string
}

variable "sku_capacity" {
  description = "The capacity of the SKU (pricing tier) of the APIM service."
  type = number
}
