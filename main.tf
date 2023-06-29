resource "azurerm_private_dns_zone" "this" {
    name = var.dns_zone_name
    resource_group_name = var.resource_group_name

    dynamic "soa_record" {
        for_each = var.soa_record_enabled ? [1] : []
        content {
            email = var.soa_record_email
            host = var.soa_record_host
            minimum_ttl = var.soa_record_minimum_ttl
            refresh_time = var.soa_record_refresh_time
            retry_time = var.soa_record_retry_time
            serial_number = var.soa_record_serial_number
            ttl = var.soa_record_ttl
        }
    }

    tags = var.tags
  
}