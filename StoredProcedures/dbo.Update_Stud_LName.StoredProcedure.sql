USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Stud_LName]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Stud_LName] @Name_L nchar(50),@id int
as
	update Student
	set L_name=@Name_L
	where Stud_Id=@id

-------------------
GO
