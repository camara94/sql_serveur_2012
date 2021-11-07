CREATE PARTITION SCHEME partition_commande
AS PARTITION partition_date TO (groupe_01, groupe_02, groupe_03, groupe_04);