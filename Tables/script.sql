USE [ExamProject]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 4/17/2021 12:09:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_Id] [int] NOT NULL,
	[Instructor_Id] [int] NULL,
	[Course_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Dept_Id] [int] NOT NULL,
	[Dept_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Dept_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Exam_Id] [int] NOT NULL,
	[Time] [int] NULL,
	[N_Quest] [int] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Ques]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Ques](
	[Exam_Id] [int] NOT NULL,
	[Ques_Id] [int] NOT NULL,
 CONSTRAINT [PK_Exam_Ques] PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC,
	[Ques_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Inst_Id] [int] NOT NULL,
	[Dept_Id] [int] NOT NULL,
	[F_name] [nvarchar](50) NULL,
	[L_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Inst_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Choices]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Choices](
	[Ques_Id] [int] NOT NULL,
	[Choices] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ques_Choices] PRIMARY KEY CLUSTERED 
(
	[Ques_Id] ASC,
	[Choices] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Ques_Id] [int] NOT NULL,
	[body] [nvarchar](50) NULL,
	[mark] [int] NULL,
	[header] [nvarchar](50) NULL,
	[Model_Ans] [nvarchar](50) NULL,
	[Course_Id] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Ques_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stud_Answer]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stud_Answer](
	[Exam_Id] [int] NOT NULL,
	[Ques_Id] [int] NOT NULL,
	[Stud_Id] [int] NULL,
	[Sub_Ans] [nvarchar](50) NULL,
 CONSTRAINT [PK_Stud_Answer] PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC,
	[Ques_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stud_Course]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stud_Course](
	[Stud_Id] [int] NOT NULL,
	[Course_Id] [int] NOT NULL,
	[grade] [int] NULL,
 CONSTRAINT [PK_Stud_Course] PRIMARY KEY CLUSTERED 
(
	[Stud_Id] ASC,
	[Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Stud_Id] [int] NOT NULL,
	[Dept_Id] [int] NULL,
	[L_name] [nvarchar](50) NULL,
	[F_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Stud_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp](
	[Ques_Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 4/17/2021 12:09:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Topic_Id] [int] NOT NULL,
	[Course_Id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[Topic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_Dept_Id]  DEFAULT ((0)) FOR [Dept_Id]
GO
ALTER TABLE [dbo].[Instructor] ADD  CONSTRAINT [DF_Instructor_Dept_Id]  DEFAULT ((0)) FOR [Dept_Id]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_Ques_Id]  DEFAULT ((0)) FOR [Ques_Id]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Stud_Id]  DEFAULT (CONVERT([int],(0))) FOR [Stud_Id]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Dept_Id]  DEFAULT ((0)) FOR [Dept_Id]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([Instructor_Id])
REFERENCES [dbo].[Instructor] ([Inst_Id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Ques_Exam] FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exam] ([Exam_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam_Ques] CHECK CONSTRAINT [FK_Exam_Ques_Exam]
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Ques_Question] FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Question] ([Ques_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Exam_Ques] CHECK CONSTRAINT [FK_Exam_Ques_Question]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Department] FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[Department] ([Dept_Id])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Department]
GO
ALTER TABLE [dbo].[Ques_Choices]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Choices_Question] FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Question] ([Ques_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ques_Choices] CHECK CONSTRAINT [FK_Ques_Choices_Question]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Course_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Course]
GO
ALTER TABLE [dbo].[Stud_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Stud_Answer_Exam] FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exam] ([Exam_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stud_Answer] CHECK CONSTRAINT [FK_Stud_Answer_Exam]
GO
ALTER TABLE [dbo].[Stud_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Stud_Answer_Question] FOREIGN KEY([Ques_Id])
REFERENCES [dbo].[Question] ([Ques_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stud_Answer] CHECK CONSTRAINT [FK_Stud_Answer_Question]
GO
ALTER TABLE [dbo].[Stud_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Stud_Answer_Student] FOREIGN KEY([Stud_Id])
REFERENCES [dbo].[Student] ([Stud_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stud_Answer] CHECK CONSTRAINT [FK_Stud_Answer_Student]
GO
ALTER TABLE [dbo].[Stud_Course]  WITH CHECK ADD  CONSTRAINT [FK_Stud_Course_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Course_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stud_Course] CHECK CONSTRAINT [FK_Stud_Course_Course]
GO
ALTER TABLE [dbo].[Stud_Course]  WITH CHECK ADD  CONSTRAINT [FK_Stud_Course_Student] FOREIGN KEY([Stud_Id])
REFERENCES [dbo].[Student] ([Stud_Id])
GO
ALTER TABLE [dbo].[Stud_Course] CHECK CONSTRAINT [FK_Stud_Course_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([Dept_Id])
REFERENCES [dbo].[Department] ([Dept_Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Course_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Course]
GO
