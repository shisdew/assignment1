resource "azurerm_postgresql_server" "post_server" {
  name                = "postgresql-server-group1"
  location            = var.location
  resource_group_name = var.rg_name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "pgtestadmin"
  administrator_login_password = "P@test#12345"
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}
resource "azurerm_postgresql_database" "database" {
  name                = "group3db"
  resource_group_name = var.rg_name
  server_name         = azurerm_postgresql_server.post_server.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
