resource "azurerm_resource_group" "sample" {
  name = var.resource_group_name
  location = var.location
}

module "apim" {
 source = "./modules/apim"
 resource_group_name = azurerm_resource_group.sample.name
 location = azurerm_resource_group.sample.location
 apim_name = var.apim_name
 publisher_name = var.publisher_name
 publisher_email = var.publisher_email
 sku_name = var.sku_name
 sku_capacity = var.sku_capacity
}