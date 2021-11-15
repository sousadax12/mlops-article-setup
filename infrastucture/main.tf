resource "random_string" "prefix" {
  length = 4
  special = false
}

resource "azurerm_resource_group" "main" {
  name     = "mlops-${random_string.prefix.lower}-rg"
  location = var.location
}