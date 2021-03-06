USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Topic_Name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Topic_Name] @Name nchar(50)
AS
IF EXISTS
(
    SELECT *
    FROM topic
    WHERE name = @Name
)
    BEGIN
	delete FROM topic WHERE name=@Name;
	END
ELSE
BEGIN
PRINT 'Topic Name Not Exists'
END
GO
