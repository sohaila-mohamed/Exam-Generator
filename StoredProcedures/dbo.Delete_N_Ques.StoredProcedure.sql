USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_N_Ques]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_N_Ques] @ID int
as
--not existing row 
	delete FROM Exam WHERE N_Quest=@ID;


GO
