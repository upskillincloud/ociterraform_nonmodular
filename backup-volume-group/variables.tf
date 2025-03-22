variable "compartment_id" {
  type        = string
}

variable "volume_groups" {
  type = list(object({
    availability_domain = string
    display_name        = string
    volume_ids         = list(string) # List of Volume OCIDs within the group
    backup_policy_id   = optional(string) # Backup policy (optional)
  }))
}
