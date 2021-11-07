CREATE PARTITION SCHEME partition_commande
AS PARTITION partion_date TO (groupe_file_01, groupe_file_02, groupe_file_03, groupe_file_04);