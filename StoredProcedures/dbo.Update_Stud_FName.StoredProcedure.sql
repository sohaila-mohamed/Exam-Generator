USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Stud_FName]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Stud_FName] @Name_F nchar(50),@id int
as
	update Student
	set F_name=@Name_F
	where Stud_Id=@id

--------------
GO
