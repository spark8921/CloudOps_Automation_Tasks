resource "aws_api_gateway_rest_api" "api" {
  name = var.api_name
  description = "API gateway for ${var.api_name}"
}

resource "aws_api_gateway_resource" "resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id = aws_api_gateway_rest_api.api.root_resource_id
  path_part = var.resource_name
}

resource "aws_api_gateway_method" "method" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.resource.id
  http_method = var.method_type
  authorization = "None"
}

resource "aws_api_gateway_integration" "integration" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.resource.id
  http_method = aws_api_gateway_method.method.http_method
  type = "MOCK"
}

resource "aws_api_gateway_deployment" "deployment" {
  depends_on = [ aws_api_gateway_integration.integration ]
  rest_api_id = aws_api_gateway_rest_api.api.id
  stage_name = var.stage_name
}