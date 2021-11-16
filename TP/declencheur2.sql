CREATE TRIGGER no_drop_table 
ON DATABASE
FOR DROP_TABLE, ALTER_TABLE
AS 
	PRINT 'Modification ou Suppression des tables interdites sur la base gescom !'
ROLLBACK;

CREATE TABLE prospect (no_pros INT, nom NVARCHAR(100));

SELECT * FROM [dbo].[journal]

DROP TABLE [dbo].[prospect]
