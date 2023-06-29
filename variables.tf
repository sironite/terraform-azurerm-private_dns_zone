variable "dns_zone_name" {
  description = "The name of the DNS zone."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the DNS zone."
  type        = string
}

variable "soa_record_enabled" {
  description = "Whether or not to create a SOA record for this DNS zone."
  type        = bool
  default     = false
}

variable "soa_record_email" {
  description = "The email address of the person responsible for this DNS zone."
  type        = string
  default     = "example@example.com"
}

variable "soa_record_expire_time" {
  description = "The expire time for this DNS zone."
  type        = number
  default     = 2419200
}

variable "soa_record_minimum_ttl" {
  description = "The minimum TTL for records in this DNS zone."
  type        = number
  default     = 10
}

variable "soa_record_refresh_time" {
  description = "The refresh time for this DNS zone."
  type        = number
  default     = 3600
}

variable "soa_record_retry_time" {
  description = "The retry time for this DNS zone."
  type        = number
  default     = 300
}

variable "soa_record_ttl" {
  description = "The TTL for this DNS zone."
  type        = number
  default     = 3600
}

variable "soa_record_tags" {
  description = "A mapping of tags to assign to the SOA record."
  type        = map(string)
  default     = {}
}


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}