locals {
  enabled_user_names = [
    for user in var.users : user.name
    if user.is_enabled
  ]

  all_user_names = toset([
    for user in var.users : user.name
  ])

  all_user_ids = toset([
    for user in var.users : user.id
  ])
}