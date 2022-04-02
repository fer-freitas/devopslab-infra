resource "google_app_engine_application" "my-app-6aso-fer" {
  project     = "labdevopscloud-6aso-fer"
  location_id = "us-central"
}

resource "google_artifact_registry_repository" "my-repo-6aso-fer" {
  provider = google-beta

  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens Docker"
  format = "DOCKER"
}