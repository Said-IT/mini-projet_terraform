# modules/ec2_instance/output.tf

output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.ec2_instance.id
}

output "public_ip" {
  description = "Adresse IP publique de l'instance EC2"
  value       = aws_instance.ec2_instance.public_ip
}
