USE [ExamProject]
GO
/****** Object:  StoredProcedure [dbo].[Generate_Answers]    Script Date: 4/16/2021 11:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Generate_Answers] @Exam_Id int, @student_Id int, @answers nvarchar(250)
as
	declare @Answers_Table table(
		answer nvarchar(50)
	);
	insert into @Answers_Table
	select * from [fnSplitString](@answers,',');

	if ((select COUNT(*) from @Answers_Table) = (select COUNT(*) from Exam_Ques where Exam_Ques.Exam_Id=@Exam_Id))
	begin
		declare c1 Cursor 
		for select answer
		from @Answers_Table 

		declare c2 Cursor
		for select Ques_Id
		from Exam_Ques
		where Exam_Id = @Exam_Id
		--where answer is not null
		for read only

		declare @Ans varchar(50)
		open c1
		fetch c1 into @Ans

		declare @QId int
		open c2
		fetch c2 into @QId
		while @@FETCH_STATUS = 0
			begin
				execute Inserting_Student_Answer_In_Question @student_Id,@Exam_Id,@QId,@Ans
				fetch c1 into @Ans
				fetch c2 into @QId
			end
			close c1
			deallocate c1
			close c2
			deallocate c2
	end
	else
	select 'invalid Answer file format.'

GO
