USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Choices_of_Ques]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Select_Choices_of_Ques] @QID int
as
	select Choices from Ques_Choices
	where Ques_Id = @QID





--update
GO
