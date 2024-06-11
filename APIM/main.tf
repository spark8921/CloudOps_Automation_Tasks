resource "azurerm_resource_group" "sample" {
  name = var.resource_group_name
  location = var.location
}

module "apim" {
  source = "./modules/apim"
  resource_group_name = azurerm_resource_group.sample.name
  location = azurerm_resource_group.sample.location
  publisher_email = var.publisher_email
  publisher_name = var.publisher_name
  sku_name = var.sku_name
  sku_capacity = var.sku_capacity
}