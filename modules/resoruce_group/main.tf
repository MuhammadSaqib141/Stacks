locals {
  location_map = {
    "Canada Central" = "Canada Central"
    "canadacentral"  = "Canada Central"
    "Canada East"    = "Canada East"
    "canadaeast"     = "Canada East"
  }

  location_code_map = {
    "Canada Central" = "cc"
    "canadacentral"  = "cc"
    "Canada East"    = "ce"
    "canadaeast"     = "ce"
  }

  location      = local.location_map[var.location]
  location_code = local.location_code_map[var.location]
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.name_override == null ? lower(format("rg-%s-%s-%s", local.location_code, var.environment, var.workload)) : var.name_override
  location = var.location
  tags     = var.tags
}
