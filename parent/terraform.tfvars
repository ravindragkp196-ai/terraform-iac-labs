resource_groups = {
  "rgs" = {
    name     = "Tata-RG"
    location = "centralindia"
  }
}
vnet = {
  "vnets" = {
    name                = "Tata-Vnet"
    location            = "centralindia"
    resource_group_name = "Tata-RG"
    address_space       = ["10.0.0.0/16"]
  }
}
