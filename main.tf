terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.7.0"
    }
  }
}

provider "azurerm" {
  
}

resource "azurerm_resource_group" "dev-rg" {
  name = "dev-rg-1"
  location = "East US2"

}

resource "azurerm_storage_account" "dev-stor-acc" {
  name = "dev-storacc-1"
  resource_group_name = azurerm_resource_group.dev-rg.name
  location                 = azurerm_resource_group.dev-rg.id
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  
}
