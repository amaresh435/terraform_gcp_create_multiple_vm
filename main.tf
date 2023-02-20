resource "google_project_iam_member" "project" {
  project = var.project_defaults["project_name"]
  for_each = toset([
    "roles/cloudsql.admin",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.owner",
    "roles/storage.admin",
  ])
  role = each.key
  member = "user:amarg435@gmail.com"
}
