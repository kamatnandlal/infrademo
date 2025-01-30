provider "google" {
  project = "fifth-handbook-447205-s2"          
  region  = "us-central1"               
  zone    = "us-central1-a"  
}

terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/demo/terraform-backend?accountIdentifier=vRxzqLNjTNCgHiPiRGId-A"
    username = "harness"
    lock_address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/demo/terraform-backend/lock?accountIdentifier=vRxzqLNjTNCgHiPiRGId-A"
    lock_method = "POST"
    unlock_address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/default_project/workspaces/demo/terraform-backend/lock?accountIdentifier=vRxzqLNjTNCgHiPiRGId-A"
    unlock_method = "DELETE"
  }
}
resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "US"
  force_destroy = true  # Allow the bucket to be deleted even if it contains objects
}
