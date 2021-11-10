USE [master]
GO
EXEC master.dbo.sp_addumpdevice  @devtype = N'disk', @logicalname = N'unitediff', @physicalname = N'D:\mesbackupsqlserveur\unitelogique\unitediff.bak'
GO
