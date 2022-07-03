output "vnet" {
  value = azurerm_virtual_network.vnet
}

output "subnet1" {
  value = azurerm_subnet.subnet.id
}
