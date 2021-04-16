USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Question_Header]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Update_Question_Header] @Question_Id int,@New_Question_Header nchar(10)
as
	if @Question_Id not in (select Ques_Id from Question)
		select 'Question Not Found'
	else
	begin
		update Question
		set Question.header = @New_Question_Header
		where Question.Ques_Id = @Question_Id
	end
GO
