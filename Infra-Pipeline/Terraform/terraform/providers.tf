# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id   = "b798c28b-e334-4ecf-b338-ec314ced3616"
  tenant_id         = "ec3ded2c-750b-415f-b382-96464321f3cf"
  client_id         = "8a3e03b5-235f-43e8-8a46-60aaa1bde43a"
  client_secret     = "~uq8Q~vGpq2Mth2aUkgDmoy3fSWnA_0P02_Seapj"

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

