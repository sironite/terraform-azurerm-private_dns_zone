<!-- BEGIN_TF_DOCS -->
 # Private DNS zones
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone)

# Usage - Module

## Private DNS zones
```hcl
module "private_dns_zone" {
  source  = "siroe/private-dns-zone/azurerm"
  version = "X.Y.Z"

  dns_zone_name       = "example.com"
  resource_group_name = "example-resource-group"
  soa_record_enabled  = false

  tags = {
    Environment = "Production"
  }
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_zone\_name | The name of the DNS zone. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the DNS zone. | `string` | yes |
| soa\_record\_email | The email address of the person responsible for this DNS zone. | `string` | no |
| soa\_record\_enabled | Whether or not to create a SOA record for this DNS zone. | `bool` | no |
| soa\_record\_host | The host name of the name server that will be authoritative for this DNS zone. | `string` | no |
| soa\_record\_minimum\_ttl | The minimum TTL for records in this DNS zone. | `number` | no |
| soa\_record\_refresh\_time | The refresh time for this DNS zone. | `number` | no |
| soa\_record\_retry\_time | The retry time for this DNS zone. | `number` | no |
| soa\_record\_serial\_number | The serial number for this DNS zone. | `number` | no |
| soa\_record\_ttl | The TTL for this DNS zone. | `number` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_dns\_zone\_id | The ID of the private DNS zone. |
| private\_dns\_zone\_name | The name of the private DNS zone. |

## Related documentation
<!-- END_TF_DOCS -->