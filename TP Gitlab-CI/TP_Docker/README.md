# Rappels Docker

/!\ L'installation de la correction est faite sous Debian 10

## Installer Docker 

* `apt update` : On met à jour la liste des packets
* `apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common` : On installe les prérequis
* `curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -` : On récupère la clé GPG des repos Docker
* `add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian$(lsb_release -cs) stable"` : On ajoute le repository de Docker dans ceux de votre Debian
* `apt update && apt install docker-ce docker-ce-cli containerd.io` : On installe Docker et le Runtime de celui-ci.

## Créer un conteneur

* `docker run -d --name ghost -e url=http://$ip:3001 -p 3001:2368 ghost` : On créer un conteneur Ghost en mappant le port `3001` du host sur le port 2368 de la VM (qui est le port par défaut de Ghost.
* Pour y accédez de l'extérieur vous devez activer l'option forwarding d'IP sur votre OS avec la commande suivant sous Debian et Ubuntu : `sysctl -w net.ipv4.ip_forward=1`

## Créer un dockerfile et construire l'image

* Créer le dockerfile ci dessous :
```
FROM alpine
CMD ["echo", "Hello Sup De Vinci"]
```
* `docker build -t hello` : On construit l'image à partir du fichier dockerfile créé précédament
* `docker run hello` : On démarre l'image créé précadament

## Lister les images

* `docker images` : On list les images stocké en local

## Activier la fonctionnalité "Repository Docker"

* Ouvrir le fichier de configuration Gitlab `/etc/gitlab/gitlab.rb`
* Dans le fichier décommenter la ligne `registry_external_url 'https://gitlab.example.com:5050'` et changer `https` par `http` (nous n'avons pas de domaine pour faire un certificat TLS. Et changer gitlab.exemple.com par votre IP (vous pouvez mettre votre IP localhost 127.0.0.1 si vous travaillez en local).
* Appliquez la configuration du `gitlab.rb` avec la commande `gitlab-ctl reconfigure`
* Vous pouvez vérifier que la fonctionnalité est bien activé en vous rendant sur un projet de votre Gitlab et dans : Packages et Registry allez dans conteneur registry, si vous n'avez un message d'accueil c'est que l'activation est fonctionnel.

## Créer un nouveau projet 

* Pour stocker notre image, nous allons créer un nouveau projet sur notre serveur Gitlab avec l'option "new project"

## Push une image sur votre Repository Docker

* Activez tout d'abord l'option insecure sur Docker, notre repository n'ayant pas de certificat TLS. Pour cela :
  * Ajoutez le code suivant dans un fichier `/etc/docker/daemon.json` en remplacant par votre IP et le port par 5050:
  ```
  {
    "insecure-registries" : ["myregistrydomain.com:5000"]
  }
  ```
  * Redémarrez Docker pour prendre en compte la modification : `systemctl restart docker.service`
* Faite `docker login 127.0.0.1:5050`, en remplacant par votre IP pour vous loger au serveur, les identifiants sont les mêmes que ceux utilisés pour se connecter à Gitlab.
* Reconstruisez l'image en lui donnant un nom ayant la même nomenclature que votre projet Gitlab : `docker build -t 127.0.0.1:5050/root/simpleapp .`, remplacez bien sur l'IP et le chemin du projet.
* Pousez l'image avec la commande `docker push 127.0.0.1:5050/root/simpleapp`, là encore remplacez en fonction de votre IP et votre chemin.
