output "bigtable_tables_id" {
  description = "Map of id values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no id are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigtable_tables_automated_backup_policy" {
  description = "Map of automated_backup_policy values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no automated_backup_policy are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => one(v.automated_backup_policy) if v.automated_backup_policy != null && length(v.automated_backup_policy) > 0 }
}
output "bigtable_tables_change_stream_retention" {
  description = "Map of change_stream_retention values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no change_stream_retention are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.change_stream_retention if v.change_stream_retention != null && length(v.change_stream_retention) > 0 }
}
output "bigtable_tables_column_family" {
  description = "Map of column_family values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no column_family are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.column_family if v.column_family != null && length(v.column_family) > 0 }
}
output "bigtable_tables_deletion_policy" {
  description = "Map of deletion_policy values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigtable_tables_deletion_protection" {
  description = "Map of deletion_protection values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no deletion_protection are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.deletion_protection if v.deletion_protection != null && length(v.deletion_protection) > 0 }
}
output "bigtable_tables_instance_name" {
  description = "Map of instance_name values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no instance_name are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.instance_name if v.instance_name != null && length(v.instance_name) > 0 }
}
output "bigtable_tables_name" {
  description = "Map of name values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no name are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigtable_tables_project" {
  description = "Map of project values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no project are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigtable_tables_row_key_schema" {
  description = "Map of row_key_schema values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no row_key_schema are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.row_key_schema if v.row_key_schema != null && length(v.row_key_schema) > 0 }
}
output "bigtable_tables_split_keys" {
  description = "Map of split_keys values across all bigtable_tables, keyed the same as var.bigtable_tables except keys with no split_keys are omitted"
  value       = { for k, v in google_bigtable_table.bigtable_tables : k => v.split_keys if v.split_keys != null && length(v.split_keys) > 0 }
}

