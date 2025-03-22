module "volume_groups" {
  source = "./modules"

  for_each = { for v in var.volume_groups : v.display_name => v }

  compartment_id      = var.compartment_id
  availability_domain = each.value.availability_domain
  display_name        = each.value.display_name
  volume_ids          = each.value.volume_ids
  backup_policy_id    = lookup(each.value, "backup_policy_id", null)
}
