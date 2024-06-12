resource "aws_wafv2_ip_set" "ipset" {
  name               = var.ipset_config.name
  scope              = "REGIONAL"
  description        = "IP Set for WAF"
  ip_address_version = "IPV4"

  addresses = [for desc in var.ipset_config.ip_set_descriptors : desc.value]
}

resource "aws_wafv2_web_acl" "this" {
  name        = var.web_acl_name
  scope       = "REGIONAL"
  description = "WAF Web ACL"
  default_action {
    allow {}
  }

  dynamic "rule" {
    for_each = var.rules
    content {
      name     = rule.value.name
      priority = rule.value.priority
      visibility_config {
        cloudwatch_metrics_enabled = true
        metric_name                = rule.value.name
        sampled_requests_enabled   = true
      }

      statement {
        ip_set_reference_statement {
          arn = aws_wafv2_ip_set.ipset.arn
        }
      }

      dynamic "action" {
        for_each = [rule.value.action]
        content {
          dynamic "allow" {
            for_each = rule.value.action == "ALLOW" ? [1] : []
            content {}
          }

          dynamic "block" {
            for_each = rule.value.action == "BLOCK" ? [1] : []
            content {}
          }

          dynamic "count" {
            for_each = rule.value.action == "COUNT" ? [1] : []
            content {}
          }
        }
      }
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = var.web_acl_name
    sampled_requests_enabled   = true
  }
}
