# Exercice 1

## Pratiques DevOps de mon entreprise

Dans notre équipe, nous nous occupons nous même du développement et du déploiement de nos applications. Nous gérons nous même la pipeline Jenkins.

Nous avons une petite équipe DevOps qui s'occupe des parties plus pointues, l'infrastructure, comme gérer les serveurs, clusters, pods, réseau, s'occuper des instances GitLab de l'entreprise, et de développer des outils internes.
Celle-ci s'occupe aussi de la partie réseau, cybersécurité de l'entreprise.

## Architecture, build, déploiement, release.

Notre code est poussé sur GitLab, et une pipeline Jenkins s'occupe de lancer tous les tests (unitaires, integration, e2e), builder et deployer le code si nécessaire. Les différents microservices sont conteneurisés et publiés sur un ECR, et sont ensuite déployés sur des clusters kubernetes (pendant le développement, le déploiement est fait sur des clusters de test).

Au bout de 3 mois, nous créons une release candidate à partir de la branche principale, celle ci est ensuite testée sur le terrain et validée par une équipe dédiée pendant 1 mois. Une fois la validation effectuée, la version est ensuite déployée en production et disponible aux clients.

## Bons et mauvais points

Le fait que les développeurs de l'équipe s'occupe d'une partie du DevOps et soient responsables du déploiement est très intéressant.
Cependant, il nous arrive parfois d'être bloqués sur des points où nous n'avons pas la main, et devons voir avec l'équipe DevOps qui a un scope beaucoup plus large et s'occupe de tout le reste.