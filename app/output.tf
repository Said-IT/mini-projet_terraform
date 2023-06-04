# output.tf

output "ip_file" {
  description = "Chemin du fichier contenant l'adresse IP publique de l'instance EC2"
  value       = "ip_ec2-projet.txt"
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

