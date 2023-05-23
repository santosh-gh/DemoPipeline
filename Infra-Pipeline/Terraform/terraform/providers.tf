# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  # subscription_id   = "b798c28b-e334-4ecf-b338-ec314ced3616"
  # tenant_id         = "ec3ded2c-750b-415f-b382-96464321f3cf"
  # client_id         = "30be1e26-6c49-4a06-a3ca-d34c8f34e0ee"
  # client_secret     = "ASQ8Q~GMnlt6SEkqHfBDiP8Faf~LACWDjvV2da_N"

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

