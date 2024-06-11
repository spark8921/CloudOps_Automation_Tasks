variable "name" {
  description = "the name of the WAF Web ACL"
  type = string
}

variable "metric_name" {
  description = "The name of the metric for the Web ACL"
  type = string
}

variable "ip_set_name" {
  description = "The name of the IP set for the Web ACL"
  type = string
}

variable "rule_priority" {
  description = "The priority of the rule for the Web ACL in the WAF"
  type = number
}

variable "blocked_ips" {
  description = "A list of IP addresses t block"
  type = list(string)
}