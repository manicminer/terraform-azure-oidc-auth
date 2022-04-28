terraform {
  backend "azurerm" {
    resource_group_name  = "tbamford-auth-testing-donotdelete_group"
    storage_account_name = "tbamfordauthtestingdonot"
    container_name       = "backend-oidc"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "manicminer/azurerm"
      version = "= 10.4.0"
    }
  }
}

provider "azurerm" {
  features {}

  use_oidc = true
}

resource "azurerm_resource_group" "test" {
  name     = "aaatest-oidc-auth"
  location = "westeurope"
}

