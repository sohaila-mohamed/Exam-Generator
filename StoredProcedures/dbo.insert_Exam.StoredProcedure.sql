USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_Exam]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_Exam] @E_id int , @Time int , @N_QUES int
as
	insert into Exam values(@E_id,@Time,@N_QUES)
GO
