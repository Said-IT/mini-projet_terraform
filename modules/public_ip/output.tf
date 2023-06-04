# modules/public_ip/output.tf

output "public_ip" {
  description = "Adresse IP publique"
  value       = aws_eip.public_ip.public_ip
}
