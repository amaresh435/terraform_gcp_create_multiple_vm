terraform {
  required_version = "~> 1.3.5"
  required_providers {
    google = "4.53.1"
  }
}


provider "google" {
  project = var.project_defaults["project_name"]
  region  = var.project_defaults["region_name"]
  credentials = file(var.credentials_file)
}
