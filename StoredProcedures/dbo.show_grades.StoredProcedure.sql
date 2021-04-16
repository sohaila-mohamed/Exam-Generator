USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[show_grades]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[show_grades] @stud_id int
as
		select Stud_Course.grade,
		CONCAT( Student.F_name,' ',Student.L_name)[Full Name]
		from Stud_Course
		inner join Student on Stud_Course.Stud_Id=Student.Stud_Id and  Student.Stud_Id=@stud_id

GO
