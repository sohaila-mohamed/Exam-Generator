USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_course]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_course] @course_ID int, @instructor_ID int, @course_name nchar(50)
as
	insert into Course
	values(@course_id, @instructor_ID, @course_name)

declare @cID int = 202, @iID int = 2
declare @cName nchar(50) = 'C Sharp'
execute insert_course @cID, @iID, @cName
	
-----------------------------------------

-----------------------------Delete---------------------------------

--delete course by course ID
GO
