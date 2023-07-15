resource "azurerm_firewall_policy" "this" {
  name                = var.firewall_policy_name
  location            = var.location
  resource_group_name = var.resource_group_name

  base_policy_id                    = var.base_policy_id
  private_ip_ranges                 = var.private_ip_ranges
  auto_learn_private_ranges_enabled = var.auto_learn_private_ranges_enabled
  sku                               = var.sku
  threat_intelligence_mode          = var.threat_intelligence_mode
  sql_redirect_allowed              = var.sql_redirect_allowed

  dns {
    proxy_enabled = var.dns_proxy_enabled
    servers       = var.dns_servers
  }

  identity {
    type = var.identity_type
  }

  insights {
    enabled                            = var.insights_enabled
    default_log_analytics_workspace_id = var.log_analytics_workspace_id
    retention_in_days                  = var.retention_in_days
    log_analytics_workspace {
      id                = var.log_analytics_workspace_id
      firewall_location = var.location
    }
  }

  tags = var.tags
}