USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[update_Student_Answer_In_Question]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[update_Student_Answer_In_Question] @Student_Id int,@Exam_Id int,@Question_Id int,@Submitted_answer nchar(50)
as
	begin
		update Stud_Answer
		set Sub_Ans = @Submitted_answer
		where stud_Id = @Student_Id and Exam_Id = @Exam_Id and Ques_Id = @Question_Id
	end
GO
