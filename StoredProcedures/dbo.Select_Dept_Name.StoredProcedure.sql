USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Dept_Name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_Dept_Name]
as
	select Dept_name from Department


-----------
GO
