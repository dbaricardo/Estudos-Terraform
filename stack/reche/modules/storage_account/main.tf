#Criando Storage Account
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_name
  resource_group_name      = var.resource_group
  location                 = var.storage_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
  min_tls_version = "TLS1_2"
}