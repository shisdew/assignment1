output "vm_hostname_main" {
  value = module.linux.linux_vm_hostname
}
output "private_ips_linux" {
  value = module.linux.linux_private_ip
}
output "public_ips_linux" {
  value = module.linux.linux_public_ip
}
# Windows output
output "vm_hostname_main_windows" {
  value = module.vmwindows.windows_hostname
}
output "private_ips_windows" {
  value = module.vmwindows.windows_private_ip
}
output "public_ips_windows" {
  value = module.vmwindows.windows_public_ip
}
output "resource_group_name" {
  value = module.resource_group.rg_name
}
# common output
output "Log-Workspace" {
  value = module.common.log_analytics_workspace
}
output "Storage_Account" {
  value = module.common.storage_account
}
output "storage_container" {
  value = module.common.storage_container
}
# network
output "vnet" {
  value = module.network.vnet
}
output "Subnet1" {
  value = module.network.subnet1
}
# database
output "post_server" {
  value = module.database.post_server
}
