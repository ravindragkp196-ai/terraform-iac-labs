terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "rg_prod"
    storage_account_name = "deopsstorage"
    container_name = "deopscon"
    key = "brain.tfstate" 
  }
}

provider "azurerm" {
  features {}
}