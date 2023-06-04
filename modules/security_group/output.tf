# modules/security_group/output.tf

output "security_group_id" {
  description = "ID du groupe de sécurité"
  value       = aws_security_group.security_group.id
}
