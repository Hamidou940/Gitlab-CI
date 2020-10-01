# Correction TPs 

## TP1 

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

## TP2

* Création d’un compte sur gitlab.com
* Configuration du compte (clé SSH : ssh-keygen -t ed25519)
* Création d’un projet
* Créer un dashboard et ajoutez des “issues”
* Commit et push le fichier (TP N°1) sur une branche “dev”
* Merge Request pour mettre sur Master lié à une issue
* Afficher l’historique des commits (GUI + CLI)
* Accepter la MR sur gitlab.com

## TP3 

* Créer une machine virtuel (2 CPUs / 4Go RAM min) 
* Installer GitLab CE
* Démarrer GitLab CE
* Créer le compte Admin

## TP4

* Ajouter un message général pour avertir d’un maintenance
* Créer 2 utilisateurs (un admin, un standard)
* Vérifiez avec la partie monitoring que tout fonctionne (EN CLI)
* Redémarrer le composant Nginx
* Vérifiez le status (EN CLI)
* Redémarrer tout le GitLab (avec systemd ou gitlab-ctl)
* Exécutez 2 appels APIs

## TP_Docker

* Installer Docker
* Créer un conteneur
* Créer un Dockerfile
* Lister les images locals

## TP5

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

