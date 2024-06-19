module "waf" {
  source             = "./modules/waf_rules_update"
  web_acl_name       = var.web_acl_name
  scope              = var.scope
  ip_set_name        = var.ip_set_name
  ip_addresses       = var.ip_addresses
  ip_address_version = var.ip_address_version
  and_statements     = var.and_statements
}
