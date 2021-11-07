/****** Script de la commande SelectTopNRows à partir de SSMS  ******/
SELECT TOP (1000) [NO_COMMANDE]
      ,[CODE_CLIENT]
      ,[NO_EMPLOYE]
      ,[DATE_COMMANDE]
      ,[DATE_ENVOI]
      ,[PORT]
  FROM [gescom].[stagiaire].[COMMANDES]