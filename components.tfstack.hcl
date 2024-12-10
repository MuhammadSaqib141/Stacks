 component "demo_resource_group" {
  source = "./modules/resoruce_group"

  inputs = {

    environment = var.demo_resource_group.environment
    location    = var.demo_resource_group.location
    workload    = "compute"
    tags        = var.demo_resource_group.tags
  }

  providers = {
    azurerm = provider.azurerm.this
  }
}

component "demo_virtual_network" {
  source = "./modules/vnet"

  inputs = {

    location            = component.demo_resource_group.location
    cidr_range          = var.demo_virtual_network.cidr_range
    tags                = var.demo_virtual_network.tags
    resource_group_name = component.demo_resource_group.name
    environment         = component.demo_resource_group.environment
    workload            = "demo"
  }

  providers = {
    azurerm = provider.azurerm.this
  }
}