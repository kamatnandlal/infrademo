provider "google" {
  project = "fifth-handbook-447205-s2"          
  region  = "us-central1"               
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "US"
  force_destroy = true  # Allow the bucket to be deleted even if it contains objects
}
