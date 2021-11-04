CREATE TABLE COMMANDES  (
   NO_COMMANDE          NUMERIC(6)                       NOT NULL,
   CODE_CLIENT          CHAR(5)                         NOT NULL,
   NO_EMPLOYE           NUMERIC(6)                       NOT NULL,
   DATE_COMMANDE        DATE                            NOT NULL,
   DATE_ENVOI           DATE,
   PORT                 NUMERIC(8,2)
);
