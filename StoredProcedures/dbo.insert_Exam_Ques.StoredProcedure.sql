USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_Exam_Ques]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--insert
CREATE proc [dbo].[insert_Exam_Ques] @E_id int , @Q_id int 
as
	insert into Exam_Ques values(@E_id,@Q_id)



GO
