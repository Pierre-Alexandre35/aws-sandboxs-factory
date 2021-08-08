variable "project_region" {
  type    = string
  default = "eu-west-3"
}

variable "technical_directors" {
  type = list(string)
}

variable "dev_team_members" {
  type    = list(object({
    name = string
    is_enabled = bool
  }))
}