resource "ovh_domain_zone_record" "projet" {
  zone = "uca-devops.ovh"
  subdomain = "projetgo.khalil"
  target = "185.34.141.126"
  fieldtype = "A"
}

resource "ovh_domain_zone_record" "blog" {
  zone = "uca-devops.ovh"
  subdomain = "bloga.khalil"
  target = "185.34.141.126"
  fieldtype = "A"
}


resource "ovh_domain_zone_record" "cloud" {
  zone = "uca-devops.ovh"
  subdomain = "cloud.khalil"
  target = "185.34.141.126"
  fieldtype = "A"
}
resource "ovh_domain_zone_record" "grafana" {
  zone = "uca-devops.ovh"
  subdomain = "grafana.khalil"
  target = "185.34.141.126"
  fieldtype = "A"
}
