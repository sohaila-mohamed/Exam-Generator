USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[DeleteQuestionById]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteQuestionById] @Question_Id int
as 
	if @Question_Id not in (select Ques_Id from Question)
		select 'Question Not Found to be deleted'
	else
	begin
		--delete from Ques_Choices
		--where Ques_Id = @Question_Id
		----what about Exam_ques table don't know how to deal with it?!!!
		--delete from Stud_Answer
		--where Ques_Id = @Question_Id
		--
		delete from Question
		where Ques_Id = @Question_Id
	end
GO
