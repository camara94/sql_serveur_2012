USE mawatta
GO

ALTER DATABASE mawatta
ADD FILE
(
	NAME=file_data_04,
	FILENAME='c:\mawatta\data\file_data_04.ndf',
	SIZE=10MB,
	MAXSIZE=100MB,
	FILEGROWTH=5%
)
TO FILEGROUP groupe_file_04;