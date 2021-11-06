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