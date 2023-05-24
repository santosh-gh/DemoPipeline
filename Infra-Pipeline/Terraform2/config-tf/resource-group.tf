resource "azurerm_resource_group" "sg_aks_rg" {
  name     = "${var.env}-${var.group}-${var.app}-rg"
  location = var.region
  
  tags = {
    app   = var.app
    env   = var.env
    group = var.group
  }
}