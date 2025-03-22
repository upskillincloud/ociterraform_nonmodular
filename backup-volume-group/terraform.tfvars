
compartment_id     = "ocid1.compartment.oc1..aaaaaaaamgamf64s7adosgyjcix6yd2gwu42gozmpp4snfgzfzmqb4equ5yq"

volume_groups = [
  {
    availability_domain = "MvNG:PHX-AD-3"
    display_name        = "VolumeGroup1"
    volume_ids         = ["ocid1.volume.oc1.phx.abyhqljtmqaiwjkjayzjwbbf3vqycjn2lxqs23fbfxeb5mqv6gvztnv5qsta", "ocid1.volume.oc1.phx.abyhqljtr7umim53yz4ltnc2q67klns4zdjdhxrtqi6qy5bgbjm4bvipsyqa"]
    backup_policy_id   = "ocid1.volumebackuppolicy.oc1.phx.amaaaaaapxqso7qawwx2u52lmfzieazgzgvxqdve3ucrxaxzd5bon7423wla"
  },
  {
    availability_domain = "MvNG:PHX-AD-3"
    display_name        = "VolumeGroup2"
    volume_ids         = ["ocid1.bootvolume.oc1.phx.abyhqljt457n5xwkgirzs3vsf3n7hzfazlpuyd6l6mwcc5pfnmrzferztoja", "ocid1.bootvolume.oc1.phx.abyhqljt4s3qfhft45wrbw3izsgzylofizvcwkbvvuax6hsc76udrrit3qxa"]
    backup_policy_id   = "ocid1.volumebackuppolicy.oc1.phx.amaaaaaapxqso7qawwx2u52lmfzieazgzgvxqdve3ucrxaxzd5bon7423wla"
  }
]
