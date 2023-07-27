# Terraform module | AzureRM - Firewall Policy

This Terraform module is designed to create a Firewall Policy for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Firewall Policy`

```hcl

module "firewall_policy" {
  source = "sironite/firewall_policy/azurerm"

  firewall_policy_name = "example-firewall-policy"
  location             = "eastus"
  resource_group_name  = "example-resource-group"
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
