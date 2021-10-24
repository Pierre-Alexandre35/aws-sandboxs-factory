data "aws_organizations_organization" "root" {}

locals {
  root_id = data.aws_organizations_organization.root.roots[0].id
}

resource "aws_organizations_organizational_unit" "sandboxs" {
  name      = var.aws_sandboxs_unit_name
  parent_id = local.root_id
}