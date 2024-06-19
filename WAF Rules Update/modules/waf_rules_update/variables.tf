variable "web_acl_name" {
  description = "Name of the Web ACL"
  type        = string
}

variable "scope" {
  description = "Scope of the WAF: CLOUDFRONT or REGIONAL"
  type        = string
}

variable "ip_set_name" {
  description = "Name of the IP Set"
  type        = string
}

variable "ip_addresses" {
  description = "List of IP addresses to block"
  type        = list(string)
}

variable "ip_address_version" {
  description = "IP address version (IPV4 or IPV6)"
  type        = string
}

variable "and_statements" {
  description = "List of and statements for the rule"
  type        = list(object({
    rule_name     = string
    rule_priority = number
    statements    = list(object({
      header_name  = string
      header_value = string
    }))
  }))
}
