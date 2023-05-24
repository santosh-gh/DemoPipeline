data "azuread_group" "admin-team" {
  display_name     = "<your-admin-group>"
}

module "aks" {
  source                           = "Azure/aks/azurerm"
  version                          = "4.14.0"
  resource_group_name              = azurerm_resource_group.sg_aks_rg.name
  kubernetes_version               = "1.22.6"
  orchestrator_version             = "1.22.6"
  prefix                           = "${var.env}-${var.group}-${var.app}"
  cluster_name                     = "${var.env}-${var.group}-${var.app}-cluster"
  vnet_subnet_id                   = module.vnet.vnet_subnets[0]
  network_plugin                   = "azure"
  os_disk_size_gb                  = 50
  sku_tier                         = "Paid" # defaults to Free
  enable_role_based_access_control = true
  rbac_aad_admin_group_object_ids  = [data.azuread_group.admin-team.id]
  rbac_aad_managed                 = true
  //enable_azure_policy              = true # calico.. etc
  enable_auto_scaling              = true
  enable_host_encryption           = true
  agents_min_count                 = 1
  agents_max_count                 = 2
  agents_count                     = null # Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes.
  agents_max_pods                  = 100
  agents_pool_name                 = "agentpool"
  agents_availability_zones        = ["1", "2", "3"]
  agents_type                      = "VirtualMachineScaleSets"
  agents_size                      = "Standard_B2ms"
  
  agents_labels = {
    "agentpool" : "agentpool"
  }

  
  agents_tags = {
    "Agent" : "defaultnodepoolagent"
  }
  
  net_profile_dns_service_ip       = var.net_profile_dns_service_ip
  net_profile_docker_bridge_cidr   = var.net_profile_docker_bridge_cidr
  net_profile_service_cidr         = var.net_profile_service_cidr
   
  depends_on = [module.vnet]
}
