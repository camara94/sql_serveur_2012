--Pour pouvoir faire une sauvegarde differentielle il faut au préalable faire d'abord une
-- sauvegarde complet
--BACKUP DATABASE mawatta TO DISK='D:\mesbackupsqlserveur\autre_compress.bak' WITH INIT, COMPRESSION
BACKUP DATABASE 
mawatta TO DISK='D:\mesbackupsqlserveur\autre_compress.bak' 
WITH DIFFERENTIAL, COMPRESSION