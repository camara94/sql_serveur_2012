--CREATE TABLE voitures(num INT, modele VARCHAR(50))
--INSERT INTO voitures VALUES(1, 'Peugeot 207');

--BEGIN TRAN t1
--    INSERT INTO voitures VALUES(2, 'Renault clio 2');
--	SELECT * FROM voitures;
-- ROLLBACK TRAN t1

--BEGIN TRAN t2
--	INSERT INTO voitures VALUES(2, 'MERCEDES Classe E');
--COMMIT TRAN t2

--BEGIN TRAN t3
--	DELETE  FROM [mawatta].[dbo].[voitures] WHERE num=2;
--COMMIT TRAN t3

BEGIN TRAN t4
	INSERT INTO voitures VALUES(3, 'Audit A3');
	SAVE TRAN SP1

	INSERT INTO voitures VALUES(4, 'Audit A6');
	SAVE TRAN SP2

	INSERT INTO voitures VALUES(5, 'Audit A3');
	SAVE TRAN SP3

ROLLBACK TRAN SP1

COMMIT TRAN t4
SELECT * FROM voitures