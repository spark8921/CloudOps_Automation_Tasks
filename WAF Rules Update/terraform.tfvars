region             = "us-east-1"
web_acl_name       = "my-web-acl-1"
scope              = "REGIONAL"
ip_set_name        = "my-ip-set-1"
ip_addresses       = ["192.168.0.1/32", "10.0.0.1/32"] #Update with the desired IPs
ip_address_version = "IPV4"
and_statements = [
  {
    rule_name     = "IPBlockRule1"
    rule_priority = 1
    statements = [
      {
        header_name  = "x-custom-header-1"
        header_value = "block-header-1"
      },
      {
        header_name  = "x-custom-header-2"
        header_value = "block-header-2"
    }]
  },
  {
    rule_name     = "IPBlockRule2"
    rule_priority = 2
    statements = [{
      header_name  = "x-custom-header-3"
      header_value = "block-header-3"
      },
      {
        header_name  = "x-custom-header-4"
        header_value = "block-header-4"
      }
    ]
  }
]
