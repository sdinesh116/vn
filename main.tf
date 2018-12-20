provider "azurerm" {
        subscription_id = "${var.subscription_id}"
        client_id       = "${var.client_id}"
        client_secret   = "${var.client_secret}"
        tenant_id       = "${var.tenant_id}"
}

#Create a Virtual Network
resource "azurerm_virtual_network" "my_vnet"{
        name                            = "${var.vnet}"
        address_space                   = ["${var.vnet-cidr}"]
        location                        = "${var.location}"
        resource_group_name             = "${var.resource_group}"
}
