USE [ExamProject]
GO
/****** Object:  UserDefinedFunction [dbo].[get_total_mark1]    Script Date: 4/16/2021 11:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[get_total_mark1] (@Exam_ID int,@course_ID int)
returns int 
	begin
	declare @sum int
		select @sum= sum(mark)from Question inner join Exam_Ques on Exam_Ques.Ques_Id = Question.Ques_Id and Exam_Ques.Exam_Id=@Exam_id and Question.Course_Id=@course_ID
	return @sum
	end
GO
