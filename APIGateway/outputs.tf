output "api_id" {
  description = "ID of the API gateway"
  value = module.api_gateway.api_id
}

output "api_endpoint" {
  description = "Endpoint of the API gateway"
  value = module.api_gateway.api_endpoint
}