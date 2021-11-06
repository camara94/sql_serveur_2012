CREATE DATABASE mawatta
ON PRIMARY
(
	NAME=mawatta01,
	FILENAME='c:\mawatta\data\mawatta01.mdf',
	SIZE=10MB,
	MAXSIZE=100MB,
	FILEGROWTH=0
),
(
	NAME=mawatta02,
	FILENAME='c:\mawatta\data\mawatta02.ndf',
	SIZE=10MB,
	MAXSIZE=100MB,
	FILEGROWTH=10MB
)
LOG ON
(
	NAME=mawatta_log01,
	FILENAME='c:\mawatta\logs\mawatta_log01.ldf',
	SIZE=10MB,
	MAXSIZE=200MB,
	FILEGROWTH=10%
)
COLLATE FRENCH_CS_AS;