USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Dept_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Dept_ID] @ID int
as
	delete FROM Department WHERE Dept_Id=@ID;



------
GO
