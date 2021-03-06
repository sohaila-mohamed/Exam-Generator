USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Question_Mod_Answer]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Update_Question_Mod_Answer] @Question_Id int,@New_Question_Mod_Answer nchar(50)
as
	if @Question_Id not in (select Ques_Id from Question)
		select 'Question Not Found'
	else
	begin
	--we don't need to check model answer validity!!
		update Question
		set Question.Model_Ans = @New_Question_Mod_Answer
		where Question.Ques_Id = @Question_Id
	end
GO
