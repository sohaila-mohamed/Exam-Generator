USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_E_Ques_Id_Exam]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_E_Ques_Id_Exam]
as
	select Ques_Id from Exam_Ques

--update
--------------

GO
