USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_stud_course_record]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_stud_course_record] @stud_ID int, @course_ID int, @stud_grade int
as
	insert into Stud_Course
	values(@stud_ID, @course_ID, @stud_grade)

-------------------------------------------------------------------

-----------------------------DELETE---------------------------------

--delete by student ID
GO
