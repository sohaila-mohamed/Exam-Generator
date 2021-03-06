USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[get_All_Student_Answer_In_Exam]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[get_All_Student_Answer_In_Exam] @Student_Id int,@Exam_Id int
as
	if (@Student_Id not in (select stud_Id from Stud_Answer)) or (@Exam_Id not in (select Exam_Id from Stud_Answer))
		select 'Incorrect Exam Id or Student Id'
	else
	begin
		Select Ques_Id,Sub_Ans
		from Stud_Answer
		where stud_Id = @Student_Id and Exam_Id = @Exam_Id
	end
GO
