CREATE TABLE journal(
	identifiant INT IDENTITY,
	dateetheure NVARCHAR(100),
	utilisateur NVARCHAR(100),
	instruction NVARCHAR(200),
	context XML
);