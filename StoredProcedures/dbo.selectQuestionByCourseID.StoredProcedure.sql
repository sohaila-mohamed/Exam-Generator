USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[selectQuestionByCourseID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectQuestionByCourseID] @crsID int
as
	select * from Question where Course_Id = @crsID
GO
