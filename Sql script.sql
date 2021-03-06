USE [PRJAssignment]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[status] [bit] NOT NULL,
	[description] [nvarchar](150) NULL,
	[recordTIme] [datetime] NOT NULL,
	[studentID] [varchar](50) NOT NULL,
	[sessionID] [int] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC,
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[cid] [varchar](50) NOT NULL,
	[Insid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[id] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [varchar](150) NOT NULL,
 CONSTRAINT [PK__Instruct__3213E83FB14AAB56] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room] [varchar](50) NOT NULL,
	[building] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room_1] PRIMARY KEY CLUSTERED 
(
	[room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionID] [int] NOT NULL,
	[sessionNumber] [int] NOT NULL,
	[groupID] [int] NOT NULL,
	[roomID] [varchar](50) NOT NULL,
	[timeslot] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StGr]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StGr](
	[sid] [varchar](50) NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_StGr] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [varchar](50) NOT NULL,
	[MemberCode] [varchar](50) NOT NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Password] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 6/14/2022 11:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Slot] [int] NOT NULL,
	[Time] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'HA160009', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'HA160009', 2)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-03T00:00:00.000' AS DateTime), N'HA160009', 3)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-06T00:00:00.000' AS DateTime), N'HA160009', 4)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'HA160009', 5)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-08T00:00:00.000' AS DateTime), N'HA160009', 6)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'HA160009', 7)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'HA160009', 8)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-13T00:00:00.000' AS DateTime), N'HA160009', 9)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'HA160009', 10)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'HA160009', 11)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'HA160009', 12)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-21T00:00:00.000' AS DateTime), N'HA160009', 13)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'HA160009', 14)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'HA160009', 15)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'HA160009', 16)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'HA160009', 17)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-03T00:00:00.000' AS DateTime), N'HA160009', 18)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-06T00:00:00.000' AS DateTime), N'HA160009', 19)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'HA160009', 20)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-08T00:00:00.000' AS DateTime), N'HA160009', 21)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'HA160009', 22)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'HA160009', 23)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-13T00:00:00.000' AS DateTime), N'HA160009', 24)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'HA160009', 25)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'HA160009', 26)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'HA160009', 27)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-21T00:00:00.000' AS DateTime), N'HA160009', 28)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'HA160009', 29)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'HA160009', 30)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'HE151158', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'HE153257', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-03T00:00:00.000' AS DateTime), N'HE153527', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-06T00:00:00.000' AS DateTime), N'HE160099', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'HE160152', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-08T00:00:00.000' AS DateTime), N'HE160473', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'HE161082', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'HE161300', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-13T00:00:00.000' AS DateTime), N'HE161371', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'HE161530', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'HE161575', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'HE161581', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-21T00:00:00.000' AS DateTime), N'HE161637', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'HE161697', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'HE161880', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-01T00:00:00.000' AS DateTime), N'HE161943', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'HE163340', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-03T00:00:00.000' AS DateTime), N'HE163488', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-06T00:00:00.000' AS DateTime), N'HE163585', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'HE163594', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-08T00:00:00.000' AS DateTime), N'HE163777', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'HE163781', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'HE163937', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-13T00:00:00.000' AS DateTime), N'HE164001', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'HE164016', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'HS150072', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-18T00:00:00.000' AS DateTime), N'HS150447', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-21T00:00:00.000' AS DateTime), N'HS153184', 1)
INSERT [dbo].[Attendance] ([status], [description], [recordTIme], [studentID], [sessionID]) VALUES (0, N'null', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'HS160522', 1)
GO
INSERT [dbo].[Course] ([id], [Name]) VALUES (N'dbi202', N'Introduction to Databases')
INSERT [dbo].[Course] ([id], [Name]) VALUES (N'jpd23', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Course] ([id], [Name]) VALUES (N'lab211', N'OOP with Java Lab')
INSERT [dbo].[Course] ([id], [Name]) VALUES (N'pro192', N'Orient-Object-Oriented Object-Oriented Programming')
GO
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (1, N'SE1623', N'dbi202', N'hailt')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (2, N'SE1623', N'jpd23', N'hangdd')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (3, N'AL1604', N'lab211', N'hoaptt8')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (4, N'AL1604', N'pro192', N'sonhx')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (5, N'SE1623', N'lab211', N'sonnt5')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (6, N'MKT1408', N'jpd23', N'hailt')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (7, N'AL1604', N'lab211', N'hangdd')
INSERT [dbo].[Group] ([gid], [GroupName], [cid], [Insid]) VALUES (8, N'MKT1408', N'pro192', N'hoaptt8')
GO
INSERT [dbo].[Instructor] ([id], [FirstName], [LastName], [Email], [Password]) VALUES (N'hailt', N'Lê Thanh', N'Hải', N'sonhx@fe.edu.vn', N'hailt')
INSERT [dbo].[Instructor] ([id], [FirstName], [LastName], [Email], [Password]) VALUES (N'hangdd', N'Đinh Diệu', N'Hằng', N'HangDD@fe.edu.vn', N'hangdd')
INSERT [dbo].[Instructor] ([id], [FirstName], [LastName], [Email], [Password]) VALUES (N'hoaptt8', N'Phạm Thị Thanh', N'Hoa', N'hoaptt8@fe.edu.vn', N'hoaptt8')
INSERT [dbo].[Instructor] ([id], [FirstName], [LastName], [Email], [Password]) VALUES (N'sonhx', N'Hoàng Xuân', N'Sơn', N'sonhx@fpt.edu.vn', N'sonhx')
INSERT [dbo].[Instructor] ([id], [FirstName], [LastName], [Email], [Password]) VALUES (N'sonnt5', N'Ngô Tùng', N'Sơn', N'sonnt69@fe.edu.vn', N'sonnt5')
GO
INSERT [dbo].[Room] ([room], [building]) VALUES (N'AL104', N'Alpha')
INSERT [dbo].[Room] ([room], [building]) VALUES (N'AR701', N'Alpha')
INSERT [dbo].[Room] ([room], [building]) VALUES (N'BE301', N'Beta')
INSERT [dbo].[Room] ([room], [building]) VALUES (N'BE404', N'Beta')
INSERT [dbo].[Room] ([room], [building]) VALUES (N'DE203', N'Delta')
INSERT [dbo].[Room] ([room], [building]) VALUES (N'DE225', N'Delta')
GO
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (1, 1, 1, N'DE203', 4, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (2, 2, 1, N'DE203', 4, CAST(N'2022-06-02' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (3, 3, 1, N'DE203', 4, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (4, 4, 1, N'DE203', 4, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (5, 5, 1, N'DE203', 4, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (6, 6, 1, N'DE203', 4, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (7, 7, 1, N'DE203', 4, CAST(N'2022-06-11' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (8, 8, 1, N'DE203', 4, CAST(N'2022-06-12' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (9, 9, 1, N'DE203', 4, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (10, 10, 1, N'DE203', 4, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (11, 11, 1, N'DE203', 4, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (12, 12, 1, N'DE203', 4, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (13, 13, 1, N'DE203', 4, CAST(N'2022-06-21' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (14, 14, 1, N'DE203', 4, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (15, 15, 1, N'DE203', 4, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (16, 1, 2, N'DE225', 2, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (17, 2, 2, N'DE225', 2, CAST(N'2022-06-02' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (18, 3, 2, N'DE225', 2, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (19, 4, 2, N'DE225', 2, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (20, 5, 2, N'DE225', 2, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (21, 6, 2, N'DE225', 2, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (22, 7, 2, N'DE225', 2, CAST(N'2022-06-11' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (23, 8, 2, N'DE225', 2, CAST(N'2022-06-12' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (24, 9, 2, N'DE225', 2, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (25, 10, 2, N'DE225', 2, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (26, 11, 2, N'DE225', 2, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (27, 12, 2, N'DE225', 2, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (28, 13, 2, N'DE225', 2, CAST(N'2022-06-21' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (29, 14, 2, N'DE225', 2, CAST(N'2022-06-22' AS Date))
INSERT [dbo].[Session] ([sessionID], [sessionNumber], [groupID], [roomID], [timeslot], [date]) VALUES (30, 15, 2, N'DE225', 2, CAST(N'2022-06-23' AS Date))
GO
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HA160009', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HA160009', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HA160009', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE151158', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE151158', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE151158', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153257', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153257', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153257', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153527', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153527', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE153527', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160099', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160099', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160099', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160152', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160152', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160152', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160473', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160473', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE160473', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161082', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161082', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161082', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161300', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161300', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161300', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161371', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161371', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161371', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161530', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161530', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161530', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161575', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161575', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161575', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161581', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161581', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161581', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161637', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161637', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161637', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161697', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161697', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161697', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161880', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161880', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161880', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161943', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161943', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE161943', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163340', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163340', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163340', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163488', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163488', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163488', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163585', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163585', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163585', 3)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163594', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163594', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163777', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163777', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163781', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163781', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163937', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE163937', 2)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE164001', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HE164016', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HS150072', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HS150447', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HS153184', 1)
INSERT [dbo].[StGr] ([sid], [gid]) VALUES (N'HS160522', 1)
GO
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HA160009', N'NganNHHA160009', N'Nguyễn', N'Hà', N'Ngân', N'Nguyễn Hà Ngân', N'NganNHHA160009@fpt.edu.vn', N'HA160009')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE151158', N'ThanhTTHE151158', N'Trần', N'Tiến', N'Thành', N'Trần Tiến Thành', N'ThanhTTHE151158@fpt.edu.vn', N'HE151158')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE153257', N'DungLAHE153257', N'Lê', N'Anh', N'Dũng', N'Lê Anh Dũng', N'DungLAHE153257@fpt.edu.vn', N'HE153257')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE153527', N'HieuLDLHE153527', N'Lương', N'Đức Lê', N'Hiệu', N'Lương Đức Lê Hiệu', N'HieuLDLHE153527@fpt.edu.vn', N'HE153527')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE160099', N'KhanhTMHE160099', N'Trần', N'Minh', N'Khánh', N'Trần Minh Khánh', N'KhanhTMHE160099@fpt.edu.vn', N'HE160099')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE160152', N'TungLQHE160152', N'Lê', N'Quang', N'Tùng', N'Lê Quang Tùng', N'TungLQHE160152@fpt.edu.vn', N'HE160152')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE160473', N'ChauCNBHE160473', N'Cấn', N'Nguyễn Bảo', N'Châu', N'Cấn Nguyễn Bảo Châu', N'ChauCNBHE160473@fpt.edu.vn', N'HE160473')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161082', N'LyNPHE161082', N'Nguyễn', N'Phương', N'Ly', N'Nguyễn Phương Ly', N'LyNPHE161082@fpt.edu.vn', N'HE161082')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161300', N'LinhVKHE161300', N'Vũ', N'Khánh', N'Linh', N'Vũ Khánh Linh', N'LinhVKHE161300@fpt.edu.vn', N'HE161300')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161371', N'DatNMHE161371', N'Nguyễn', N'Minh', N'Đạt', N'Nguyễn Minh Đạt', N'DatNMHE161371@fpt.edu.vn', N'HE161371')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161530', N'HuyVNHE161530', N'Vũ', N'Ngọc', N'Huy', N'Vũ Ngọc Huy', N'HuyVNHE161530@fpt.edu.vn', N'HE161530')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161575', N'MinhNDHE161575', N'Ngô', N'Đức', N'Minh', N'Ngô Đức Minh', N'MinhNDHE161575@fpt.edu.vn', N'HE161575')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161581', N'VuPLHE161581', N'Phạm', N'Long', N'Vũ', N'Phạm Long Vũ', N'VuPLHE161581@fpt.edu.vn', N'HE161581')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161637', N'HuyDTQHE161637', N'Đỗ', N'Trần Quang', N'Huy', N'Đỗ Trần Quang Huy', N'HuyDTQHE161637@fpt.edu.vn', N'HE161637')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161697', N'MinhDNHE161697', N'Đặng', N'Nhật', N'Minh', N'Đặng Nhật Minh', N'MinhDNHE161697@fpt.edu.vn', N'HE161697')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161880', N'DuongVHHE161880', N'Vũ', N'Hoàng', N'Dương', N'Vũ Hoàng Dương', N'DuongVHHE161880@fpt.edu.vn', N'HE161880')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE161943', N'VinhVHHE161943', N'Vũ', N'Hoàng', N'Vinh', N'Vũ Hoàng Vinh', N'VinhVHHE161943@fpt.edu.vn', N'HE161943')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163340', N'ThuTVHE163340', N'Trần', N'Việt', N'Thu', N'Trần Việt Thu', N'ThuTVHE163340@fpt.edu.vn', N'HE163340')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163488', N'ManhNVHE163488', N'Nguyễn', N'Văn', N'Mạnh', N'Nguyễn Văn Mạnh', N'ManhNVHE163488@fpt.edu.vn', N'HE163488')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163585', N'VuNTHE163585', N'Nguyễn', N'Trung', N'Vũ', N'Nguyễn Trung Vũ', N'VuNTHE163585@fpt.edu.vn', N'HE163585')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163594', N'TungLVHE163594', N'Lưu', N'Việt', N'Tùng', N'Lưu Việt Tùng', N'TungLVHE163594@fpt.edu.vn', N'HE163594')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163777', N'HoaNDHE163777', N'Nguyễn', N'Đức', N'Hoà', N'Nguyễn Đức Hoà', N'HoaNDHE163777@fpt.edu.vn', N'HE163777')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163781', N'DangNHHE163781', N'Nguyễn', N'Hải', N'Đăng', N'Nguyễn Hải Đăng', N'DangNHHE163781@fpt.edu.vn', N'HE163781')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE163937', N'MinhNHHE163937', N'Nguyễn', N'Hoàng', N'Minh', N'Nguyễn Hoàng Minh', N'MinhNHHE163937@fpt.edu.vn', N'HE163937')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE164001', N'DuyNTHE164001', N'Nguyễn', N'Thế', N'Duy', N'Nguyễn Thế Duy', N'DuyNTHE164001@fpt.edu.vn', N'HE164001')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HE164016', N'NguyenPDTHE164016', N'Phạm', N'Danh Trung', N'Nguyên', N'Phạm Danh Trung Nguyên', N'NguyenPDTHE164016@fpt.edu.vn', N'HE164016')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HS150072', N'LinhHHHS150072', N'Hứa', N'Hoài', N'Linh', N'Hứa Hoài Linh', N'LinhHHHS150072@fpt.edu.vn', N'HS150072')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HS150447', N'NguyetTTAHS150447', N'Trần', N'Thị Ánh', N'Nguyệt', N'Trần Thị Ánh Nguyệt', N'NguyetTTAHS150447@fpt.edu.vn', N'HS150447')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HS153184', N'HienNDHS153184', N'Nguyễn', N'Đức', N'Hiển', N'Nguyễn Đức Hiển', N'HienNDHS153184@fpt.edu.vn', N'HS153184')
INSERT [dbo].[Student] ([sid], [MemberCode], [LastName], [MiddleName], [FirstName], [FullName], [Email], [Password]) VALUES (N'HS160522', N'CuongNHHS160522', N'Nguyễn', N'Hùng', N'Cường', N'Nguyễn Hùng Cường', N'CuongNHHS160522@fpt.edu.vn', N'HS160522')
GO
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (1, N'7h30-9h')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (2, N'9h1-10h40')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (3, N'10h50-12h20')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (4, N'12h50-14h20')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (5, N'14h30-16h10')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (6, N'16h20-17h40')
INSERT [dbo].[Time] ([Slot], [Time]) VALUES (7, N'17h40-19hh')
GO
ALTER TABLE [dbo].[Attendance] ADD  CONSTRAINT [DF_Attendance_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sessionID])
REFERENCES [dbo].[Session] ([sessionID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Instructor] FOREIGN KEY([Insid])
REFERENCES [dbo].[Instructor] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Instructor]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([groupID])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([room])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Time] FOREIGN KEY([timeslot])
REFERENCES [dbo].[Time] ([Slot])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Time]
GO
ALTER TABLE [dbo].[StGr]  WITH CHECK ADD  CONSTRAINT [FK_StGr_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[StGr] CHECK CONSTRAINT [FK_StGr_Group]
GO
ALTER TABLE [dbo].[StGr]  WITH CHECK ADD  CONSTRAINT [FK_StGr_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[StGr] CHECK CONSTRAINT [FK_StGr_Student]
GO
