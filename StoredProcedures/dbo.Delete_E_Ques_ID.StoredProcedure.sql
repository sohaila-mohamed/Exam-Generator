USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_E_Ques_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_E_Ques_ID] @ID int
as
--not existing row 
	delete FROM Exam_Ques WHERE Ques_Id=@ID;



GO
