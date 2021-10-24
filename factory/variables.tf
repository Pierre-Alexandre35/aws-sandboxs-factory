variable "project_region" {
  type    = string
  default = "eu-west-3"
}

variable "dev_team_members" {
  type = list(object({
    name       = string
    id         = string
    is_enabled = bool
  }))
}

variable "sandboxs_manager" {
  type = string
}

variable "pgp_key" {
  type      = string
  sensitive = true
}
