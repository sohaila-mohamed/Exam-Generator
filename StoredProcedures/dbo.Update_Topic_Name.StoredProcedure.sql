USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Update_Topic_Name]    Script Date: 4/16/2021 11:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Update_Topic_Name] @New_Name nchar(50),@_id int
as
	update topic
	set name=@New_Name
	where Topic_Id=@_id


----------------testing 
declare @id int=3 
declare @Name nchar(50)='Java';
execute update_Topic_Name @Name ,@id
---------------------------------------------------


----------------------------------------

--Delete
GO
