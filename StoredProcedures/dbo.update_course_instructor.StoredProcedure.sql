USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[update_course_instructor]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_course_instructor] @new_ins int, @old_ins int
as
	update Course
	set Instructor_Id = @new_ins
	where Instructor_Id = @old_ins

declare @id2 int = 1, @ol_id2 int = 2
execute update_course_instructor @id2, @ol_id2

----------------------------------------

--update course name
GO
