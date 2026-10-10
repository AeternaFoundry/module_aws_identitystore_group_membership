variable "identitystore_group_memberships" {
  description = <<EOT
Map of identitystore_group_memberships, attributes below
Required:
    - group_id
    - identity_store_id
    - member_id
Optional:
    - region
EOT

  type = map(object({
    group_id          = string
    identity_store_id = string
    member_id         = string
    region            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.identitystore_group_memberships : (
        length(v.group_id) >= 1 && length(v.group_id) <= 47
      )
    ])
    error_message = "must be between 1 and 47 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_group_memberships : (
        length(v.identity_store_id) >= 1 && length(v.identity_store_id) <= 36
      )
    ])
    error_message = "must be between 1 and 36 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_group_memberships : (
        length(v.member_id) >= 1 && length(v.member_id) <= 47
      )
    ])
    error_message = "must be between 1 and 47 characters"
  }
}

