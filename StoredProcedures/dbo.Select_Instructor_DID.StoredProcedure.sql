USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Instructor_DID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Instructor_DID] @ID int
as
	select Dept_Id from Instructor
	where Inst_Id = @ID

-----------
GO
