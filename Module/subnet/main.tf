resource "azurerm_subnet" "subnet_block" {
  for_each             = var.subnet-var
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}

# resource "azurerm_subnet" "subnets" {
#   for_each             = var.subnets
#   name                 = "example-subnet"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.1.0/24"]
# }
