SELECT login_name, host_name,program_name FROM sys.dm_exec_sessions where is_user_process=1
--ALTER DATABASE gescom SET single_user WITH ROLLBACK immediate;