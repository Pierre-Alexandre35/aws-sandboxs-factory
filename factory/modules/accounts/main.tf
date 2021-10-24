resource "aws_organizations_account" "this" {
  for_each  = local.all_user_ids
  name      = "Dev Sandbox ${each.value}"
  email     = "${var.manager}+sbx_${each.value}@artefact.com"
  role_name = "Administrator"
  parent_id = var.sandbox_organizational_unit_id
}

provider "aws" {
  alias = "new_account"
  region = "eu-west-3"

  assume_role {
    role_arn     = "arn:aws:iam::${aws_organizations_account.this.id}:role/OrganizationAccountAccessRole"
    session_name = "new_account_creation"
  }
}