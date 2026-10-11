resource "google_bigtable_table" "bigtable_tables" {
  for_each = var.bigtable_tables

  instance_name           = each.value.instance_name
  name                    = each.value.name
  change_stream_retention = each.value.change_stream_retention
  deletion_policy         = each.value.deletion_policy
  deletion_protection     = each.value.deletion_protection
  project                 = each.value.project
  row_key_schema          = each.value.row_key_schema
  split_keys              = each.value.split_keys

  dynamic "automated_backup_policy" {
    for_each = each.value.automated_backup_policy != null ? [each.value.automated_backup_policy] : []
    content {
      frequency        = automated_backup_policy.value.frequency
      locations        = automated_backup_policy.value.locations
      retention_period = automated_backup_policy.value.retention_period
    }
  }

  dynamic "column_family" {
    for_each = each.value.column_family != null ? each.value.column_family : []
    content {
      family = column_family.value.family
      type   = column_family.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
    }
  }
}

