Car Fleet
====

Test technique de recrutement
--------------------------------------------------------------------------

Bonjour, ceci est un mini projet dans le cadre d'un exercice technique pour un recrutement.
Voici les instructions:

La technologie imposée est Symfony 4 avec Doctrine et Twig, il faut réaliser un petit outil (CRUD) permettant de gérer une flotte de véhicules (ou autre) qui possèdent un ensemble de caractéristiques (Couleur, nombre de places etc....).
Il faut ensuite afficher la liste des véhicules de la flotte à l'aide de la librairie js/css Datatable et charger cette liste en Ajax avec une pagination, un tri par colonnes, et une recherche dans le tableau. Ces trois options sont déjà présentes dans la librairie Datatable, il faut créer le controller qui fonctionne de pair avec la librairie JS. Le rendu peut se faire sur un repository publique GIT.


### Installation

1. Clonez ou telechargez le repository.
1. Modifiez le fichier .env avec vos parametres de BDD.
1. Ouvrez la console dans le repertoire racine.
1. composer install -> pour installer toutes les dependances.

1. Importez le fichier "cars.sql" dans votre BDD
ou
1. php bin/console doctrine:database:create -> pour créer la BDD.
1. php bin/console doctrine:schema:update --force
1. php bin/console hautelook:fixtures:load -> pour charger les fixtures.
puis
1. php bin/console server:run -> pour lancer le serveur local.
1. Vous pouvez entrer l'adresse "localhost:8000" dans votre navigateur et admirer le resultat.

La page d'accueil affiche les resultats sous forme de tableau avec ajax.
En cliquant sur "Admin", on accède au CRUD.

### Built with :

- Symfony 4.3
- Fzaninotto/faker 1.8
- Hautelook/alice-bundle 2.5
- Omines/datatables-bundle 0.3.1

 À bientôt ...


