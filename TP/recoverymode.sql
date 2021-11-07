ALTER DATABASE mawatta SET recovery FULL
--SELECT  DATABASEPROPERTYEX('mawatta', 'recovery') as 'Mode de récupération'

SELECT name, recovery_model_desc FROM sys.databases