output "web_acl_arn" {
  description = "ARN of the Web ACL"
  value       = module.waf.web_acl_arn
}