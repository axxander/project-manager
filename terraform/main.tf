terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.38.0"
    }
  }

  required_version = ">= 1.2.0"
}

resource "google_project" "my_project" {
  name = "my_project_with_tf"
  project_id = "alexgregory-created-with-tf"
}

