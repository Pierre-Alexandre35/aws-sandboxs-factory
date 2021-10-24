output "sandboxs" {
  value       = [for this in aws_organizations_account.this : this]
  description = "ID of the Sandboxs OU"
  sensitive   = false
}