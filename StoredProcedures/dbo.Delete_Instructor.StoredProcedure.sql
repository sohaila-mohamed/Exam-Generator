USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Instructor]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Delete_Instructor] @InsID int
as
	delete FROM Instructor WHERE Inst_Id = @InsID





--insert
GO
