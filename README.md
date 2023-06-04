# Mini projet terraform


##Préquis

Ce projet est fait sous debian, il est possible de faire des petits changements si votre systeme d'exploitation differe.

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


