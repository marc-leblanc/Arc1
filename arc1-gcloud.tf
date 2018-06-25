// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("mleblanc-gcloud.json")}"
  project     = "arc1-208216"
  region      = "us-east1"
}

// Create a new instance
resource "google_compute_instance" "Arc1" {
  count = 3
  #name         = "am1-test"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"
  name = "am1host-${count.index}"
asdasd

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"


  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}