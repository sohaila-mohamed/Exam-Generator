USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentGrades]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAllStudentGrades] @stud_id int
as
	select Course_Id,grade,Stud_Id from Stud_Course where Stud_Id =@stud_id and grade is not null
	
GO
