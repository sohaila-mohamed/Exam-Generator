USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Time]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Delete_Time] @ID int
as
--not existing row 
	delete FROM Exam WHERE Time=@ID;



GO
