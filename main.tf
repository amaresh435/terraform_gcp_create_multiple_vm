#multipe roles and multiple user , servicce account (service:hhjjhjj)

resource "google_project_iam_binding" "project" {
  project = var.project_defaults["project_name"]
  for_each = toset([
    "roles/cloudsql.admin",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.owner",
    "roles/storage.admin",
    "roles/container.admin",
  ])
  role = each.key
  members = [
    "user:amarg435@gmail.com",
    "user:sonisammu435@gmail.com",
  ]

  condition {
    title       = "expires_after_2023_02_28"
    description = "Expiring at midnight of 2023-02-28"
    expression  = "request.time < timestamp(\"2023-02-20T00:00:00Z\")"
  }
}
