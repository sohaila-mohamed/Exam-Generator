USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Instructor_LName]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_Instructor_LName] @InsID int, @LName nchar(50)
as
	update Instructor
	set L_name = @LName
	WHERE Inst_Id = @InsID;




--only by primary
--term as ins 1 foriegn in other tables
--Delete
GO
