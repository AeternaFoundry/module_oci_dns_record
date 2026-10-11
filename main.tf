resource "oci_dns_record" "dns_records" {
  for_each = var.dns_records

  domain          = each.value.domain
  rtype           = each.value.rtype
  zone_name_or_id = each.value.zone_name_or_id
  compartment_id  = each.value.compartment_id
  rdata           = each.value.rdata
  ttl             = each.value.ttl

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

