variable "region" {
  description = "The region where AWS resources are created"
  type = string
}

variable "waf_name" {
  description = "The name of the WAF Web ACL"
  type = string
}

variable "metric_name" {
  description = "The name of the metric for the Web ACL"
  type = string
}

variable "ip_set_name" {
  description = "The name of the IP set"
  type = string
}

variable "rule_priority" {
  description = "The priority of the rule in the WAF"
  type = number
}

variable "blocked_ips" {
  description = "A list of IP addresses to block"
  type = list(string)
}

