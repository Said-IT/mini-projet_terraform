# modules/public_ip/main.tf

variable "association_ip_inst" {
  description ="Association Ip à l'instance"
}


resource "aws_eip" "public_ip" {
  vpc = true
  tags = {
    Name = "Adresse IP publique"
  }
  instance = var.association_ip_inst
}
