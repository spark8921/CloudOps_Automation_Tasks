resource "azurerm_api_management" "sample_apim" {
  name = var.apim_name
  location = var.location
  resource_group_name = var.resource_group_name
  publisher_name = var.publisher_name
  publisher_email = var.publisher_email
  sku_name = var.sku_name
}