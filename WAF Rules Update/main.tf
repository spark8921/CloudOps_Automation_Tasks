module "waf" {
  source       = "./modules/waf_rules_update"
  web_acl_name = var.web_acl_name
  rules        = var.rules
  ipset_config = var.ipset_config
}
