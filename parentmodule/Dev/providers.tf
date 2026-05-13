terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sumsungrg"
    storage_account_name = "sumsumgstg1"
    container_name       = "sumsungblob"
    key                  =  "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9975b441-892c-4385-a4a6-e6201bf8df1e"
}
