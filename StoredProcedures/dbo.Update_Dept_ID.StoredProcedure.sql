USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Dept_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Dept_ID] @New_ID int,@old_id int
as
	update Department
	set Dept_Id=@New_ID
	where Dept_Id=@old_ID


--------------
GO
