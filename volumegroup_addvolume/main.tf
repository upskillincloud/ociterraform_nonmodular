
# Variables
variable "compartment_id" {
  description = "The OCID of the compartment."
  type        = string
  default = "ocid1.compartment.oc1..aaaaaaaamgamf64s7adosgyjcix6yd2gwu42gozmpp4snfgzfzmqb4equ5yq"
}

variable "availability_domain" {
  description = "The availability domain where the volume group will be created."
  type        = string
  default = "MvNG:PHX-AD-3"
  }

variable "volume_ids" {
  description = "List of volume OCIDs to include in the volume group."
  type        = list(string)
  default = ["ocid1.bootvolume.oc1.phx.abyhqljt457n5xwkgirzs3vsf3n7hzfazlpuyd6l6mwcc5pfnmrzferztoja", "ocid1.bootvolume.oc1.phx.abyhqljt4s3qfhft45wrbw3izsgzylofizvcwkbvvuax6hsc76udrrit3qxa"]
}

#variable "backup_policy_id" {
#  description = "OCID of the backup policy to apply."
#  type        = string
#}

# Create Volume Group
resource "oci_core_volume_group" "backup_volume_group" {
  compartment_id     = var.compartment_id
  availability_domain = var.availability_domain
  display_name       = "BackupVolumeGroup"

  source_details {
    type       = "volumeIds"
    volume_ids = var.volume_ids
  }
volume_ids         = ["ocid1.bootvolume.oc1.phx.abyhqljt457n5xwkgirzs3vsf3n7hzfazlpuyd6l6mwcc5pfnmrzferztoja", "ocid1.bootvolume.oc1.phx.abyhqljt4s3qfhft45wrbw3izsgzylofizvcwkbvvuax6hsc76udrrit3qxa","ocid1.volume.oc1.phx.abyhqljtmqaiwjkjayzjwbbf3vqycjn2lxqs23fbfxeb5mqv6gvztnv5qsta", "ocid1.volume.oc1.phx.abyhqljtr7umim53yz4ltnc2q67klns4zdjdhxrtqi6qy5bgbjm4bvipsyqa"]
}

#resource "oci_core_volume_backup_policy_assignment" "this" {
#  asset_id         = oci_core_volume_group.this.id
#  policy_id        = var.backup_policy_id
#}




