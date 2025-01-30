provider "harness" {
  export TF_HTTP_PASSWORD = "pat.vRxzqLNjTNCgHiPiRGId-A.679bc6dd31ea3d0a39867c66.exZN5Rmfaz5FDTumpOHF"
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
