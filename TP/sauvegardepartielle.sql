BACKUP DATABASE gescom READ_WRITE_FILEGROUPS TO DISK='D:\mesbackupsqlserveur\data.bak'

RESTORE VERIFYONLY FROM DISK='D:\mesbackupsqlserveur\data.bak'
