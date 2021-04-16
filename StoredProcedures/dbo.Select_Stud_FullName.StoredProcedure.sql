USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Stud_FullName]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_Stud_FullName]
as
	select ISNULL( F_name ,'UNKNOWN')+' '+ISNULL( L_name ,'UNKNOWN') [Full Name] from Student

---------
GO
