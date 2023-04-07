# Provedor Google Cloud
provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

# Definição do recurso cluster GKE
resource "google_container_cluster" "cluster" {
  name               = var.name_cluster
  location           = var.location
  remove_default_node_pool = true
  initial_node_count  = 1

  # Configuração do pool de nós
  node_config {
    machine_type = "n1-standard-2"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  # Configuração do gerenciamento de versão do Kubernetes
  master_version = "latest"
}

# Recurso que permite o acesso ao cluster pelo kubectl
resource "google_container_cluster_iam_binding" "binding" {
  project = "My First Project"
  location = var.location
  cluster = google_container_cluster.cluster.name
  role    = "roles/container.admin"

  members = [
    "user:deividdua32@gmail.com",
    "group:deividdua32@gmail.com",
  ]
}
