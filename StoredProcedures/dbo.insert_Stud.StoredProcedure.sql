USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_Stud]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_Stud] @Lname nchar(50),@Fname nchar(50),@S_ID int,@D_id int
as
	insert into Student values(@S_ID,@D_id,@Lname,@Fname)
GO
