resource "azurerm_web_application_firewall_policy" "appfirewall" {
  name                = var.firewall_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

#   custom_rules {
#     name      = "OnlyUSandCanada"
#     priority  = 1
#     rule_type = "MatchRule"

#     match_conditions {
#       match_variables {
#         variable_name = "RemoteAddr"
#       }
#       operator           = "GeoMatch"
#       negation_condition = true
#       match_values       = ["CA", "US"]
#     }
#     action = "Block"
#   }

  policy_settings {
    enabled = true
    mode    = "Detection"
    # Global parameters
    request_body_check          = true
    max_request_body_size_in_kb = 128
    file_upload_limit_in_mb     = 100
  }

  managed_rules {
     managed_rule_set {
      type    = "OWASP"
      version = "3.1"
      rule_group_override {
        rule_group_name = "REQUEST-920-PROTOCOL-ENFORCEMENT"
        disabled_rules = [
          "920300",
          "920440"
        ]
      }
    }
  }
}