USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[student_courses]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[student_courses] @stud_id int
as 
	select course_name ,Course.Course_Id as courseid from Course inner join Stud_Course
	on Course.Course_Id = Stud_Course.Course_Id 
	and Stud_Id =@stud_id
GO
