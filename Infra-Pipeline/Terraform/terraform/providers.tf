# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  # subscription_id   = "xxx"
  # tenant_id         = "xxx"
  # client_id         = "xxx"
  # client_secret     = "xxx"

}

terraform {
    backend "azurerm" {
      # resource_group_name = "thomasthorntoncloud"   
      # storage_account_name = "thomasthorntontfstate"
      # container_name = "aksdeployazuredevops"
    }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

