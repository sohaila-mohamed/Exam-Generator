USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Q_ID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_Q_ID] @New_ID int,@old_id int
as
	update Exam_Ques
	set Ques_Id=@New_ID
	where Ques_Id=@old_ID


--------------

GO
