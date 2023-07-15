<!-- BEGIN_TF_DOCS -->
 ## Firewall Policy
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-firewall_policy/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/Azurerm/latest/docs/resources/firewall_policy)

# Usage - Module

## Firewall Policy

```hcl
module "firewall_policy" {
  source = "sironite/firewall_policy/azurerm"

  firewall_policy_name = "example-firewall-policy"
  location             = "eastus"
  resource_group_name  = "example-resource-group"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_firewall_policy.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall_policy) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| firewall\_policy\_name | The name of the firewall policy. | `string` | yes |
| location | The location of the firewall policy. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the firewall policy. | `string` | yes |
| auto\_learn\_private\_ranges\_enabled | Whether to automatically learn private IP ranges to allow through the firewall policy. | `bool` | no |
| base\_policy\_id | The ID of the base policy to use for the firewall policy. | `string` | no |
| dns\_proxy\_enabled | Whether DNS proxy is enabled for the firewall policy. | `bool` | no |
| dns\_servers | The list of DNS servers to use for the firewall policy. | `list(string)` | no |
| identity\_type | The type of identity to use for the firewall policy. | `string` | no |
| insights\_enabled | Whether to enable insights for the firewall policy. | `bool` | no |
| log\_analytics\_workspace\_id | The ID of the Log Analytics workspace to use for the firewall policy. | `string` | no |
| private\_ip\_ranges | The list of private IP ranges to allow through the firewall policy. | `list(string)` | no |
| retention\_in\_days | The number of days to retain logs in the Log Analytics workspace. | `number` | no |
| sku | The SKU of the firewall policy. | `string` | no |
| sql\_redirect\_allowed | Whether SQL redirection is allowed through the firewall policy. | `bool` | no |
| tags | The tags to apply to the firewall policy. | `map(string)` | no |
| threat\_intelligence\_mode | The threat intelligence mode of the firewall policy. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| firewall\_policy\_id | The ID of the firewall policy. |
| firewall\_policy\_name | The name of the firewall policy. |

## Related documentation
<!-- END_TF_DOCS -->