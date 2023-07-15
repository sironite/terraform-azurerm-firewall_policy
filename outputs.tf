output "firewall_policy_id" {
  description = "The ID of the firewall policy."
  value       = azurerm_firewall_policy.this.id
}

output "firewall_policy_name" {
  description = "The name of the firewall policy."
  value       = azurerm_firewall_policy.this.name
}
