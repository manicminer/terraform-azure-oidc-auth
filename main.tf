terraform {
  required_providers {
    azurerm = {
      source  = "manicminer/azurerm"
      version = "= 10.3.0"
    }
  }
}

provider "azurerm" {
  features {}

  use_oidc = true
}

resource "azurerm_resource_group" "test" {
  name     = "aaatest-oidc-auth"
  location = "westeu"
}

