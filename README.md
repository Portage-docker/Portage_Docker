# Portage_Docker
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Portage-docker/Portage_Docker">
    <img src="images/LogoPiwigo.png" alt="Logo" width="512" height="250">
  </a>

  <h3 align="center">Piwigo</h3>

  <p align="center">
    Portage vers Docker et déploiement cloud d'une application legacy de partage d'images.
    <br />
    <a href="https://github.com/Portage-docker/Portage_Docker"><strong>Explore the docs »</strong></a>
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Votre entreprise veut développer un logiciel basé sur un projet open source. Cependant le projet utilisé est basé sur des technologies vieillissantes, qu'on veut porter vers une architecture plus moderne. En tant que spécialiste cloud et devops de l'équipe vous êtes chargée de porter ce logiciel en containers docker. Et si possible de proposer une méthode reproductible de déploiement vers le cloud.

Contexte du projet

Votre entreprise désire développer un logiciel de partage de galleries photo, et la base choisie est le logiciel open source Piwigo (codé en php). Ce logiciel est ancien, voici sa procédure d'installation originale :

https://piwigo.org/doc/doku.php?id=user_documentation:learn:install:installation_manual

Le logiciel utilise quelques technologies passées de mode, et n'est pas sécurisé. On espère pouvoir compenser ces faiblesses et pouvoir l'utiliser dans le cloud en passant par une architecture containérisée.

Par exemple le logiciel n'utilise pas https (ce qui n'est plus acceptable), on va tenter d'ajouter cette fonctionnalité.

On espère arriver à un système qui respecte un maximum des critères OWASP les plus importants. On ne vous demande pas de fournir un système totalement sécurisé, mais il faudra produire un rapport sur la sécurité de votre archi finale.

Ce rapport indiquera les failles possibles que vous avez testées. La manière dont vous les avez testées. Et si elles sont présentes ou pas dans votre système.

Le but est donc d'exposer les ports nécessaires mais pas plus.

**Vous devrez être capable d'expliquer (en individuel) chaque instruction dans vos fichiers de configuration, son but, et le fonctionnement de votre architecture.**

On vous indique que votre architecture doit intégrer au minimum les éléments suivants :

    Un container avec php (et apache) qui fait tourner l'appli Piwigo
    Un container avec une base de données
    Un volume de stockage qui contient les infos de la base de données (pour s'assurer de la persistence des données)
    Un volume de stockage qui contient les photos stockés sur Piwigo

On vous conseille de d'abord tester de monter une architecture sans volumes de stockage (et de valider que ça fonctionne bien).

Pour le reste vous êtes libres d'ajouter des éléments pertinents dans cette architecture.

​

Un développeur senior de votre équipe qui a beaucoup utilisé Piwigo à l'époque vous conseille les éléments suivants pour la compatibilité avec l'appli :

    Utiliser une version de php 7.3
    Installer le module "mysqli" dans votre serveur php
    Il avait besoin sur son serveur de l'époque de lancer mysqld avec l'option "--default-authentication-plugin=mysql_native_password" (parce que Piwigo utilise une vieille version de la lib mysql pour php)

​

Un autre collègue qui est expérimenté en portage de code php sur docker vous donne les astuces suivantes :

    Il existe des images docker officielles qui combinent php et apache (qui sont compliqués à séparer sur deux containers différents donc ici vous pouvez utiliser une de ces images combinées)
    La meilleure manière d'installer des extension php avec Docker est l'outil "docker-php-ext-install"

​

Pour le portage cloud : contactez les formateurs pour obtenir les ressources nécessaires (une fois votre archi validée en local). Vous pourrez réaliser cela avec un "Azure container registry" et des "Azure Container Instances" (méthode conseillée : depuis la ligne de commande Docker), ou bien par une Azure WebApp (qui peuvent maintenant embarquer une archi en docker-compose).

Ces phases ne seront faites que sous supervision (car une ligne de commande mal placée risquerait de créer un volume illimité de containers/machines virtuelles et un coût important).

​

Si le temps le permet on organisera des moments où chaque groupe tentera de déployer les autres archis proposées, et de trouver les failles dans les archis des autres (avec bienveillance et une posture plutôt "white hat").




<!-- GETTING STARTED -->

## Getting Started

Veuillez suivre les instructions sur la mise en place de ce projet localement.
Pour mettre en place une copie locale et la faire fonctionner, suivez les étapes simples qui suivent.
Pour faciliter le déploiement, vous pouvez exécuter le script.sh qui :
- fera la création des variables pour la connexion à la BdD
- générer des certificats pour la connexion https
- fera le docker build
- fera le docker-compose

### Prerequisites

Il s'agit de la liste des éléments nécessaires à l'utilisation du repository.
- openssl
  ```sh
  sudo apt install openssl
  ```
- si vous utilisez windows, il faut se mettre en wsl 2 pour utiliser Docker
  ```sh
  https://docs.microsoft.com/fr-fr/windows/wsl/install-win10
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Portage-docker/Portage_Docker.git
   ```
2. Placer vous dans le dossier du repo
   ```sh
   cd Portage_Docker
   ```
3. Exécuter le script sur wsl
   ```sh
   ./script.sh
   ``` 



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

<<<<<<< HEAD
Contributors - [@DamienPlantin](https://github.com/DamienPlantin) - [@Nico34000](https://github.com/Nico34000)
=======
Pour exécuter le script, se positionner dans le dossier du repo :
>>>>>>> 7a45ae8465f9fabac76c1996fe5a836a15728ceb

Project Link: [https://github.com/Portage-docker/Portage_Docker](https://github.com/Portage-docker/Portage_Docker)



<<<<<<< HEAD
<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Portage-docker/Portage_Docker.svg?style=for-the-badge
[contributors-url]: https://github.com/Portage-docker/Portage_Docker/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Portage-docker/Portage_Docker.svg?style=for-the-badge
[forks-url]: https://github.com/Portage-docker/Portage_Docker/network/members
[stars-shield]: https://img.shields.io/github/stars/Portage-docker/Portage_Docker.svg?style=for-the-badge
[stars-url]: https://github.com/Portage-docker/Portage_Docker/stargazers
[issues-shield]: https://img.shields.io/github/issues/Portage-docker/Portage_Docker.svg?style=for-the-badge
[issues-url]: https://github.com/Portage-docker/Portage_Docker/issues
[license-shield]: https://img.shields.io/github/license/Portage-docker/Portage_Docker.svg?style=for-the-badge
[license-url]: https://github.com/Portage-docker/Portage_Docker/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
=======
    $ ./script.sh
>>>>>>> 7a45ae8465f9fabac76c1996fe5a836a15728ceb
