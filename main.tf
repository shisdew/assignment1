module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = "rg_name"
  location = "CanadaCentral"
}
module "resource_group_name" {
  source   = "./modules/resource_group"
  rg_name  = "rg_name"
  location = "CanadaCentral"
}
module "common" {
  source = "./modules/common"
  rg_name = module.resource_group_name.rg_name
}
module "database" {
  source   = "./modules/database"
  rg_name  = module.resource_group_name.rg_name
  location = module.resource_group_name.location
  depends_on = [
    module.loadbalancer
  ]
}
module "linux" {
  source   = "./modules/linux"
  rg_name  = module.resource_group.rg_name
  location = "CanadaCentral"
  linux_name = {
    "group1-linux-vm1" = "Standard_B1s"
    "group1-linux-vm2" = "Standard_B1s"
  }
  subnet_id = module.network.subnet1
}
module "network" {
  source   = "./modules/network"
  rg_name  = module.resource_group.rg_name
  location = "CanadaCentral"
}
module "vmwindows" {
  source = "./modules/vmwindows"
  windows_name = {
    "group1-win-vm1" = "Standard_B1s"
  }
  subnet_id = module.network.subnet1
  rg_name   = module.resource_group.rg_name
}
module "loadbalancer" {

  source      = "./modules/loadbalancer"
  location    = "CanadaCentral"
  #subnet_id   = module.network.subnet1
  #linux_nic   = module.linux.linux_nic
  #windows_nic = module.vmwindows.windows_nic
  depends_on = [
    module.linux,
    module.vmwindows
  ]
}