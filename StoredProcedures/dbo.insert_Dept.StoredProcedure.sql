USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_Dept]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_Dept] @D_name nchar(50),@D_id int
as
	insert into Department values(@D_id,@D_name)

GO
