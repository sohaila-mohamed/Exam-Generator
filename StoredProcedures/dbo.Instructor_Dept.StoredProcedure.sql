USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Dept]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Instructor_Dept] @Inst_ID int
as
select Dept_name
from Instructor I , Department D
where I.Dept_Id = D.Dept_Id and Inst_Id = @Inst_ID
GO
