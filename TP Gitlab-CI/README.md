# Correction TPs 

## TP1 : Découverte de Git

* Installation de git
* Création d’un projet git
* Créer et ajouter des fichiers dans le staging du commit
* Commit en local sur une branch “dev”
* Afficher l’historique des commits (CLI)
* Effectuer des modifications
* Afficher les différences avec le HEAD
* Commit les modifications
* Créer des modifications sans commit
* Les annuler sans garder celle-ci
* Pour les plus rapides merge dev à master (git merge)

[LIEN CORRECTION](./TP1-decouverte-git/README.md)

## TP2 : Les pré-commits 

* Installer python & pip
* Installer pre-commit
* Dans le précédent dépôt créer un précommit
* Ajouter un check des secrets 
* Tester sans secret
* Ajouter un secret et essayer de le commit

[LIEN CORRECTION](./TP2-pre-commit/README.md)

## TP3 : Découverte de Gitlab.com

* Création d’un compte sur gitlab.com
* Configuration du compte (clé SSH : ssh-keygen -t ed25519)
* Création d’un projet
* Créer un dashboard et ajoutez des “issues”
* Commit et push le fichier (TP N°1) sur une branche “dev”
* Merge Request pour mettre sur Master lié à une issue
* Afficher l’historique des commits (GUI + CLI)
* Accepter la MR sur gitlab.com

[LIEN CORRECTION](./TP3-decouverte-gitlab-com/README.md)

## TP4 : Installation de Gitlab CE (Omnibus) 

* Créer une machine virtuel (2 CPUs / 4Go RAM / 15Go Disque min) 
* Installer GitLab CE
* Démarrer GitLab CE
* Créer le compte Admin

[LIEN CORRECTION](./TP4-installation-gitlab/README.md)

## TP5 : Administration de Gitlab

* Ajouter un message général pour avertir d’un maintenance
* Créer 2 utilisateurs (un admin, un standard)
* Vérifiez avec la partie monitoring que tout fonctionne (EN CLI)
* Redémarrer le composant Nginx
* Vérifiez le status (EN CLI)
* Redémarrer tout le GitLab (avec systemd ou gitlab-ctl)
* Exécutez 2 appels APIs

[LIEN CORRECTION](./TP5-administration-gitlab/README.md)

## TP6 : Docker

* Installer Docker
* Créer un conteneur
* Créer un Dockerfile
* Lister les images locals
* Activer le Registry Docker dans Gitlab
* Push votre dockerfile
* Push votre image Docker dans le registry

[LIEN CORRECTION](./TP_Docker/README.md)

## TP7 : Ma première pipeline

* Installer un runner “shell”
* Donner un tag “cli” au runner
* Créer un .gitlab-ci.yml qui va juste faire un :
	* echo “Mon premier job !” dans un premier job
	* echo “Mon second job !” dans un second job
* Créer un second runner “Docker”
* Lui donner le tag “conteneur”
* Ajouter dans le .gitlab-ci.yml
	* Un troisième job qui est dépendant des deux premiers et qui s'exécute uniquement sur Master
	* echo “Mon job final !”

[LIEN CORRECTION](./README.md)

## TP8 : Ma première chaîne CD !

* Récupérer le projet TP8 sur un nouveau projet
	* https://gitlab.com/thger_formation/tp8
* Créer une chaîne CD qui va :
	* Vérifier la présence du fichier index.html (test -s $FILE) en utilisant un executor Docker
	* Build l’image Docker & push l’image Docker avec un executor Shell
	* Déployer uniquement sur master la nouvelle image sur un runner particulier tag : production

[LIEN CORRECTION](./TP8-premiere-chaine-cd-cd/README.md)

## Examen : Ma première chaine de continus delivery !

[LIEN CORRECTION](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
