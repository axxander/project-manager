locals {
  billing_account_id = "010907-178175-E19375"
}

module "alexgregoryio-dev" {
  source = "./modules/project"

  project_name    = "alexgregoryio-dev"
  project_id      = "alexgregoryio-dev"
  billing_account = local.billing_account_id
  env             = "dev"
  
  apis = [
    "storage"
  ]
}

module "alexgregoryio-prod" {
  source = "./modules/project"

  project_name    = "alexgregoryio-prod"
  project_id      = "alexgregoryio-prod"
  billing_account = local.billing_account_id
  env             = "prod"
  
  apis = [
    "storage"
  ]
}
