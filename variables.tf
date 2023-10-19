variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "vdc_name" {
  description = "The name of VDC to use."
  type        = string
  default     = null
}

variable "vapp_name" {
  description = "(Required) The vAPP this VM internal disk belongs to."
  type        = string
}

variable "vm_name" {
  description = "(Required) VM in vAPP in which internal disk is created."
  type        = string
}

variable "size_in_mb" {
  description = "(Required, v3.0+) Size of disk in MB."
  type        = number
}

variable "bus_type" {
  description = "(Optional) Disk bus type. Values can be: IDE, SCSI, SATA, (v3.6+) NVME. Note When the disk type is IDE then VM is required to be powered off."
  type        = string
  default     = null
}

variable "bus_number" {
  description = "(Required) The number of the SCSI or IDE controller itself."
  type        = number
}

variable "unit_number" {
  description = "(Required) The device number on the SCSI or IDE controller of the disk."
  type        = number
}

variable "iops" {
  description = "(Optional) Specifies the IOPS for the disk. Default is 0."
  type        = number
  default     = 0
}

variable "storage_profile_name" {
  description = "Name of Storage Profile."
  type        = string
}

variable "allow_vm_reboot" {
  description = "(Optional) Powers off VM when changing any attribute of an IDE disk or unit/bus number of other disk types, after the change is complete VM is powered back on. Without this setting enabled, such changes on a powered-on VM would fail. Defaults to false."
  type        = bool
  default     = false
}
