USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Choice]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_Choice] @QID int, @Cho nchar(50)
as
	delete FROM Ques_Choices WHERE Ques_Id = @QID and Choices = @Cho;





--insert
GO
