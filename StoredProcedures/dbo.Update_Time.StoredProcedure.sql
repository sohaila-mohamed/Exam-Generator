USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Time]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_Time] @New_ID int,@old_id int
as
	update Exam
	set Time=@New_ID
	where Time=@old_ID


GO
