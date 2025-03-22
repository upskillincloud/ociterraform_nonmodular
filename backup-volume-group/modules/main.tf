variable "compartment_id" {
  description = "The OCID of the compartment where the volume group will be created"
  type        = string
}

variable "availability_domain" {
  type        = string
}

variable "display_name" {
  type        = string
}

variable "volume_ids" {
  type        = list(string)
}

variable "backup_policy_id" {
  type        = string
  default     = null
}

resource "oci_core_volume_group" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.display_name

  source_details {
    type       = "volumeIds"
    volume_ids = var.volume_ids
  }
}

resource "oci_core_volume_backup_policy_assignment" "this" {
  asset_id         = oci_core_volume_group.this.id
  policy_id        = var.backup_policy_id
}

