USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Instructor_FName]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_Instructor_FName] @InsID int, @FName nchar(50)
as
	update Instructor
	set F_name = @FName
	WHERE Inst_Id = @InsID;


-----------
GO
