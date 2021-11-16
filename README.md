# SQL Serveur 2012
## Description de la formation
**SQL Server** est un système de gestion de base de données lancé par **Microsoft**. Il a pour fonction de stocker les données et de vérifier les contraintes d’intégrité définies.

Les administrateurs de données **SQL Server** sont en très forte demande partout dans le monde.

Votre **expert base de données**, Noureddine DRISSI, vous a préparé cette formation **SQL Server 2012 (70-462)** qui vous fournit les connaissances et les compétences nécessaires pour administrer et maintenir un environnement de base de données Microsoft SQL Server 2012 .

Pendant cette formation **SQL Server 2012 (70-462)**, Noureddine vous décompose les nombreuses facettes de bases de données sous SQL Server 2012 en partant des notions les plus basiques jusqu’aux secrets les plus profonds. Il vous dévoile aussi les bonnes pratiques à suivre pour éviter les erreurs classiques et optimiser votre déploiement.

Durant cette formation **SQL Server 2012 (70-462)**, vous apprendrez à installer et configurer SQL Server 2012, comment gérer une base de données sous **SQL Server 2012**. Vous apprendrez la sauvegarde, la restauration, l'importation, l'exportation, comment sécuriser les accès.

A l'issue de cette formation **SQL Server 2012**, vous serez capable de passer l'examen 70-462.

Noureddine fera de vous un excellent DBA et vous aidera à obtenir votre certification MCSA.

Durant des formations ultérieures, il vous accompagnera pour l'obtention des certifications MCSE : Data Platform et Business Intelligence.

## Objectifs
* Pouvoir installer et configurer SQL Server 2012,
* Pouvoir gérer les fichiers de base de données SQL Server 2012,
* Définir une stratégie de sauvegarde et de restauration des bases de données SQL Server 2012,
* Analyse et compréhension du SQL Server 2012,
* Transfert des données dans et à partir de SQL Server 2012,
* Pouvoir automatiser les tâches d’administration sous SQL Server 2012,
* Comprendre l’architecture de SQL Server 2012,
* Répliquer les données entre les instances SQL Server 2012.

## Prérequis
* Avoir suivi la formation Langage SQL est un plus,
* Connaissances de base du système d’exploitation Windows,
* Expérience professionnelle de Transact-SQL,
* Expérience professionnelle des bases de données relationnelles,
* Expérience en matière de conception de bases de données.

## Quelques commandes
* <code>USE gestion</code>: l'instruction **USE** permet de changer la base de travail

## SQLCMD

* pour afficher de l'aide <code>qslcmd -?</code>

* pour se connecter à l'instance par default
  * <code>hostname</code> celle-ci va afficher le nom de l'ordinateur sur le réseau puis on copie ce nom
  * <code> sqlcmd -E -S hostname</code>
  * Pour afficher la liste de toutes les bases de données <code>SELECT name FROM sys.databases;</code>
  
* Pour executer un script avec **SQLCMD**, <code>sqlcmd -E -S **nomdelinstance** -i **cheminduscript**</code>
* Pour utiliser une variable avec **SQLCMD** <code>sqlcmd -E -S DESKTOP-MO6K1QN\SSIS -i C:\Users\damaro\sql_serveur_2012\TP\variable.sql -v database="msdb"</code>

* Pour enregistrer la sortie dans un fichier et utiliser une variable avec **SQLCMD** <code>sqlcmd -E -S DESKTOP-MO6K1QN\SSIS -i C:\Users\damaro\sql_serveur_2012\TP\variable.sql -v database="msdb" -o C:\Users\damaro\sql_serveur_2012\output.txt</code>

## Modification des ressources
Nous pouvons modifier les valeurs soit avec **MSSM**, soit avec la procedure **sp_configure**
<pre>
<code>
USE master;
GO

EXEC sp_configure 'show advanced option', '1';
GO

EXEC sp_configure 'show advanced option';
GO

RECONFIGURE WITH OVERRIDE
GO
</code>
</pre>


## Configuration d'une base de données 
![image 1](images/1.png)

## Architecture d'une base de données
![image 2](images/2.png)

## Pour lire les fichier journaux

<code>SELECT * FROM ::fn_dblog(null, null)</code>

![image 3](images/3.png)

## Caractéristique des fichiers
![image 4](images/4.png)

## Structure des fichiers
![image 5](images/5.png)


## Une extension
![image 6](images/6.png)

## Types d'extension

* une **extension mixte**: est une extension qui peut contenir les données de plusieurs tables.
* une **extension uniforme ou spécialisée**: est  une extension qui ne contient que les données d'un seul object.
![image 7](images/7.png)

## Création d'une base de données

![image 8](images/8.png)

## En transact SQL

![image 9](images/9.png)

## Syntaxe complete

![image 10](images/10.png)

## Cas pratique

![image 11](images/11.png)

## Gestion d'une base de données

![image 12](images/12.png)

## Modification d'une base de données

![image 13](images/13.png)

## Changement d'un fichier logique

<pre>
<code>
ALTER DATABASE mawatta 
MODIFY FILE
(
	NAME=ma_mere,
	NEWNAME=mawatta01
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
MODIFY FILE
(
	NAME=mawatta01,
	MAXSIZE=300MB,
	FILEGROWTH=0
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
MODIFY FILE
(
	NAME=mawatta01,
	SIZE=16MB
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
MODIFY FILE
(
	NAME=mawatta02,
	MAXSIZE=100MB
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
MODIFY FILE
(
	NAME=mawatta_log01,
	SIZE=13MB
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
ADD FILE
(
	NAME=mawatta03,
	FILENAME='c:\mawatta\data\mawatta03.ndf',
	SIZE=12MB,
	MAXSIZE=120MB,
	FILEGROWTH=5%
)
</code>
</pre>

<pre>
<code>
ALTER DATABASE mawatta 
ADD LOG FILE
(
	NAME=mawatta_log02,
	FILENAME='c:\mawatta\logs\mawatta_log02.ndf',
	SIZE=10MB,
	MAXSIZE=125MB,
	FILEGROWTH=10%
)
</code>
</pre>

## Libérer de l'espace disque inutilisé
![image 14](images/14.png)

## Shrink database

![image 15](images/15.png)

## Affichage du nom de la base courant

<code>SELECT db_name();</code>

## Affichage de l'ID de la base courant

<code>SELECT db_id();</code>

![image 16](images/16.png)

**NB**:
La taille compressée ne descend pas en dessous de la taille lors de la declaration.

## compresser la taille d'un fichier
![image 17](images/17.png)

![image 18](images/18.png)

## Groupe de fichier
![image 19](images/19.png)

## Utilisation des groupe de fichier
![image 20](images/20.png)

## Syntaxe de création d'un groupe de fichier

![image 21](images/21.png)

![image 22](images/22.png)

## Ajouter un fichier à un groupe de fichier

![image 23](images/23.png)

![image 24](images/24.png)

## Création de table dans un groupe de fichier(tablespace)

![image 25](images/25.png)

## Création d'index dans une table et groupe de fichier(tablespace)

![image 26](images/26.png)

## Le partitionnement

![image 27](images/27.png)

## Exemple

![image 28](images/28.png)

## Mise en oeuvre du partitionnement

![image 29](images/29.png)

## Comment ça marche la Fonction de partitionnement 

![image 30](images/30.png)

## Création de fonction de partitionnement

![image 31](images/31.png)

## Exemple

![image 32](images/32.png)

## Schema de partitionnement

![image 33](images/33.png)

## Création d'un schema de partitionnement

![image 34](images/34.png)

## Exemple transact-sql

![image 35](images/35.png)

## Création des objets de partition 

![image 36](images/36.png)

## Configurer une base de données

![image 37](images/37.png)

## Option de configuration

![image 38](images/38.png)

## Afficher les options de configuration

![image 39](images/39.png)

## Modification des options de configuration d'une base de données

![image 40](images/40.png)

## Les transactions 

![image](images/41.png)

## Syntaxe d'une transaction

![image 42](images/42.png)

## Les vérrous 

![image 43](images/43.png)

## La journalisation sous sql serveur 2012

![image 44](images/44.png)

## Le fonctionnement des fichiers journaux sous sql serveur 2012

![image 45](images/45.png)

## Les checkpoint 
c'est la durée à travers laquelle sql serveur ou tout serveur de base de donées synchronise synchrone les page de 8K dans fichiers data(.mdf, .ndf), mais on peut modifier le checkpoint par defaut à travers cette commande ci-dessous:

![image 46](images/46.png)

## Mode de récupération

![image 47](images/47.png)

## Mode de récupération: Simple

![image 48](images/48.png)

## Mode de récupération: Complet(recommandé)

![image 49](images/49.png)

## Mode de récupération: journalisé en bloc

![image 50](images/50.png)

## Compression des données

![image 51](images/51.png)

## Les clés et les certificats

![image 52](images/52.png)

## Certificats

![image 53](images/53.png)

## Hiérarchie de chiffrage

![image 54](images/54.png)

## Clé maître de service

![image 55](images/55.png)

## Clé maître de base de données

![image 56](images/56.png)

## Comment utilisé la maître de base de données

![image 57](images/57.png)

## Création de certificats

![image 58](images/58.png)

## Les clés asymetriques

![image 59](images/59.png)

## Les clés symetriques

![image 60](images/60.png)

## crypte un champs

![image 61](images/61.png) 

![image 62](images/62.png) 

## decrypte le champs

![image 63](images/63.png)

## Pourquoi sauvegarde

![image 64](images/64.png)

## Les caractéristique d'un sauvegarde

![image 65](images/65.png)

## Les methodes de sauvegarde

![image 66](images/66.png)

## Sauvegarde complète de la base de données

![image 67](images/67.png)

## Sauvegarde différentielle de la base de données

![image 68](images/68.png)

## Sauvegarde de journal de transaction de la base de données

![image 69](images/69.png)

## Sauvegarde partielle de la base de données

![image 70](images/70.png)

## Destination des sauvegardes

![image 71](images/71.png)

## Instruction BACKUP

![image 72](images/72.png)

## Caractéristique d'une sauvegarde différentielle

![image 73](images/73.png)

## Syntaxe de la sauvegarde différentielle

![image 74](images/74.png)

## Sauvegarde du journale des transactions

![image 75](images/75.png)

## Syntaxe de la Sauvegarde du journale des transactions

![image 76](images/76.png)

## Sauvegarde de groupe de fichiers

![image 77](images/77.png)

## Syntaxe de la Sauvegarde de groupe de fichiers

![image 78](images/78.png)

## Sauvegarde partielle

![image 79](images/79.png)

## Syntaxe d'une sauvegarde partielle

![image 80](images/80.png)

## Prérequis des sauvegarde

![image 81](images/81.png)

## Prérequis des sauvegarde 2

![image 81](images/82.png)

## Type de restauration

![image 83](images/83.png)

## Option de la commande RESTORE

![image 84](images/84.png)

## Capture instantannée de base de données

![image 85](images/85.png)

## Comment ça fonctionne

![image 86](images/86.png)

## Comment créer un snapshot 

![image 87](images/87.png)

## Architecture de transfère

![image 88](images/88.png)

## Les outils de transfert

![image 89](images/89.png)

## SSIS

![image 90](images/90.png)

## Architecture SSIS

![image 91](images/91.png)

## Flux de données

![image 92](images/92.png)

## Utilisation de SSIS

![image 93](images/93.png)

## ETL
### Création du fractionnement Conditionnelle
![image 93](images/fractionnement_conditionnelle.png)

## Un package SSIS

![image 93](images/exemple_etl_avec_le_concepteur.png)

## Déploiement du package

![deployer](images/deployer.png)

## BCP

![image 94](images/94.png)

## BULK INSERT

![image 95](images/95.png)

## Commande BULK INSERT

![image 96](images/96.png)

## Authentification SLQ Serveur

![image 97](images/97.png)

## Architecture de sécurité

![image 98](images/98.png)

## Mode d'authentification

![image 99](images/99.png)

## Entités de sécurités

![image 100](images/100.png)

## Configuré les entités de sécurité

![image 101](images/101.png)

![image 102](images/102.png)

## Entités de sécurités - vues systèmes

![image 103](images/103.png)

## Modifiés les entités de sécurités

![image 104](images/104.png)

## Les credentials

![image 105](images/105.png)

## Comment créer un credentials

![image 106](images/106.png)

## Les utilisateur de base de données

![image 107](images/107.png)

## Les utilisateur particuliers

![image 108](images/108.png)
##
![image 109](images/109.png)

## Comment créer un utilisateur de base de données

![image 110](images/110.png)

## Afficher les information sur les utilisateurs

![image 111](images/111.png)

## Schema

![image 112](images/112.png)

## Comment créer un schema

![image 113](images/113.png)

## Les droits d'accès sous SQL Serveur

![image 114](images/114.png)

## Gestion des privilèges

![image 115](images/115.png)

## La liste de quelques privilèges

![image 116](images/116.png)

## Syntaxe

![image 117](images/117.png)

## Privilèges sur les objets  

![image 118](images/118.png)

## Agent SQL Serveur

![image 119](images/119.png)

## Configuration du  service de messagerie

![image 120](images/120.png)

## Les opérateurs

![image 121](images/121.png)

## Les alertes

![image 122](images/122.png)

## Quand déclencher une alerte

![image 123](images/123.png)

## Création d'une alerte

![image 124](images/124.png)

## Les travaux 

![image 125](images/125.png)

## Plan de maintenance

![image 126](images/126.png)

![image 127](images/126.png)

## Audit au niveau de SQL Serveur

![image 128](images/128.png)

## Audit au niveau d'une base de données

![image 129](images/129.png)

## SQL Profiler

![image 130](images/130.png)

## Déclencheur DDL

![image 131](images/131.png)