USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[getInstructorCourses]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getInstructorCourses] @insID int
as
select Course_name, Course_Id as courseid from Course where Instructor_Id = @insID
GO
