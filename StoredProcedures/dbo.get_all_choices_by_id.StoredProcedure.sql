USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[get_all_choices_by_id]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[get_all_choices_by_id] @ques_id int
	as 
		select * from Ques_Choices where Ques_Id =@ques_id
GO
