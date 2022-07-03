variable "rg_name" {}
variable "location" { default = "canadacentral" }

variable "windows_avs" { default = "windows-avs" }
variable "windows_name" {
  type    = map(string)
  default = {}

}
variable "username" { default = "mohammed2473" }
variable "password" { default = "M0h4mm3d@$&#" }
variable "wos_disk_attributes" {
  type = map(string)
  default = {
    wos_storage_account_type = "StandardSSD_LRS"
    wos_disk_size            = "127"
    wos_disk_caching         = "ReadWrite"
  }
}
variable "win_publisher" { default = "MicrosoftWindowsServer" }
variable "win_offer" { default = "WindowsServer" }
variable "win_sku" { default = "2016-Datacenter" }
variable "win_version" { default = "latest" }
variable "subnet_id" {}

variable "windows_nic" {
  default = "windows_nic"
}


