# Backend variables must be hardcored or passed into arguments in the CLI
terraform {
  backend "s3" {
    bucket         = "terraform-backend-bucket-s3"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-backend-db-table"
    encrypt        = true
  }
}