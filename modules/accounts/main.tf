#module "organizations" {
#  source = "../organizations"
#}

resource "aws_organizations_account" "this" {
  name      = "uuuu"
  email     = "udduu@gmail.com"
  parent_id = "ou-9ick-rmcxfbfs"
}
