data "vcd_vapp" "vapp" {
  name = var.vapp_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

data "vcd_storage_profile" "storage_profile" {
  name = var.storage_profile_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

resource "vcd_vm_internal_disk" "vm_internal_disk" {
  org             = var.vdc_org_name
  vdc             = var.vdc_name
  vapp_name       = data.vcd_vapp.vapp.name
  vm_name         = var.vm_name
  bus_type        = var.bus_type
  size_in_mb      = var.size_in_mb
  bus_number      = var.bus_number
  unit_number     = var.unit_number
  iops            = var.iops
  allow_vm_reboot = var.allow_vm_reboot
  storage_profile = data.vcd_storage_profile.storage_profile.name
}
