output "sandbox_organizational_unit_id" {
  value       = aws_organizations_organizational_unit.sandboxs.id
  description = "ID of the Sandboxs OU"
  sensitive   = false
}