module "waf" {
  source = "./modules/waf"
  name = var.waf_name
  metric_name = var.metric_name
  ip_set_name = var.ip_set_name
  rule_priority = var.rule_priority
  blocked_ips = var.blocked_ips
}