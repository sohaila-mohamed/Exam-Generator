USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[update_grade]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_grade] @stu_ID int ,@new_grade int, @course_id int 
as
	update Stud_Course
	set grade = @new_grade
	where Stud_Id = @stu_ID and @course_id=Course_Id
GO
