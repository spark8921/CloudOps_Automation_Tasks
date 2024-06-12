variable "web_acl_name" {
  description = "The name of the Web ACL."
  type        = string
}

variable "ipset_config" {
  description = "Configuration for IP Set."
  type = object({
    name            = string
    ip_set_descriptors = list(object({
      type  = string
      value = string
    }))
  })
}

variable "rules" {
  description = "List of WAF rules."
  type = list(object({
    name     = string
    priority = number
    action   = string
  }))
}
