USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Get_grade_for_stud]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_grade_for_stud] @stud_id int
as
	select Course_name,grade from Course inner join Stud_Course
	on Course.Course_Id = Stud_Course.Course_Id and Stud_Course.Stud_Id = @stud_id
GO
