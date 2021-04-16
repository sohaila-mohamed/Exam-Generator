USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[getQuestionDataUsingId]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[getQuestionDataUsingId] @Question_Id int
as
	if @Question_Id not in (select Ques_Id from Question)
		select 'Question Not Found'
	else
	begin
		Select *
		from Question
		where Ques_Id=@Question_Id
	end
GO
