USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Exam_Correction]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Exam_Correction] @stud_id int ,@Exam_id int ,@courseID int
as
	begin
		declare @studgrade int

		select @studgrade= isnull((sum(isnull(mark,0))*100 )/(select dbo.get_total_mark1(@Exam_id,@courseID)),0)--[Student Grade],
		--Question.Course_Id ,
		--CONCAT( Student.F_name,' ',Student.L_name)[Full Name],Course.Course_name
		from Stud_Answer inner join Question
		on Question.Ques_Id = Stud_Answer.Ques_Id 
		--inner join Student on  Student.Stud_Id=Stud_Answer.Stud_Id
		inner join Course on  Question.Course_Id=Course.Course_Id
		and Question.Course_Id=@courseID
		and Question.Model_Ans = Stud_Answer.Sub_Ans 
		and Stud_Answer.Exam_Id=@Exam_id
		and Stud_Answer.Stud_Id=@stud_id
		--group by Question.Course_Id-- ,CONCAT( Student.F_name,' ',Student.L_name),Course.Course_name
		
		execute update_grade @stud_id , @studgrade , @courseID
	end
GO
