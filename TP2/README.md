## Découverte de gitlab.com

## Création de compte sur Gitlab.com

* Compléter le formulaire sur la page d'inscription de [Gitlab.com](https://gitlab.com/users/sign_in?redirect_to_referer=yes)

## Ajouter une clé SSH à son compte

* `ssh-keygen -t ed25519` : pour générer une *paire* de clé SSH (une publique et une privé). La privé doit rester sur votre poste, il ne faut jamais la communiquer pour des raisons de sécurité.
* Sur l'interface web l'ajouter dans la partie profil `SSH keys`

## Créer un projet

* Dans projet : Mes projets > New project

## Créer un ticket dans un board

* Créer un board : Dans son projet > menu > issues > boards
* Créer une issue : Dans son projet > menu > issues > boards > news

## Push le projet TP1

* `cd projet_TP1` : On se rend dans le projet
* `git status` : On vérifie que rien ne reste à commit. Sinon on commit comme vu dans le TP1.
* `git add origin <SSH URL de votre dépot>` : On ajoute le remote du projet créé.
* `git push -u origin dev` : On pousse le code commit localement vers le repos distant

## Créer une Merge Request

* Dans le projet > Menu > Merge Request > Nouvelle > dev vers master
* Donner les informations sur la MR, titre information etc...
* Tag l'issue dans la merge request en écrivant simplement `#ID_issue`
* Une fois la MR créé vous pouvez consulter l'ensemble des modifications qu'elle contient dans l'onglet "commits" ou "modifications"

## Accepter la MR

* Accepter la MR
* Gitlab va automatiquement merge le code sur master
