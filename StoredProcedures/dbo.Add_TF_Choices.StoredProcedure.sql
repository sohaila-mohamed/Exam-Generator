USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Add_TF_Choices]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_TF_Choices]
as
declare @Question_Id int
SELECT TOP 1 @Question_Id = Ques_Id FROM Question ORDER BY Ques_Id DESC
insert into Ques_Choices values (@Question_Id,'T')
insert into Ques_Choices values (@Question_Id,'F')
GO
