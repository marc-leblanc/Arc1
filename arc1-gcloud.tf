// Configure the Google Cloud provider
provider "google" {
 # credentials = "${file("mleblanc-gcloud.json")}"
  credentials = "${var.gcaccount}"
  project     = "${var.gcproject}"
  region      = "${var.gcregion}"
}

// Create a new instance
resource "google_compute_instance" "Arc1" {
  count = 3
  #name         = "am1-test"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"
  name = "am1host-${count.index}"


  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      #image = "debian-cloud/debian-8"
    }
  }

 network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
   }
}
  ##metadata {
    #foo = "bar"
  #}

#  metadata_startup_script = "echo hi > /test.txt"

  #metadata_startup_script = "echo ${data.google_compute_address.my_address.address} > /root/yourIP"


  #service_account {
  #  scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  #}


}