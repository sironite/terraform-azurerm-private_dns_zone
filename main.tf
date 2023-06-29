resource "azurerm_private_dns_zone" "this" {
  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name

  dynamic "soa_record" {
    for_each = var.soa_record_enabled ? [1] : []
    content {
      email        = var.soa_record_email
      expire_time  = var.soa_record_expire_time
      minimum_ttl  = var.soa_record_minimum_ttl
      refresh_time = var.soa_record_refresh_time
      retry_time   = var.soa_record_retry_time
      ttl          = var.soa_record_ttl
      tags         = var.soa_record_tags
    }
  }

  tags = var.tags

}