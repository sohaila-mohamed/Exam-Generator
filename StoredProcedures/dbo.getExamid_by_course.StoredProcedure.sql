USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[getExamid_by_course]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getExamid_by_course] @courseid int
as
declare @ex int 
	select distinct top 1  @ex= Exam_Ques.Exam_Id from Question inner join Exam_Ques on 
	Question.Ques_Id = Exam_Ques.Ques_Id and Question.Course_Id = @courseid 
	if (@ex is not null) select cast( @ex as nvarchar(50))
	else select '-1'
GO
