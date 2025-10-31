TP – Exploration de l’écosystème Docker
1. Images Docker trouvées

J’ai cherché plusieurs images sur Docker Hub pour voir lesquelles pouvaient être utiles dans mes futurs projets web et API. Voici celles que j’ai retenues 👇

1. postgres

Lien : https://hub.docker.com/_/postgres

À quoi ça sert : C’est un système de base de données très connu et performant.

Pourquoi je l’ai choisie : Je l’utilise souvent avec des frameworks comme NestJS ou Prisma, et il gère super bien les relations entre tables.

2. nginx

Lien : https://hub.docker.com/_/nginx

À quoi ça sert : C’est un serveur web qui peut aussi servir de reverse proxy.

Pourquoi je l’ai choisie : Il est léger, rapide, et indispensable pour héberger un site ou rediriger les requêtes vers une API.

3. portainer/portainer-ce

Lien : https://hub.docker.com/r/portainer/portainer-ce

À quoi ça sert : C’est une interface graphique pour gérer Docker facilement (voir les conteneurs, les images, etc.).

Pourquoi je l’ai choisie : Parfait pour apprendre sans se perdre dans la ligne de commande, et pour bien visualiser son environnement Docker.

4. metabase/metabase

Lien : https://hub.docker.com/r/metabase/metabase

À quoi ça sert : C’est un outil pour faire des tableaux de bord et visualiser des données.

Pourquoi je l’ai choisie : Super pratique pour connecter à une base PostgreSQL et créer des graphiques sans coder.

5. redis

Lien : https://hub.docker.com/_/redis

À quoi ça sert : C’est une base de données très rapide, souvent utilisée comme cache.

Pourquoi je l’ai choisie : Utile pour accélérer les performances d’un site ou d’une API.

2. Idées de projets avec Docker

Créer un environnement complet avec une API NestJS connectée à PostgreSQL et Redis.

Utiliser Metabase pour suivre des stats ou visualiser les données de mes projets.

Mettre en place un reverse proxy avec Nginx pour apprendre à faire une petite architecture web.

Tester Portainer pour piloter mes conteneurs sans avoir besoin de taper toutes les commandes.

Monter une mini infra microservices avec plusieurs conteneurs qui communiquent entre eux.