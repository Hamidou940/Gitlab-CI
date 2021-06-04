# TP7 : Première pipeline

Correction faite pour Debian / Ubuntu, celle-ci peut-être différente selon les système.

## Installer un runner utilisant l’executor “shell”

* Ajouter le dépôt APT de Gitlab pour télécharger les runners : `curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash`
* Installer le packet : `export GITLAB_RUNNER_DISABLE_SKEL=true; sudo -E apt install gitlab-runner`
* Enregistrer le runner : `sudo gitlab-runner register` avec les informations trouvées sur votre Gitlab dans la partie administration > Overview > Runners, l'URL et le token sont données. Il est aussi possible de le faire au niveau projet (notamment sur Gitlab), mais le runner sera spécifique au projet : project > Settings > CI/CD > Runners. Choisisez ensuite le l'executor "shell" et ajoutez en tags : cli
* Dans l'interface web, dans la partie runner, cliquer sur l'ID de votre runner et vérifier les paramètrages, uniquement la case "active" doit-être cochée. Sauf environement spécifique 
* *Corriger bug* : Avec le runner Shell, vous pouvez être confronté un une erreur d'execution, pour la corriger faite : `rm -rf /home/gitlab-runner/.*`, cela va supprimer toutes les configurations du profile shell qui cause des erreurs.

## Créer un .gitlab-ci.yml qui va faire 2 jobs

[Voir config](./.gitlab-ci.yml)

## Créer un second runner utilisant l’executor “Docker”

* Mêmes étapes que la première partie, sauf pour l'executor où vous choisirez "Docker" et il vous demanderas une image par défaut (en cas d'absence de celle-ci dans le gitlab-ci.yml). Choisisez une de votre choix, par exemple [bash](https://hub.docker.com/_/bash). Choisisez aussi un tag différent

## Ajouter un troisième job

[Voir config](./.gitlab-ci.yml)
