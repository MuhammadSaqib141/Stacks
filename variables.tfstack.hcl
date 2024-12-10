# variable "azurerm_provider" {
#   type = object({
#     identity_token = string
#     client_id = string
#     subscription_id = string
#     tenant_id = string
#   })
#   ephemeral = true
# }



variable "demo_resource_group" {
  type = object({
    environment = string
    location    = string
    tags        = map(string)
  })
  
}


variable "demo_virtual_network" {
  type = object({
    cidr_range = string
    tags       = map(string)
  })
  
}
