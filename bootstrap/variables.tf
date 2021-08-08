variable "backend_bucket_name" {
    type    = string
    default = "terraform-backend-bucket-s3"
}

variable "backend_dynamodb_table" {
    type    = string
    default = "terraform-backend-db-table"
}

variable "backend_region" {
    type    = string
    default = "eu-west-3"
}

variable "tfstate_backend_key" {
    type    = string
    default = "global/s3/terraform.tfstate"
}

