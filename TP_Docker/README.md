# Rappels Docker

/!\ L'installation de la correction est faite sous Debian 10

## Installer Docker 

* `apt update` : On met à jour la liste des packets
* `apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common` : On installe les prérequis
* `curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -` : On récupère la clé GPG des repos Docker
* `add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian$(lsb_release -cs) stable"` : On ajoute le repository de Docker dans ceux de votre Debian
* `apt update && apt install docker-ce docker-ce-cli containerd.io` : On installe Docker et le Runtime de celui-ci.

## Créer un conteneur

* `docker run -d -p 1234:2368 ghost` : On créer un conteneur Ghost en mappant le port `2368` sur le host

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
