USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Stud_by_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Stud_by_ID] @id int
as
	Delete Student
	where Stud_Id=@id

------------
GO
