ALTER DATABASE mawatta SET recovery FULL
--SELECT  DATABASEPROPERTYEX('mawatta', 'recovery') as 'Mode de r�cup�ration'

SELECT name, recovery_model_desc FROM sys.databases