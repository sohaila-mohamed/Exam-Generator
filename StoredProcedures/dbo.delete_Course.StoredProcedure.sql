USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[delete_Course]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_Course] @c_id int
as
	delete from Course
	where Course_Id = @c_id

-------------------------------------------

--delete course by course name
GO
