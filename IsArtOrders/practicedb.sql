USE [practice]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[DepName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Order]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[Emp_Name] [varchar](40) NOT NULL,
	[Emp_Surname] [varchar](40) NOT NULL,
	[Emp_Patronimyc] [varchar](40) NULL,
	[Emp_Email] [varchar](40) NOT NULL,
	[Emp_Phone] [varchar](40) NOT NULL,
	[Emp_Password] [varchar](40) NOT NULL,
	[Emp_DepId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderers]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderers](
	[OrdererId] [int] IDENTITY(1,1) NOT NULL,
	[Orderer_Name] [varchar](40) NOT NULL,
	[Orderer_Surname] [varchar](40) NOT NULL,
	[Orderer_Patronimyc] [varchar](40) NULL,
	[Orderer_Phone] [varchar](40) NOT NULL,
	[Orderer_Email] [varchar](40) NOT NULL,
	[Orderer_Password] [varchar](40) NOT NULL,
	[Orderer_Organization] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrdererId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Order_CategoryId] [int] NOT NULL,
	[Order_Wishs] [text] NULL,
	[Order_DesignLink] [varchar](40) NULL,
	[Order_RepLink] [varchar](40) NULL,
	[Order_Status] [int] NOT NULL,
	[Order_OrdererId] [int] NOT NULL,
	[Order_Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 07.12.2023 1:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status_Name] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Свйт-визитка')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Свйт организации')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepId], [DepName]) VALUES (1, N'Менеджеры')
INSERT [dbo].[Departments] ([DepId], [DepName]) VALUES (2, N'Дизайнеры')
INSERT [dbo].[Departments] ([DepId], [DepName]) VALUES (3, N'Программисты')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpId], [Emp_Name], [Emp_Surname], [Emp_Patronimyc], [Emp_Email], [Emp_Phone], [Emp_Password], [Emp_DepId]) VALUES (1, N'Иван', N'Иванов', N'Иванович', N'ivanych@mail.ru', N'+78796541029', N'IvAnYcH', 1)
INSERT [dbo].[Employees] ([EmpId], [Emp_Name], [Emp_Surname], [Emp_Patronimyc], [Emp_Email], [Emp_Phone], [Emp_Password], [Emp_DepId]) VALUES (2, N'Виктория', N'Махайлова', NULL, N'mvik@yandex.ru', N'+79861542039', N'MVikt23', 2)
INSERT [dbo].[Employees] ([EmpId], [Emp_Name], [Emp_Surname], [Emp_Patronimyc], [Emp_Email], [Emp_Phone], [Emp_Password], [Emp_DepId]) VALUES (3, N'Михаил', N'Андреев', N'Антонович', N'amant@gmail.com', N'+75649871027', N'AmAnT98', 3)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Orderers] ON 

INSERT [dbo].[Orderers] ([OrdererId], [Orderer_Name], [Orderer_Surname], [Orderer_Patronimyc], [Orderer_Phone], [Orderer_Email], [Orderer_Password], [Orderer_Organization]) VALUES (1, N'Алексей', N'Суханов', N'Викторович', N'+79861237654', N'savikt@yandex.ru', N'SAViKt', NULL)
INSERT [dbo].[Orderers] ([OrdererId], [Orderer_Name], [Orderer_Surname], [Orderer_Patronimyc], [Orderer_Phone], [Orderer_Email], [Orderer_Password], [Orderer_Organization]) VALUES (2, N'tets', N'test', N'test', N'test', N'test', N'test', NULL)
SET IDENTITY_INSERT [dbo].[Orderers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Order_CategoryId], [Order_Wishs], [Order_DesignLink], [Order_RepLink], [Order_Status], [Order_OrdererId], [Order_Price]) VALUES (7, 1, N'test', N'test', NULL, 3, 2, 0)
INSERT [dbo].[Orders] ([OrderId], [Order_CategoryId], [Order_Wishs], [Order_DesignLink], [Order_RepLink], [Order_Status], [Order_OrdererId], [Order_Price]) VALUES (8, 1, N'test', N'test', NULL, 3, 2, 0)
INSERT [dbo].[Orders] ([OrderId], [Order_CategoryId], [Order_Wishs], [Order_DesignLink], [Order_RepLink], [Order_Status], [Order_OrdererId], [Order_Price]) VALUES (9, 1, N'test', N'test', NULL, 3, 2, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([StatusId], [Status_Name]) VALUES (1, N'В обработке')
INSERT [dbo].[OrderStatus] ([StatusId], [Status_Name]) VALUES (2, N'Отменен')
INSERT [dbo].[OrderStatus] ([StatusId], [Status_Name]) VALUES (3, N'В процессе')
INSERT [dbo].[OrderStatus] ([StatusId], [Status_Name]) VALUES (4, N'Готов')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
ALTER TABLE [dbo].[Employee_Order]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employees] ([EmpId])
GO
ALTER TABLE [dbo].[Employee_Order]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([Emp_DepId])
REFERENCES [dbo].[Departments] ([DepId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Order_CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Order_OrdererId])
REFERENCES [dbo].[Orderers] ([OrdererId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Order_Status])
REFERENCES [dbo].[OrderStatus] ([StatusId])
GO
