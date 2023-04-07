# Provedor Google Cloud
provider "google" {
  credentials = file("chave.json")

  project = "challenge-2000"
  region  = "us-central1"
}