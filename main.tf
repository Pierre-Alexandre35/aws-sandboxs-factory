module "organizations" {
  source = "./modules/organizations"
}

module "accounts" {
  source = "./modules/accounts"
}


module "development-team" {
  source  = "./modules/development-team/"

  users   = var.dev_team_members
  pgp_key = var.pgp_key
}
