terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "OldMainSolutionsLLC"

    workspaces {
      name = "Terraform-Workspace"
    }
  }
}
