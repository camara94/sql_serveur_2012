--CREATE DATABASE mawatta 
--USE mawatta
--CREATE TABLE client(id INT, nom char(20), salaire FLOAT)
--INSERT INTO client VALUES(1, 'Dupond', 2000),(2, 'Martin', 3500),(3, 'Harbazan', 7800)
--SELECT * FROM client

CREATE DATABASE mawatta_snapshot 
ON 
(
	name='mawatta', 
	filename='D:\mesbackupsqlserveur\snapshot\mawatta_snapshot.mdf'
)
AS SNAPSHOT OF mawatta
