USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Instructors_FName]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Instructors_FName]
as
	select F_name from Instructor


-----------
GO
