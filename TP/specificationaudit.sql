USE [gescom]

GO

CREATE DATABASE AUDIT SPECIFICATION [DatabaseAuditSpecification_base_Gescom]
FOR SERVER AUDIT [Audit_Action_Base_gescom]
ADD (DELETE ON OBJECT::[laby].[damaro] BY [dbo]),
ADD (SCHEMA_OBJECT_CHANGE_GROUP)

GO


