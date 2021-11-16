CREATE TRIGGER log_ddl_user 
ON DATABASE 
FOR DDL_TABLE_EVENTS
AS
INSERT INTO [dbo].[journal](dateetheure, utilisateur, evenement, instruction, context)
VALUES(
	   GETDATE(), 
	   CURRENT_USER, 
	   EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]','NVARCHAR(100)'),
       EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand)[1]','NVARCHAR(200)'),
	   EVENTDATA()
)

CREATE TABLE personne(nom NVARCHAR(104))