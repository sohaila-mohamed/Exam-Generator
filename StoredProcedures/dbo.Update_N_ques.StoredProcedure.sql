USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_N_ques]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Update_N_ques] @New_ID int,@old_id int
as
	update Exam
	set N_Quest=@New_ID
	where N_Quest=@old_ID



GO
