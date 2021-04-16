USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Instructor]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_Instructor] @InsID int, @DID int, @FName nchar(50), @LName nchar(50)
as
	update Instructor
	set Dept_Id = @DID, F_name = @FName, L_name = @LName
	WHERE Inst_Id = @InsID;


-----------
GO
