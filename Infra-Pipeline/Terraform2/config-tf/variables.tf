## Global Variables ##

variable "region" {
  type    = string
  default = "uksouth"
}

variable "env" {
  type    = string
  default = "poc"
}

variable "group" {
  type    = string
  default = "devops"
}

variable "app" {
  type    = string
  default = "aks"
}

## VNET variables ##

variable "vnet_name" {
  description = "Name of the vnet to create"
  type        = string
  default     = "vnet"
}

variable "address_space" {
  type    = list(string)
  description = "Azure vnet address space" 
}

variable "subnet_prefixes" {
  type    = list(string)
  description = "Azure vnet subnets" 
}

variable "subnet_names" {
  type    = list(string)
  description = "Azure vnet subnet names in order" 
  default = ["subnet1", "subnet2", "subnet3"]
}

## AKS Variables ##

variable "net_profile_service_cidr" {
  description = "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
  type        = string
  default     = "10.0.0.0/16"
}

variable "net_profile_dns_service_ip" {
description = "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
  type        = string
  default     = "10.0.0.10"
}

variable "net_profile_docker_bridge_cidr" {
  description = "(Optional) IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created."
  type        = string
  default     = "172.17.0.1/16"
}