USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[FindInstructor]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FindInstructor] @Inst_id varchar(50) , @Inst_Name varchar(50)
as 
Declare @ID int =CAST(@Inst_id AS int)
 if EXISTS(
SELECT Inst_Id FROM Instructor WHERE Inst_Id=@ID and @Inst_Name=F_name)
begin
select 1
end
else select 0
return
GO
