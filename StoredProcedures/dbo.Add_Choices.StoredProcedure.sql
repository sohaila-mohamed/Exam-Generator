USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Add_Choices]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Choices] @Cho1 nchar(50), @Cho2 nchar(50), @Cho3 nchar(50), @Cho4 nchar(50)
as
declare @Question_Id int
SELECT TOP 1 @Question_Id = Ques_Id FROM Question ORDER BY Ques_Id DESC
insert into Ques_Choices values (@Question_Id,@Cho1)
insert into Ques_Choices values (@Question_Id,@Cho2)
insert into Ques_Choices values (@Question_Id,@Cho3)
insert into Ques_Choices values (@Question_Id,@Cho4)
GO
