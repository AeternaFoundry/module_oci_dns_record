output "dns_records_id" {
  description = "Map of id values across all dns_records, keyed the same as var.dns_records except keys with no id are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_records_compartment_id" {
  description = "Map of compartment_id values across all dns_records, keyed the same as var.dns_records except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dns_records_domain" {
  description = "Map of domain values across all dns_records, keyed the same as var.dns_records except keys with no domain are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "dns_records_is_protected" {
  description = "Map of is_protected values across all dns_records, keyed the same as var.dns_records except keys with no is_protected are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.is_protected if v.is_protected != null }
}
output "dns_records_rdata" {
  description = "Map of rdata values across all dns_records, keyed the same as var.dns_records except keys with no rdata are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.rdata if v.rdata != null && length(v.rdata) > 0 }
}
output "dns_records_record_hash" {
  description = "Map of record_hash values across all dns_records, keyed the same as var.dns_records except keys with no record_hash are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.record_hash if v.record_hash != null && length(v.record_hash) > 0 }
}
output "dns_records_rrset_version" {
  description = "Map of rrset_version values across all dns_records, keyed the same as var.dns_records except keys with no rrset_version are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.rrset_version if v.rrset_version != null && length(v.rrset_version) > 0 }
}
output "dns_records_rtype" {
  description = "Map of rtype values across all dns_records, keyed the same as var.dns_records except keys with no rtype are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.rtype if v.rtype != null && length(v.rtype) > 0 }
}
output "dns_records_ttl" {
  description = "Map of ttl values across all dns_records, keyed the same as var.dns_records except keys with no ttl are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.ttl if v.ttl != null }
}
output "dns_records_zone_name_or_id" {
  description = "Map of zone_name_or_id values across all dns_records, keyed the same as var.dns_records except keys with no zone_name_or_id are omitted"
  value       = { for k, v in oci_dns_record.dns_records : k => v.zone_name_or_id if v.zone_name_or_id != null && length(v.zone_name_or_id) > 0 }
}

