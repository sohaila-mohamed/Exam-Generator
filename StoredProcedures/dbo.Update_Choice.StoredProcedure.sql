USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Choice]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_Choice] @QID int, @OCho nchar(50), @NCho nchar(50)
as
	update Ques_Choices
	set Choices = @NCho
	WHERE Ques_Id = @QID and Choices = @OCho;





--Delete
GO
