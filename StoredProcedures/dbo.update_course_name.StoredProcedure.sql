USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[update_course_name]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_course_name] @new_name nchar(50), @old_name nchar(50)
as
	update Course
	set Course_name = @new_name
	where Course_name = @old_name

declare @newName nchar(50) = 'sql database', @oldName nchar(50) = 'database'
execute update_course_name @newName, @oldName

----------------------------------------

-----------------------------Insert---------------------------------
GO
