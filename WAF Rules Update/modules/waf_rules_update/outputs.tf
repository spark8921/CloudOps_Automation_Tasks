output "web_acl_arn" {
  description = "ARN of the Web ACL"
  value = aws_wafv2_web_acl.web_acl.arn
}

output "ip_set_arn" {
  description = "ARN of the IP set"
  value = aws_wafv2_ip_set.ip_set.arn
}
