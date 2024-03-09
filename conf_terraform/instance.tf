data "openstack_images_image_v2" "image" {
    name = "official-debian-11"
    tags = ["latest"]
}

resource "openstack_compute_instance_v2" "basic" {
    name = "basic"
    image_id = data.openstack_images_image_v2.image.id
    flavor_name = "v1.m2.d10"
    security_groups = ["default"]
    network {
      name = openstack_networking_network_v2.network.name
    }
    user_data = file("./conf.yml")
}

resource "openstack_networking_floatingip_v2" "fip_2" {
    pool = "public"
}

resource "openstack_compute_floatingip_associate_v2" "fip_2" {
  floating_ip = openstack_networking_floatingip_v2.fip_2.address
  instance_id = openstack_compute_instance_v2.basic.id
}