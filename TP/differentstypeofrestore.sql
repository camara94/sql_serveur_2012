--BACKUP DATABASE gescom TO DISK='D:\mesbackupsqlserveur\backup\fullbackup.bak' MIRROR TO [unitfull]  WITH INIT, FORMAT, CHECKSUM;
--RESTORE VERIFYONLY FROM DISK='D:\mesbackupsqlserveur\backup\fullbackup.bak'

--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(100, 'backup diff', 'Avant backup')
--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(101, 'backup diff', 'Avant backup')


--BACKUP DATABASE gescom  TO DISK='D:\mesbackupsqlserveur\backup\diffbackup.bak'
--MIRROR TO [unitediff] WITH FORMAT, DIFFERENTIAL

--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(102, 'backup log 1', 'Avant backup log 1');
--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(103, 'backup log 1', 'Avant backup log 1');

--BACKUP LOG gescom TO [unitelog] WITH NOINIT

--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(104, 'backup log 2', 'Avant backup log 2');
--INSERT INTO [gescom].[stagiaire].[CATEGORIES] VALUES(105, 'backup log 2', 'Avant backup log 2');

--BACKUP LOG gescom TO [unitelog] WITH NOINIT;

--DELETE  FROM [gescom].[stagiaire].[CATEGORIES] WHERE [CODE_CATEGORIE]>90
SELECT * FROM [gescom].[stagiaire].[CATEGORIES];

