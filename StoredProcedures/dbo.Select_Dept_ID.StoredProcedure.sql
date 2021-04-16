USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Dept_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Dept_ID] @stud_id int
as
	select Dept_name from Student inner join Department on Department.Dept_Id=Student.Dept_Id and Stud_Id=@stud_id
GO
