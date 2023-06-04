# Mini projet terraform

Notre projet vise à simplifier et automatiser le provisionnement d'infrastructures AWS en utilisant Terraform, un outil open-source de gestion de l'infrastructure en tant que code. En combinant les avantages d'AWS et la puissance de Terraform, notre objectif est de permettre aux équipes de déploiement et d'exploitation d'infrastructures de créer rapidement et de manière cohérente des ressources clés, telles que des instances EC2, des volumes EBS, des adresses IP publiques et des groupes de sécurité.

![terrafrom_image](https://hashicorp.github.io/field-workshops-terraform/slides/aws/terraform-oss/images/tf_aws.png)

## Préquis

Ce projet est réalisé sous Debian, mais il est possible d'apporter de légères modifications si vous utilisez un système d'exploitation différent.

```bash
#Pour télécharger la version 0.15.4, vous pouvez utiliser la commande suivante 
wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip
#Une fois le téléchargement terminé, installez le package "unzip" si ce n'est pas déjà fait
sudo apt-get install unzip
#Décompressez le fichier Terraform que vous avez téléchargé 
unzip terraform_0.15.4_linux_amd64.zip
#Déplacez l'exécutable Terraform vers un répertoire inclus dans votre variable d'environnement "PATH" :
sudo mv terraform /usr/local/bin/
#Vérifiez si Terraform est correctement installé en exécutant la commande suivante
terraform version
```


