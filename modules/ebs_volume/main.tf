# modules/ebs_volume/main.tf

variable "volume_size" {
  description = "Taille du volume EBS"
}

resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"
  size              = var.volume_size
  tags = {
    Name = "ebs_vol_name"
  }
}
