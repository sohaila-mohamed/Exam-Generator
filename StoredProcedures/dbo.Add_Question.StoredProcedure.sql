USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Add_Question]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Add_Question] @Body nchar(50), @Mark int, @Header nchar(50), @CourseID int
as
declare @Question_Id int
SELECT TOP 1 @Question_Id = Ques_Id FROM Question ORDER BY Ques_Id DESC
set @Question_Id = @Question_Id + 1
insert into Question(Ques_Id,body,mark,header,Course_Id) values(@Question_Id,@Body,@mark,@header,@CourseID)
GO
