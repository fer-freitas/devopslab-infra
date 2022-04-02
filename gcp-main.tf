resource "google_sql_database" "database-playlist" {
  provider = google
  name     = "playlist"
  instance = google_sql_database_instance.instance-playlist.name
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance-playlist" {
  provider = google
  name             = "db-playlist"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_artifact_registry_repository" "artifact-playlist" {
  provider = google-beta
  repository_id = "playlist"
  description = "Imagens Docker"
  format = "DOCKER"
}