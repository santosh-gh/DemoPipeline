module "vnet" {
  source              = "Azure/vnet/azurerm"
  version             = "~> 2.6.0"
  resource_group_name = azurerm_resource_group.sg_aks_rg.name
  vnet_name           = "${var.env}-${var.group}-${var.app}-${var.vnet_name}"
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names

  tags = {
    env    = var.env
    group  = var.group
    app    = var.app
  }
  depends_on = [azurerm_resource_group.sg_aks_rg]
}