terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.70.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-backend-gcs-store"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}

data "google_service_account_access_token" "default" {
  provider               = google
  target_service_account = "object-trigger@training-391108.iam.gserviceaccount.com"
  scopes                 = ["userinfo-email", "cloud-platform"]
  lifetime               = "300s"
}

provider "google" {
  alias        = "impersonated"
  access_token = data.google_service_account_access_token.default.access_token
}

data "google_client_openid_userinfo" "me" {
  provider = google.impersonated
}

output "target-email" {
  value = data.google_client_openid_userinfo.me.email
}
