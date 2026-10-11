variable "dns_records" {
  description = <<EOT
Map of dns_records, attributes below
Required:
    - domain
    - rtype
    - zone_name_or_id
Optional:
    - compartment_id
    - rdata
    - ttl
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain          = string
    rtype           = string
    zone_name_or_id = string
    compartment_id  = optional(string)
    rdata           = optional(string)
    ttl             = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

