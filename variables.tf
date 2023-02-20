ariable "project_defaults" {
  type=map(string)
  default = {
    "project_name" = "internal-interview-candidates"
    "project_number" = "internal-interview-candidates"
    "region_name" = "us-central1"
  }
}

variable "credentials_file" {
    default = "/home/amareshguligoudar/terraf/bq/gcp_service_account_key.json"
}

variable "zone" {
  default = "us-central1-c"
}
