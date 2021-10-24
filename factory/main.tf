/**********************************
* ORGANIZATION SPECIFIC RESOURCES
***************************/
module "organizations" {
  source = "./modules/organizations"
}

/**************************
* AWS ACCOUNTS SPECIFIC RESOURCES *
***************************/
module "accounts" {
  users                          = var.dev_team_members
  manager                        = var.sandboxs_manager
  source                         = "./modules/accounts"
  sandbox_organizational_unit_id = module.organizations.sandbox_organizational_unit_id
  pgp_key                        = var.pgp_key
}

/**************************
* AWS IAM USERS SPECIFIC RESOURCES *
***************************/
module "users" {
  source               = "./modules/users"
  sandbox_aws_accounts = module.accounts.sandboxs
}