# main.tf

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUVJ6CUNRUCHZM2ER"
  secret_key = "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"
}

module "ec2_instance" {
  source = "/home/deb/Documents/mini-projet/modules/ec2_instnace/"
  instance_type = "t2.micro"
  volume_size = 8
  instance_tags = {
    Name = "ec2_module-said"
  }
  keyname = "devops-Said"
  security_group_id  = module.security_group.security_group_id 
}

module "ebs_volume" {
  source = "/home/deb/Documents/mini-projet/modules/ebs_volume"
  volume_size = 8
}

module "public_ip" {
  source = "/home/deb/Documents/mini-projet/modules/public_ip"
  association_ip_inst = module.ec2_instance.instance_id
}

module "security_group" {
  source = "/home/deb/Documents/mini-projet/modules/security_group"
}

resource "null_resource" "nginx_install" {
  connection {
    type        = "ssh"
    host        = module.public_ip.public_ip
    user        = "ubuntu"
    private_key = file("./devops-Said.pem")  # Chemin vers votre clé privée SSH
  }

#Puisque ce n'est pas précis dans l'emplacement ou nous devant enregristrer, je le fais
# en local et en remote :)
 
  provisioner "local-exec" {
                command = "echo 'IP: ${module.public_ip.public_ip}' > ip_ec2-projet.txt"
   } 
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "echo 'IP: ${module.public_ip.public_ip}' > ip_ec2-projet.txt"
    ]
  }

  depends_on = [module.ec2_instance]
}
