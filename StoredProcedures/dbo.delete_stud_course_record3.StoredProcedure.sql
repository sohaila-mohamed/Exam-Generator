USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[delete_stud_course_record3]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_stud_course_record3] @grd int
as
	delete from stud_course where grade = @grd
GO
