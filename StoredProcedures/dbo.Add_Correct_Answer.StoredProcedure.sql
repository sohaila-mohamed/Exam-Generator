USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Add_Correct_Answer]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Correct_Answer] @Ans nchar(50)
as
declare @Question_Id int
SELECT TOP 1 @Question_Id = Ques_Id FROM Question ORDER BY Ques_Id DESC
update Question
set Model_Ans = @Ans
where Ques_Id = @Question_Id
GO
