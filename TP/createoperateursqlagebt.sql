USE [msdb]
GO
EXEC msdb.dbo.sp_add_operator @name=N'LDC', 
		@enabled=1, 
		@weekday_pager_start_time=80000, 
		@weekday_pager_end_time=180000, 
		@pager_days=62, 
		@email_address=N'ldamaro94@gmail.com'
GO
