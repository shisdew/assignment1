locals {
  common_tags = {
    Name            = "Mohammed Dewan"
    Project         = "Automation Project-Assignment 1"
    ExpirationDate  = "2022-07-04"
    Email           = "shisdew@gmail.com"
    Enviroment      = "Lab"
  }
}
variable "rg_name" { 
  default = "rg_name" 
}
variable "location" {
    default = ""
}
variable "linux_network_interface_id" {
    default = ""
}
variable "linux_network_interface_name" {
    default = ""
}
variable "linux_pip_id" {
    default = ""
}

variable "linux_name" {
  type    = map(string)
  default = {}
}
variable "loadbalancer-pubip" {
    default = "2473-loadbalancer-pubip"
}

variable "loadbalancer" {
    type = map(string) 
    default = {
        name    = "2473-loadbalancer"
        frontend_ip_configuration = "pubip-2473"
    }
}

variable "backend_address_pool" {
    default = "2473-backendaddresspool"
}

variable "loadbalancer_pool_association" {
    default = "2473-loadbalancer-pool-association"
}

variable "loadbalancer_rule" {
    type = map(string) 
    default = {
        name = "2473-loadbalancer-rule"
        protocol = "Tcp"
        frontend_port = 3389
        backend_port = 3389
        frontend_ip_configuration_name = "PublicIPAddress"
    }
}

variable "loadbalancer_probe" {
    type = map(string)
    default = {
        name                = "2473-loadbalancer-probe"
        protocol            = "Tcp"
        port                = 80
        interval_in_seconds = 5
        number_of_probes    = 2
    }
}