region   = "us-west-2"
web_acl_name = "example-web-acl"

ipset_config = {
  name = "tfIPSet"
  ip_set_descriptors = [
    {
      type  = "IPV4"
      value = "192.0.7.0/24"
    }
  ]
}

rules = [
  {
    name       = "example-rule-1"
    priority   = 1
    action     = "ALLOW"
  },
  {
    name       = "example-rule-2"
    priority   = 2
    action     = "BLOCK"
  }
]
