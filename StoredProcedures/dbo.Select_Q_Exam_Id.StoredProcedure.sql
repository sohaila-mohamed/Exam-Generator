USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Select_Q_Exam_Id]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Select_Q_Exam_Id]
as
	select Exam_Id from Exam_Ques


GO
