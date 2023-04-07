# Recurso do Google Kubernetes Engine
resource "google_container_cluster" "my_cluster" {
  name               = var.name_cluster
  location           = "us-central1"
  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-1"
  }

  master_auth {
    # username = ""
    # password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
