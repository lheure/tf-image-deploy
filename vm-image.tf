data "azurerm_resource_group" "rg-zconverter-work" {
  #name = "/subscriptions/2b9d8a3b-eb6c-455c-a6b8-71c72a38ef37/resourceGroups/rg-zconverter-work/providers/Microsoft.Compute/images/s1uw2-prx001-custom-image"
  name = "rg-zconverter-work"
}

data "azurerm_image" "s1uw2-prx001-custom-image" { 
    name = "s1uw2-prx001-custom-image" 
    resource_group_name = "${data.azurerm_resource_group.rg-zconverter-work.name}"
}

output "s1uw2-prx001-custom-image_id" {
    value = "${data.azurerm_image.s1uw2-prx001-custom-image.id}"
}

# data "azurerm_image" "s1uw2-papi001" { name = "s1uw2-papi001" }







# data "azurerm_image" "s1uw2-pdbq001" { name = "s1uw2-pdbq001" }

# data "azurerm_image" "s1uw2-pext001" { name = "s1uw2-pext001" }

# data "azurerm_image" "s1uw2-pmat001" { name = "s1uw2-pmat001" }

# data "azurerm_image" "s1uw2-pkbrk001" { name = "s1uw2-pkbrk001" }

# data "azurerm_image" "s1uw2-pkidx001" { name = "s1uw2-pkidx001" }
# data "azurerm_image" "s1uw2-pksch101" { name = "s1uw2-pksch101" }
# data "azurerm_image" "s1uw2-pksch102" { name = "s1uw2-pksch102" }
# data "azurerm_image" "s1uw2-doco001" { name = "s1uw2-doco001" }
