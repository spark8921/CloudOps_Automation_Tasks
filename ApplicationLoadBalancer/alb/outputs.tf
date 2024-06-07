output "alb_dns_name" {
  description = "DNS name of the APPLication Load Balancer"
  value = aws_alb.alb.dns_name
}

output "alb_arn" {
  description = "ARN of the application balancer"
  value = aws_alb.alb.arn
}