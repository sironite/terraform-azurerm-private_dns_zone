# Terraform module | AzureRM - Private DNS zones

This Terraform module is designed to create a Private DNS zones for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Private DNS zones`

```hcl
module "private_dns_zone" {
  source  = "sironite/private_dns_zone/azurerm"
  version = "X.Y.Z"

  dns_zone_name       = "example.com"
  resource_group_name = "example-resource-group"
  soa_record_enabled  = false

  tags = {
    Environment = "Production"
  }
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
