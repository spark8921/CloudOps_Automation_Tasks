# Define IP Set 
resource "aws_wafv2_ip_set" "ip_set" {
  name = var.ip_set_name
  description = "IP Set for blocking IPs"
  scope = var.scope
  ip_address_version = var.ip_address_version
  addresses = var.ip_addresses
}

# Define WAF Web ACL
resource "aws_wafv2_web_acl" "web_acl" {
  name        = var.web_acl_name
  description = "Web ACL to protect application"
  scope       = var.scope
  default_action {
    allow {}
  }

  visibility_config {
    sampled_requests_enabled  = true
    cloudwatch_metrics_enabled = true
    metric_name               = var.web_acl_name
  }

  dynamic "rule" {
    for_each = var.and_statements
    content {
      name     = rule.value.rule_name
      priority = rule.value.rule_priority

      action {
        block {}
      }

      statement {
        and_statement {
          dynamic "statement" {
            for_each = rule.value.statements
            content {
              byte_match_statement {
                search_string = statement.value.header_value
                field_to_match {
                  single_header {
                    name = lower(statement.value.header_name)
                  }
                }
                text_transformation {
                  priority = 0
                  type     = "NONE"
                }
                positional_constraint = "EXACTLY"
              }
            }
          }
        }
      }
      visibility_config {
        sampled_requests_enabled  = true
        cloudwatch_metrics_enabled = true
        metric_name               = rule.value.rule_name
      }
    }
  }
}
