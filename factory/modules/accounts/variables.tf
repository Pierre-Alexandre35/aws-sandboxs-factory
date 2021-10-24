variable "sandbox_organizational_unit_id" {
    type = string
    default = "Sandboxs"
}


variable "users" {
  type    = list(object({
    name = string
    is_enabled = bool
    id = string
  }))
}


variable "manager" {
  type    = string
}

variable "pgp_key" {
  type = string
  sensitive   = true
}


