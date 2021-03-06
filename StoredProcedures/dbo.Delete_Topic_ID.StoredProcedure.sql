USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Topic_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Topic_ID] @ID int
AS
IF EXISTS
(
    SELECT *
    FROM topic
    WHERE topic_Id = @ID
)
    BEGIN
	delete FROM topic WHERE topic_Id=@ID
	END
ELSE
BEGIN
PRINT 'Topic Id Not Exists'
END

---------------------------------

GO
