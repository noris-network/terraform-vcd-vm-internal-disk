# terraform-vcd-vm-internal-disk

Terraform module which manages VM internal disk ressources for existing VMs on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_vm_internal_disk.vm_internal_disk](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/vm_internal_disk) | resource |
| [vcd_storage_profile.storage_profile](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/storage_profile) | data source |
| [vcd_vapp.vapp](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/vapp) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bus_number"></a> [bus\_number](#input\_bus\_number) | (Required) The number of the SCSI or IDE controller itself. | `number` | n/a | yes |
| <a name="input_size_in_mb"></a> [size\_in\_mb](#input\_size\_in\_mb) | (Required, v3.0+) Size of disk in MB. | `number` | n/a | yes |
| <a name="input_storage_profile_name"></a> [storage\_profile\_name](#input\_storage\_profile\_name) | Name of Storage Profile. | `string` | n/a | yes |
| <a name="input_unit_number"></a> [unit\_number](#input\_unit\_number) | (Required) The device number on the SCSI or IDE controller of the disk. | `number` | n/a | yes |
| <a name="input_vapp_name"></a> [vapp\_name](#input\_vapp\_name) | (Required) The vAPP this VM internal disk belongs to. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | (Required) VM in vAPP in which internal disk is created. | `string` | n/a | yes |
| <a name="input_allow_vm_reboot"></a> [allow\_vm\_reboot](#input\_allow\_vm\_reboot) | (Optional) Powers off VM when changing any attribute of an IDE disk or unit/bus number of other disk types, after the change is complete VM is powered back on. Without this setting enabled, such changes on a powered-on VM would fail. Defaults to false. | `bool` | `false` | no |
| <a name="input_bus_type"></a> [bus\_type](#input\_bus\_type) | (Optional) Disk bus type. Values can be: IDE, SCSI, SATA, (v3.6+) NVME. Note When the disk type is IDE then VM is required to be powered off. | `string` | `null` | no |
| <a name="input_iops"></a> [iops](#input\_iops) | (Optional) Specifies the IOPS for the disk. Default is 0. | `number` | `0` | no |
| <a name="input_vdc_name"></a> [vdc\_name](#input\_vdc\_name) | The name of VDC to use. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vcd_internal_disk"></a> [vcd\_internal\_disk](#output\_vcd\_internal\_disk) | Disk Information. |
<!-- END_TF_DOCS -->
