--SELECT DATABASEPROPERTYEX('mawatta', 'updateability') as valeur
--SELECT name, user_access_desc, state_desc FROM sys.databases;
--sp_helpdb mawatta
--sp_spaceused
--SELECT DATABASEPROPERTYEX('mawatta', 'isautoshrink')
ALTER DATABASE mawatta SET AUTO_CLOSE ON
SELECT DATABASEPROPERTYEX('mawatta', 'isautoclose');
