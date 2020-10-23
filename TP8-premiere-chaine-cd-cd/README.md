# TP8 : Ma première chaîne CD !

Correction faite pour Debian 10 / Ubuntu 20.04, celle-ci peut-être différente selon les systèmes.

Pour les runners nous utiliserons les deux runners créé précadament. Si vous avez une erreur sur le `git clone`, lors de l'execution d'un runner docker, essayez de mettre à jour votre instance `sudo apt update && sudo apt -y upgrade` et réessayez, si cela perciste, utilisez gitlab.com.

Il est possible de réaliser ce TP dans sur [Gitlab.com](https://gitlab.com) à l'aide de runner projet (Project > Settings > CICD > Runners).

## Récupérer le projet TP8 sur un nouveau projet

* Dans Gitlab, faite "new project", import from git registry et donner le dépôt communiqué : `https://gitlab.com/thger_formation/tp8`

## Créer une chaîne CD

Voir la configuration pour le reste de la pipeline :

[Voir config](./.gitlab-ci.yml)

Afin de garantir la sécurité de notre pipeline :

* Nous créons un token de service sur le projet afin de ne pas utiliser notre compte Gitlab personnel pour l'upload des images dans le registry. Pour cela allez dans Project > Settings > CICD > repository > Deploy Tokens, donner un nom qui servira à la connexion au registry cocher `read_package_registry` et `write_package_registry` et copiez le token.
* Nous allons ensuite entrer ces tokens dans des variables protégées. Pour cela allez dans Project > Settings > CICD > Variables, faite ajouter en `key` mettez le nom de la variable que vous avez mis pour le compte dans votre `.gitlab-ci.yml` (ici CI_REGISTRY_USER) et mettez le nom donné en token, décocher la case `Protect variable` et cochez `Mask variable`. Répétez ensuite cette opération pour le token en lui-même en adaptant la partie variable d'environement.
