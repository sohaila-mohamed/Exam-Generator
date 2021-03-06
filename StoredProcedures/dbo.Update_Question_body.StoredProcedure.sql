USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Question_body]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Update_Question_body] @Question_Id int,@New_Question_Body varchar(50)
as
	if @Question_Id not in (select Ques_Id from Question)
		select 'Question Not Found'
	else
	begin
		update Question
		set Question.body = @New_Question_Body
		where Question.Ques_Id = @Question_Id
	end
GO
