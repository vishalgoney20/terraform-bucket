module "bucket" {
  source = "../../modules"

  name       = var.name
  project_id = var.project_id
  location   = "us-east1"

  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]

  iam_members = [
    {
    role   = "roles/storage.objectViewer"
    member = "user:vishal.goney@zemosolabs.com"
    },
    {
    role   = "roles/storage.objectViewer"
    member = "user:madhuri.kotha@zemosolabs.com"
    }
  ]
}
