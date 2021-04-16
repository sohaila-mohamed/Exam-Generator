USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[getAllQuestionsInExam]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getAllQuestionsInExam] @ExamId int
as 
	begin
		select Q.Ques_Id,Q.body,Q.mark,Q.header,Q.Model_Ans ,Q.Course_Id
		from Question [Q]inner join Exam_Ques
		on Exam_Ques.Exam_Id = @ExamId and Exam_Ques.Ques_Id = Q.Ques_Id
	end
GO
