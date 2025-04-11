# Terraform Settings Block
terraform {
  required_version = ">= 1.4.2"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.42.0"
    }
  }
  backend "gcs" {
    bucket = "gke-fritzclass-bucket2"
    prefix = "qa/gke-cluster-private"    
  }
}

# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region = var.gcp_region1
}