USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Dept_Name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Dept_Name] @New_Name nchar(50),@_id int
as
	update Department
	set Dept_name=@New_Name
	where Dept_Id=@_id



--Delete
GO
