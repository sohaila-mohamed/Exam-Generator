USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Exam_ID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_Exam_ID] @New_ID int,@old_id int
as
	update Exam
	set Exam_Id=@New_ID
	where Exam_Id=@old_ID



GO
