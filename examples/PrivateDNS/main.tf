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