USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Stud_ID]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Stud_ID] @s_id int,@old_id int
as
	update Student
	set Stud_Id=@s_id
	where Stud_Id=@old_id

--------------
GO
