USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[get_grade_by_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[get_grade_by_ID] @studID int
as
	select grade from Stud_Course
	where Stud_Id = @studID
GO
