eShop - MG
============

## Install

```
get .zip file and extract
gradle jar
gradle eclipse
```

On eclipse :
``` File > Import ```


## Run

```
Create database on mysql named "bd_front_java"
```


## A LIRE Impérativement avant de commencer la correction


Bonjour,

L'application que je rend ce soir est fonctionelle mais ne remplis pas encore tout les objectifs fixés durant la séance, en effet : 

- Il manque tout ce qui touche à l'ajoute / modification / suppression de d'order et de produits à l'intérieur des orders
- Un utilisateur ne peut pas modifier ses données personelles
- Un utilisateur voie son identifiant de connection dans la requête http -> problème de sécurité -> session pas mises en place
- Les graphismes sont hideux
- système de récupération de données à revoir
- Calcul de coût total Order a faire


En définitive, voici ce que j'ai produit par rapport à la template que vous nous aviez fournit:

- Identification utilisateur avec ajout de login / password dans la base de données
- Ecran d'affichage d'un produit particulier plus détaillé (description + image)
- Possibilité d'accéder aux données utilisateur
- Possibilité d'affichage des Orders corespondant aux clients
- Affichage de tout les produits présent dans un Order


Voici donc dans les grandes lignes le travail que j'ai effectué jusqu'à aujourd'hui.

Voici désormais quelques points qui pouraient être développés dans l'initiative de reprendre le projet : 

- Possibilité d'un bel affichage des produits / recherche dynamique / filtres de recherches => Un peut comme la visionneuse du PPE LISA
- Informations allergènes etc. (en utilisant "Kraft Recipe API" par exemple)
- Page personnalisé utilisateur -> possibilité ajout de photo de profil etc.
- Chat de discution avec un chatbot pour questions relatives aux produits -> librairie microsoft / Microsoft azure ( LUIS ).


Beaucoup d'autres idées sont réalisables si compté que l'on ai le temps de les mettre en place... 

Sur ce ! je vous souhaite une bonne corection ainsi qu'une bonne rentrée 2018. 

Cordialement,
KEROMNES Mathieu


