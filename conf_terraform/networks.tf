data "openstack_networking_network_v2" "public" {
    name = "public"
}

#router for the whole project
resource "openstack_networking_router_v2" "global" {
    name = "global"
    admin_state_up = true
    external_network_id = data.openstack_networking_network_v2.public.id
}

#Internal network 
resource "openstack_networking_network_v2" "network" {
    name = "net1"
    admin_state_up = true
}

# Network subnet 
resource "openstack_networking_subnet_v2" "subnet" {
    name = "net1-subnet"
    network_id = openstack_networking_network_v2.network.id
    cidr = "192.168.2.0/24"
    ip_version = 4
}

#interface between Router and subnet

resource "openstack_networking_router_interface_v2" "interface" {
  router_id = openstack_networking_router_v2.global.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}

