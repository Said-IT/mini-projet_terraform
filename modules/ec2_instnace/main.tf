# modules/ec2_instance/main.tf

variable "instance_type" {
  description = "Type d'instance EC2"
}

variable "volume_size" {
  description = "Taille du volume EBS attaché à l'instance"
}

variable "instance_tags" {
  description = "Tags de l'instance EC2"
}

variable "security_group_id" {
  description = "ID du groupe de sécurité"
}

variable "keyname" {
  description = "Paire du clé"
}

resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  tags          = var.instance_tags
  key_name = var.keyname 
 
  root_block_device {
    volume_type           = "gp2"
    volume_size           = var.volume_size
    delete_on_termination = true
  }

  ebs_block_device {
    device_name = "/dev/xvdf"
    volume_size = var.volume_size
    delete_on_termination = true
  }
  vpc_security_group_ids = [var.security_group_id]
#  security_groups = [var.security_group_id]    
}
