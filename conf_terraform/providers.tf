terraform {
  required_providers {
    openstack = {
        source = "terraform-providers/openstack"
    }
  }
  required_version = ">= 1.0.0"
}

provider "openstack" {
  cloud = "khali"
}