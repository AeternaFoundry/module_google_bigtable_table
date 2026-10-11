variable "bigtable_tables" {
  description = <<EOT
Map of bigtable_tables, attributes below
Required:
    - instance_name
    - name
Optional:
    - change_stream_retention
    - deletion_policy
    - deletion_protection
    - project
    - row_key_schema
    - split_keys
    - automated_backup_policy (block):
        - frequency (optional)
        - locations (optional)
        - retention_period (optional)
    - column_family (block):
        - family (required)
        - type (optional)
    - timeouts (block):
        - create (optional)
        - update (optional)
EOT

  type = map(object({
    instance_name           = string
    name                    = string
    change_stream_retention = optional(string)
    deletion_policy         = optional(string)
    deletion_protection     = optional(string)
    project                 = optional(string)
    row_key_schema          = optional(string)
    split_keys              = optional(list(string))
    automated_backup_policy = optional(object({
      frequency        = optional(string)
      locations        = optional(list(string))
      retention_period = optional(string)
    }))
    column_family = optional(list(object({
      family = string
      type   = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bigtable_tables : (
        v.deletion_protection == null || (contains(["PROTECTED", "UNPROTECTED"], v.deletion_protection))
      )
    ])
    error_message = "must be one of: \"PROTECTED\", \"UNPROTECTED\""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

