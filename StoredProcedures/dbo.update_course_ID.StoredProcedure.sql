USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[update_course_ID]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_course_ID] @New_ID int,@old_id int
as
	update Course
	set Course_Id=@New_ID
	where Course_Id=@old_ID

declare @id int=101 ,@ol_id int=1;
execute update_course_ID @id ,@ol_id

--------------------------------------

--update course instructor ID
GO
