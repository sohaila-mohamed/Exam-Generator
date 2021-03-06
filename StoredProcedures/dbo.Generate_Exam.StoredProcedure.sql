USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Generate_Exam]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Generate_Exam] @CourseId int,@Time int, @No_Quest int, @TorF_No int, @Choose_No int
as 
	begin 
		if (@TorF_No+ @Choose_No) !=  @No_Quest
			select '-1'
		else
		begin

		declare @ExamId int
		SELECT  TOP 1 @ExamId = Exam_Id FROM Exam ORDER BY Exam_Id DESC
		set @ExamId =  @ExamId + 1

		execute insert_Exam @ExamId,@Time,@No_Quest;
			declare @TrueAndFalseTabel table(
				Exam_Id int,
				Ques_Id int
			);
			insert into @TrueAndFalseTabel(Ques_Id)
			select top(@TorF_No)Ques_Id as ques_Id
			from Question
			where Question.header = 'true or false' and Question.Course_Id = @CourseId
			order by newid()

			update @TrueAndFalseTabel
			set Exam_Id = @ExamId
			------------------------------------------
			declare @ChooseQuestions table(
				Exam_Id int,
				Ques_Id int
			);
			insert into @ChooseQuestions(Ques_Id)
			select top(@Choose_No)Ques_Id as ques_Id
			from Question
			where Question.header = 'choose' and Question.Course_Id = @CourseId
			order by newid()

			update @ChooseQuestions
			set Exam_Id = @ExamId
			-------------------------------------------
			insert into Exam_Ques
			select * from @TrueAndFalseTabel

			insert into Exam_Ques
			select * from @ChooseQuestions
			--select * from @temp
		end 
	end

GO
