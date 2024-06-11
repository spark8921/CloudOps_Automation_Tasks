resource "aws_wafv2_web_acl" "sample_web_acl" {
  name = var.name
  scope = "REGIONAL"
  description = "WAF for ${var.name}"
  default_action {
    allow {
      
    }
  }
  rule {
    name = "IPBlockRule"
    priority = var.rule_priority
    action {
      block {
        
      }
    }
    statement {
      ip_set_reference_statement {
        arn = aws_wafv2_ip_set.sample_ip_set.arn
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name = var.metric_name
      sampled_requests_enabled = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name = var.metric_name
    sampled_requests_enabled = true
  }
}

resource "aws_wafv2_ip_set" "sample_ip_set" {
  name = var.ip_set_name
  scope = "REGIONAL"
  description = "IP set for blocking"
  addresses = var.blocked_ips
  ip_address_version = "IPV4"
}