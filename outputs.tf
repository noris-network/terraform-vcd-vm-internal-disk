output "vcd_internal_disk" {
  description = "Disk Information."
  value = {
    id         = try(vcd_vm_internal_disk.vm_internal_disk.id, null)
    size_in_mb = try(vcd_vm_internal_disk.vm_internal_disk.size_in_mb, null)
  }
}
