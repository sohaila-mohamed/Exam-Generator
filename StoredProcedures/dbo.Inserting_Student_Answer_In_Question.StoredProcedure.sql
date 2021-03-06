USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Inserting_Student_Answer_In_Question]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Inserting_Student_Answer_In_Question] @Student_Id int,@Exam_Id int,@Question_Id int,@Submitted_answer nchar(50)
as
	begin
		insert into Stud_Answer(Exam_Id,Ques_Id,Stud_Id,Sub_Ans) values (@Exam_Id,@Question_Id,@Student_Id,@Submitted_answer)
			select 'Student Answer Inserted Successfully in Stud_Answer Table'
	end
GO
