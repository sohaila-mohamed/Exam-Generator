USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[gat_exam_by_id]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[gat_exam_by_id] @exam_id int
as 
	select * from Exam where Exam_id =@exam_id
GO
