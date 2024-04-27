terraform {
  required_providers {
    openstack = {
        source = "terraform-providers/openstack"
    }
    ovh = {
    	source = "ovh/ovh"
    }
  }
  required_version = ">= 1.0.0"
}

provider "openstack" {
  cloud = "khali"
}

provider "ovh" {
  endpoint = "ovh-eu"
  application_key    = "1598a9a15fae7f32"
  application_secret = "fb1f1c3e068d5cbe2ddd5b71f7fcb84a"
  consumer_key       = "7aad6987a4b6f72191ba25b93a367dbe"	
}
