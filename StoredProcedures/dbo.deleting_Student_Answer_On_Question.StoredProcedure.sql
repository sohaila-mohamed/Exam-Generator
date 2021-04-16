USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[deleting_Student_Answer_On_Question]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--delete (using 3 ids)
create Proc [dbo].[deleting_Student_Answer_On_Question] @Student_Id int,@Exam_Id int,@Question_Id int
as
	begin
		delete from Stud_Answer
		where Stud_Answer.Stud_Id = @Student_Id and Stud_Answer.Exam_Id = @Exam_Id and Stud_Answer.Ques_Id = @Question_Id
	end
GO
