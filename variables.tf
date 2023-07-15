variable "firewall_policy_name" {
  type        = string
  description = "The name of the firewall policy."
}

variable "location" {
  type        = string
  description = "The location of the firewall policy."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the firewall policy."
}

variable "base_policy_id" {
  type        = string
  description = "The ID of the base policy to use for the firewall policy."
  default     = null
}

variable "private_ip_ranges" {
  type        = list(string)
  description = "The list of private IP ranges to allow through the firewall policy."
  default     = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

variable "auto_learn_private_ranges_enabled" {
  type        = bool
  description = "Whether to automatically learn private IP ranges to allow through the firewall policy."
  default     = true
}

variable "sku" {
  type        = string
  description = "The SKU of the firewall policy."
  default     = "Standard"
}

variable "threat_intelligence_mode" {
  type        = string
  description = "The threat intelligence mode of the firewall policy."
  default     = "Alert"
}

variable "sql_redirect_allowed" {
  type        = bool
  description = "Whether SQL redirection is allowed through the firewall policy."
  default     = false
}

variable "dns_proxy_enabled" {
  type        = bool
  description = "Whether DNS proxy is enabled for the firewall policy."
  default     = true
}

variable "dns_servers" {
  type        = list(string)
  description = "The list of DNS servers to use for the firewall policy."
  default     = []
}

variable "identity_type" {
  type        = string
  description = "The type of identity to use for the firewall policy."
  default     = "SystemAssigned"
}

variable "insights_enabled" {
  type        = bool
  description = "Whether to enable insights for the firewall policy."
  default     = false
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "The ID of the Log Analytics workspace to use for the firewall policy."
  default     = null
}

variable "retention_in_days" {
  type        = number
  description = "The number of days to retain logs in the Log Analytics workspace."
  default     = 365
}

variable "tags" {
  type        = map(string)
  description = "The tags to apply to the firewall policy."
  default     = {}
}