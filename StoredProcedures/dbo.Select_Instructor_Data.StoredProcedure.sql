USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Instructor_Data]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Instructor_Data] @ID int
as
	select * from Instructor
	where Inst_Id = @ID


-----------
GO
