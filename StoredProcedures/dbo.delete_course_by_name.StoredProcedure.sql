USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[delete_course_by_name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_course_by_name] @crsName nchar(50)
as
	delete from Course
	where Course_name = @crsName

GO
