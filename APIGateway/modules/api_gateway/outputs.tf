output "api_id" {
  description = "ID of the API Gateway"
  value = aws_api_gateway_rest_api.api.id
}

output "api_endpoint" {
  description = "Endpoint of the API Gateway"
  value = aws_api_gateway_deployment.deployment.invoke_url
}