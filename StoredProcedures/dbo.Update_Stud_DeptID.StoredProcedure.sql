USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Stud_DeptID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Stud_DeptID] @D_id int,@id int
as
	update Student
	set Dept_Id=@D_id
	where Stud_Id=@id


--Delete
GO
