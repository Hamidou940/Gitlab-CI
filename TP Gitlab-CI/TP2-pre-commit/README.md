# TP1 : Utilisation des pré-commit

Réponse basé sur un système Debian.

## Installer Python & pip

* `sudo apt update` : On met à jour les index des dépôts de paquet
* `sudo apt install python3 python3-pip` : On install les packages Python et Pip (le packager de Python)

## Installer pré-commit 

* `pip install pre-commit` : On installe pre-commit avec l'outil de gestion de package Python
* `pre-commit --version` : On test l'installation de celui-ci

## Dans le précédent dépôt créer un pré-commit

* `cd votre dépôt` : On se déplace dans le dépôt précédent 
* `pre-commit install` : On initi pré-commit dans notre dépôt (qui va éditer le fichier `.git/hooks/pre-commit` pour que pre-commit run soit exécuté à chaque commit)

## Ajouter un check des secrets

* Installer le système de vérification de secret : `pip install detect-secrets`
* Ajouter le fichier `.pre-commit-config.yaml` à la racine du projet avec le code suivant :
```
-   repo: git@github.com:Yelp/detect-secrets
    rev: v0.14.3
    hooks:
    -   id: detect-secrets
        args: ['--baseline', '.secrets.baseline']
        exclude: .*/tests/.*
```
* Générez un fichier de base pour les types de secret nécessaire au fonctionnement de `detect-secrets` avec la commande : `detect-secrets scan > .secrets.baseline`
* Commitez les 2 fichiers : `git add .* && git commit -m "Ajout précommit"`

## Tester sans secret 

* Faite une modification dans un fichier, et commitez ce changement.
* Pré-commit devrait passer au vert ne détectant pas de secret

## Tester avec un secret 

* Ajoutez un secret par exemple : `AWS_SECRET_ACCESS_KEY="dqdzpovzdqpvvnpqfe"` et commitez le.
* Pré-commit va invalider votre commit à cause de la présence du secret 
