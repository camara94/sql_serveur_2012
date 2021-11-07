USE [gescom]
GO

/****** Object:  PartitionFunction [partition_date]    Script Date: 07/11/2021 01:49:25 ******/
CREATE PARTITION FUNCTION [partition_date_2](date) AS RANGE RIGHT FOR VALUES (N'1996-01-01T00:00:00.000', N'1997-01-01T00:00:00.000', N'1998-01-01T00:00:00.000')
GO


