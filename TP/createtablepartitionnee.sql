USE mawatta
GO

CREATE TABLE commande (
	no_commande   NUMERIC(6),
	code_client   CHAR(5),
	no_employe    NUMERIC(6),
	date_commande DATE,
	date_envoi    DATE,
	portt          NUMERIC(8, 2)
) ON partition_commande(date_commande);