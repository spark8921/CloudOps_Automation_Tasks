module "api_gateway" {
  source = "./modules/api_gateway"
  api_name = var.api_name
  resource_name = var.resource_name
  method_type = var.method_type
  stage_name = var.stage_name
}