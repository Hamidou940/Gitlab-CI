# TP1 : découverte de Git

Réponse basé sur un système Debian.

## Installation de Git

* `apt update` : on met à jour les dépôts de package
* `apt install -y git` : on install le package git 
* `vim ~/.gitconfig` : on paramètre notre fichier de configuration Git

## Création d'un projet Git

* `mkdir monprojet && cd monprojet` : on créer le dossier qui va contenir le projet (niveau système de fichier)
* `git init` : on initialise un répertoire git local au dossier (le fameux .git)

## Ajout de fichier sur le staging du commit

* `git add votrefichier` : on ajoute le fichier donnée en paramètre dans l'espace de "stage" qui va servir à construire votre commit.
* `git status` : vous pouvez voir votre fichier dans l'espace de staging à ce moment

## Créer un commit sur la branch "dev"

* `git checkout -b dev` : permets de passer sur la branche de dev (et va la créer au passage)
* `git commit -m "mon premier commit"` : on créer notre premier commit

## Afficher l'historique des commits

* `git log` : vous permets de consulter l'historique des commits

## Effectuer des modifications & afficher la différence

* On effectue des modifications dans un fichier précédament commit
* `git diff HEAD` : va nous afficher les différences entre la dernière version commit et la version actuellement sur le FS

## Commit les modifications

* `git add votrefichier` : vous ajoutez le fichier dans lequel vous faites les modificaitons dans l'espace de stage.
* `git commit -m "mes modifs"` : vous commitez les modifications précédament ajoutées dans le stage.

## Annuler les modificaitons

* `git reset --hard` : va supprimer les dernières actions en supprimant aussi les modifications faites (--hard)

## Bonus : merge dev à master

* `git checkout -b master` : on se rend sur master
* `git merge dev` : on merge la branche dev sur master
