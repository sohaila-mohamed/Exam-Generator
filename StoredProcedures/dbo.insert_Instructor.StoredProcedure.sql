USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[insert_Instructor]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_Instructor] @InsID int, @DID int, @FName nchar(50), @LName nchar(50)
as
	insert into Instructor values(@InsID,@DID,@FName,@LName)
GO
