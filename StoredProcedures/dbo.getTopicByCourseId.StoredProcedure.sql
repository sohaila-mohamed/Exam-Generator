USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[getTopicByCourseId]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getTopicByCourseId] (@course int)
as
select Topic_Id,name from Topic 
where Course_Id = @course 
GO
