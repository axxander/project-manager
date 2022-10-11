terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alexgregory"

    workspaces {
      name = "project-manager"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.38.0"
    }
  }

  required_version = ">= 1.2.0"
}
