USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Question]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Insert_Question] @Question_Id int,@Body nchar(50), @mark int,@header nchar(50)
as
	if @Question_Id in (select Ques_Id from Question)
		select 'Question with the same Id already Exists'
	else
		begin
			insert into Question(Ques_Id,body,mark,header) values(@Question_Id,@Body,@mark,@header)
			select 'Answer Inserted Successfully'
		end
GO
