USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Dept_Name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Dept_Name] @Name nchar(50)
as
	delete FROM Department WHERE Dept_name=@Name;


--insert
GO
