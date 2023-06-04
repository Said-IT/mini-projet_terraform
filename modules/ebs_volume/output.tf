# modules/ebs_volume/output.tf

output "ebs_volume_id" {
  description = "ID du volume EBS"
  value       = aws_ebs_volume.ebs_volume.id
}
