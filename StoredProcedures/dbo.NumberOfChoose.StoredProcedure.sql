USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[NumberOfChoose]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NumberOfChoose] @CID int
as
select count(*) from Question
where Course_Id = @CID and header = 'choose'
GO
