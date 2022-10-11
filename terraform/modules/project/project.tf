resource "google_project" "project" {
  name                  = var.project_name
  project_id            = var.project_id
  org_id                = var.org_id
  folder_id             = var.folder_id
  billing_account       = var.billing_account
  auto_create_network   = var.auto_create_network
  
  labels = {
    env = var.env
  }
}


resource "google_project_service" "enable_apis" {
  for_each = toset(var.apis)
  service  = "${each.value}.googleapis.com"
  project  = google_project.project.id
}
