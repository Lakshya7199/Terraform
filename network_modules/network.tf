resource "google_compute_network" "network"{
  project =  var.project_id
  name = "${var.purpose}-custom-vpc-1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork"{
  project =  var.project_id
  region = var.region
  name = "${var.purpose}-custom-sub-1"
  ip_cidr_range= var.cidr_range
  network="${ google_compute_network.network.id}"
}

resource "google_compute_firewall" "firewall_rule" {
  project =  var.project_id
  name    = "${var.purpose}-test-firewall"
  network ="${google_compute_network.network.id}"


  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }
  source_ranges = ["0.0.0.0/0"]

}

