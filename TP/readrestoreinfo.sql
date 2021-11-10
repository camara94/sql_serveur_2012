--BACKUP DATABASE gescom TO DISK='D:\mesbackupsqlserveur\donnees.bak';

--RESTORE HEADERONLY FROM DISK='D:\mesbackupsqlserveur\donnees.bak';

--RESTORE FILELISTONLY FROM DISK='D:\mesbackupsqlserveur\donnees.bak';

--RESTORE LABELONLY FROM DISK='D:\mesbackupsqlserveur\donnees.bak';

RESTORE VERIFYONLY FROM DISK='D:\mesbackupsqlserveur\donnees.bak';