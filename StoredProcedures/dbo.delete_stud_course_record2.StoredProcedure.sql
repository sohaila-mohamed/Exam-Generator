USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[delete_stud_course_record2]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_stud_course_record2] @course_ID int
as
	delete from Stud_Course where Course_Id = @course_ID

---------------------------------------------------------

--delete by grade
GO
