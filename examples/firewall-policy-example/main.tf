module "firewall_policy" {
  source  = "sironite/firewall_policy/azurerm"
  version = "x.x.x"

  firewall_policy_name = "example-firewall-policy"
  location             = "eastus"
  resource_group_name  = "example-resource-group"
}