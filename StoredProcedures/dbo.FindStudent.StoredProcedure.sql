USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[FindStudent]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FindStudent] @Stud_id varchar(50) , @StudName varchar(50)
as 
-- validate casting 
Declare @ID int =CAST(@Stud_id AS int)
 if EXISTS(
SELECT Stud_Id FROM Student WHERE Stud_Id=@ID and F_name=@StudName)
begin
select 1
end
else select 0
return

GO
