output "identitystore_group_memberships_id" {
  description = "Map of id values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identitystore_group_memberships_group_id" {
  description = "Map of group_id values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "identitystore_group_memberships_identity_store_id" {
  description = "Map of identity_store_id values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.identity_store_id if v.identity_store_id != null && length(v.identity_store_id) > 0 }
}
output "identitystore_group_memberships_member_id" {
  description = "Map of member_id values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.member_id if v.member_id != null && length(v.member_id) > 0 }
}
output "identitystore_group_memberships_membership_id" {
  description = "Map of membership_id values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.membership_id if v.membership_id != null && length(v.membership_id) > 0 }
}
output "identitystore_group_memberships_region" {
  description = "Map of region values across all identitystore_group_memberships, keyed the same as var.identitystore_group_memberships"
  value       = { for k, v in aws_identitystore_group_membership.identitystore_group_memberships : k => v.region if v.region != null && length(v.region) > 0 }
}

