USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Stud_by_fName]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Stud_by_fName] @Fname nchar(50)
as
	Delete Student
	where F_name=@Fname

------------
GO
