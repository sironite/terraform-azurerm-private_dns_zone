variable "dns_zone_name" {
  description = "The name of the DNS zone."
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the DNS zone."
  type = string
}

variable "soa_record_enabled" {
  description = "Whether or not to create a SOA record for this DNS zone."
  type    = bool
  default = false
}

variable "soa_record_email" {
  description = "The email address of the person responsible for this DNS zone."
  type    = string
  default = "example@example.com"
}

variable "soa_record_host" {
  description = "The host name of the name server that will be authoritative for this DNS zone."
  type    = string
  default = "@"
}

variable "soa_record_minimum_ttl" {
  description = "The minimum TTL for records in this DNS zone."
  type    = number
  default = 3600
}

variable "soa_record_refresh_time" {
  description = "The refresh time for this DNS zone."
  type    = number
  default = 3600
}

variable "soa_record_retry_time" {
  description = "The retry time for this DNS zone."
  type    = number
  default = 600
}

variable "soa_record_serial_number" {
  description = "The serial number for this DNS zone."
  type    = number
  default = 1
}

variable "soa_record_ttl" {
  description = "The TTL for this DNS zone."
  type    = number
  default = 3600
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type    = map(string)
  default = {}
}