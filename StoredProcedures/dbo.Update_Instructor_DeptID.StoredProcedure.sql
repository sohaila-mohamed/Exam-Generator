USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Instructor_DeptID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Update_Instructor_DeptID] @InsID int, @DID int
as
	update Instructor
	set Dept_Id = @DID
	WHERE Inst_Id = @InsID;


-----------
GO
