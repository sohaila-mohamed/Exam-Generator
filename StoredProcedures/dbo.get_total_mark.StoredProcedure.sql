USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[get_total_mark]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_total_mark]
as 
	begin
		select sum(mark) from Stud_Answer as temp inner join Question on Question.Ques_Id = temp.Ques_Id 
	end
GO
