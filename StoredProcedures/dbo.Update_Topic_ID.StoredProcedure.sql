USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Topic_ID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--update
create proc [dbo].[Update_Topic_ID] @topic_ID_old int,@topic_id_new int
as
	update topic
	set topic_Id=@topic_id_new
	where topic_Id=@topic_ID_old




-----------testing
declare @id int=3 ,@old_id int=2;
execute Update_Topic_ID @id ,@old_id
--------------



GO
