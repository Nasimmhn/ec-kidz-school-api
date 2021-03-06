USE [School]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[MinAge] [int] NOT NULL,
	[MaxAge] [int] NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Time] [nvarchar](12) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassStudent](
	[ClassId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_ClassStudent] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PrefixId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prefix]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prefix](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Prefix] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_Prefix] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PrefixId] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (1, 1, 3, CAST(59.99 AS Decimal(18, 2)), 1)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (2, 1, 2, CAST(19.99 AS Decimal(18, 2)), 2)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (3, 2, 4, CAST(69.99 AS Decimal(18, 2)), 1)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (5, 1, 3, CAST(59.99 AS Decimal(18, 2)), 3)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (6, 1, 2, CAST(19.99 AS Decimal(18, 2)), 2)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (7, 2, 4, CAST(89.99 AS Decimal(18, 2)), 1)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (8, 2, 2, CAST(19.99 AS Decimal(18, 2)), 2)
INSERT [dbo].[Cart] ([Id], [CustomerId], [ClassId], [Price], [Count]) VALUES (9, 1, 3, CAST(59.99 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (1, N'Donec ut turpis', CAST(99.99 AS Decimal(18, 2)), 1, 3, 7, N'Dolor sit amet, consectetur adipiscing elit.', N'09:00', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (2, N'Aliquam lacinia nunc a bibendu', CAST(19.99 AS Decimal(18, 2)), 2, 4, 8, N'sus orci augue eget leo. Praesent non ex sollicitudin, aliquam lectus sed, gravida magna. Aliquam lacinia nunc a bibendum volutpat. Curabitur nec soda', N'09:00', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (3, N'Nullam eleifend lectus mauris', CAST(59.99 AS Decimal(18, 2)), 3, 5, 9, N'Donec mollis, libero et porttitor finibus, nunc elit hendrerit dui, quis cursus orci augue eget leo. Praesent non ex sollicitudin, aliquam lectus sed,', N'09:00', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (4, N'Donec mollis, libero', CAST(89.99 AS Decimal(18, 2)), 4, 1, 3, N'Hendrerit dui, quis cursus orci augue eget leo. Praesent non ex sollicitudin, aliquam lectus sed, gravida magna.', N'09:00', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (6, N'Finibus, nunc elit', CAST(39.99 AS Decimal(18, 2)), 1, 3, 7, N'Gravida magna. Aliquam lacinia nunc a bibendum volutpat.', N'09:00', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[Class] ([Id], [Title], [Price], [TeacherId], [MinAge], [MaxAge], [Description], [Time], [Date]) VALUES (7, N'Updated', CAST(39.99 AS Decimal(18, 2)), 2, 3, 7, N'Gravida magna. Aliquam lacinia nunc a bibendum volutpat.', N'09:00', CAST(N'2020-09-22' AS Date))
SET IDENTITY_INSERT [dbo].[Class] OFF
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (1, 2)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (1, 3)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (2, 3)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (2, 4)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (3, 1)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (3, 3)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (3, 4)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (4, 2)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (4, 3)
INSERT [dbo].[ClassStudent] ([ClassId], [StudentId]) VALUES (4, 4)
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [CustomerId], [Message]) VALUES (1, 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut turpis et velit ultricies tristique in id nulla. Sed mattis placerat gravida. Donec mollis, libero et porttitor finibus, nunc elit hendrerit dui, quis cursus orci augue eget leo. Praesent non ex sollicitudin, aliquam lectus sed, gravida magna. Aliquam lacinia nunc a bibendum volutpat. Curabitur nec sodales lacus. Nam dictum convallis nunc, quis facilisis dui convallis pulvinar. Nullam eleifend lectus mauris, eu consectetur donec.')
INSERT [dbo].[Contact] ([Id], [CustomerId], [Message]) VALUES (2, 1, N'Lorem ipsum consectetur adipiscing elit. Donec ut turpis et velit ultricies tristique in id nulla. Sed mattis placerat gravida. Donec mollis, libero et porttitor finibus, nunc elit hendrerit dui, quis cursus orci augue eget leo. Praesent non ex sollicitudin, aliquam lectus sed, gravida magna. Aliquam lacinia nunc a bibendum volutpat.')
INSERT [dbo].[Contact] ([Id], [CustomerId], [Message]) VALUES (3, 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut turpis et velit ultricies tristique in id nulla. Sed mattis placerat gravida. Donec mollis, libero et porttitor finibus, nunc elit hendrerit dui, quis cursus orci augue eget leo.')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [PrefixId]) VALUES (1, N'John', N'Doe', N'john@doe.com', 2)
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [PrefixId]) VALUES (2, N'Jane', N'Doe', N'jane@doe.com', 3)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (2, N'Female')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (3, N'Neutral')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (4, N'Fluid')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (5, N'Transsexual')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Prefix] ON 

INSERT [dbo].[Prefix] ([Id], [Prefix]) VALUES (1, N'')
INSERT [dbo].[Prefix] ([Id], [Prefix]) VALUES (2, N'Mr.')
INSERT [dbo].[Prefix] ([Id], [Prefix]) VALUES (3, N'Mrs.')
INSERT [dbo].[Prefix] ([Id], [Prefix]) VALUES (4, N'Ms.')
SET IDENTITY_INSERT [dbo].[Prefix] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Age], [GenderId]) VALUES (1, N'Stina', N'Smith', 7, 2)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Age], [GenderId]) VALUES (2, N'Paul', N'Smith', 5, 4)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Age], [GenderId]) VALUES (3, N'Bella', N'Johnson', 8, 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Age], [GenderId]) VALUES (4, N'Tim', N'Johnson', 8, 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [FirstName], [LastName], [PrefixId]) VALUES (1, N'Lisa', N'Smith', 3)
INSERT [dbo].[Teacher] ([Id], [FirstName], [LastName], [PrefixId]) VALUES (2, N'Piere', N'Johnson', 2)
INSERT [dbo].[Teacher] ([Id], [FirstName], [LastName], [PrefixId]) VALUES (3, N'Carl', N'Black', 2)
INSERT [dbo].[Teacher] ([Id], [FirstName], [LastName], [PrefixId]) VALUES (4, N'Dolores', N'White', 3)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Class]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Teacher]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Class]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Prefix] FOREIGN KEY([PrefixId])
REFERENCES [dbo].[Prefix] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Prefix]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Gender]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Prefix] FOREIGN KEY([PrefixId])
REFERENCES [dbo].[Prefix] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Prefix]
GO
/****** Object:  StoredProcedure [dbo].[AddCart]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddCart]
	@CustomerId int,
	@ClassId int,
	@Price decimal(18,2),
	@Count int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Cart
           (CustomerId, ClassId , Price, [Count])
     VALUES
           (@CustomerId, @ClassId, @Price, @Count)
END
GO
/****** Object:  StoredProcedure [dbo].[AddClass]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddClass]
	@Title nvarchar(30),
    @Price decimal(18,2),
	@TeacherId int,
	@MinAge int,
	@MaxAge int,
    @Description nvarchar(150),
    @Time nvarchar(12),
    @Date date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Class
           (Title, Price, TeacherId, MinAge, MaxAge, [Description], [Time], [Date])
     VALUES
           (@Title, @Price, @TeacherId, @MinAge, @MaxAge, @Description, @Time, @Date)
END
GO
/****** Object:  StoredProcedure [dbo].[AddClassStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddClassStudent]
	@ClassId int,
	@StudentId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO ClassStudent
           (ClassId ,StudentId)
     VALUES
           (@ClassId, @StudentId)
END
GO
/****** Object:  StoredProcedure [dbo].[AddContact]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddContact]
	@CustomerId int,
	@Message nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Contact
           (CustomerId ,[Message])
     VALUES
           (@CustomerId, @Message)
END
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddCustomer]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(50),
	@PrefixId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Customer
           (FirstName,
            LastName,
            Email,
            PrefixId)
     VALUES
           (@FirstName,
            @LastName,
            @Email,
            @PrefixId)
END
GO
/****** Object:  StoredProcedure [dbo].[AddGender]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddGender]
	@Gender nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Gender
           (Gender)
     VALUES
           (@Gender)
END
GO
/****** Object:  StoredProcedure [dbo].[AddPrefix]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddPrefix]
	@Value nvarchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Prefix
           (Prefix)
     VALUES
           (@Value)
END
GO
/****** Object:  StoredProcedure [dbo].[AddStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddStudent]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Age int,
	@GenderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Student
           (FirstName, LastName, Age, GenderId)
     VALUES
           (@FirstName, @LastName, @Age, @GenderId)
END
GO
/****** Object:  StoredProcedure [dbo].[AddTeacher]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddTeacher]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@PrefixId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Teacher
           (FirstName,
            LastName,
            PrefixId)
     VALUES
           (@FirstName,
            @LastName,
            @PrefixId)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCart]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteCart]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Cart
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteClass]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteClass]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Class
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteClassStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteClassStudent]
	@ClassId int,
	@StudentId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM ClassStudent
	WHERE ClassId = @ClassId AND StudentId = @StudentId
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteContact]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteContact]
	@Id int,
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Contact
	WHERE Id = @Id AND CustomerId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCustomer]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Customer
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteGender]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteGender]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Gender
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePrefix]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePrefix]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Prefix
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteStudent]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Student
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTeacher]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteTeacher]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	DELETE FROM Teacher
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetCart]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetCart]
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ClassId, CustomerId, c.Price, [Count], cl.Title, cl.Description
	FROM Cart c
	INNER JOIN Class cl ON c.ClassId = cl.Id
	WHERE c.CustomerId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[GetClass]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetClass]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT c.Id, Title, Price, TeacherId, MinAge, MaxAge, [Description], [Time], [Date], p.Prefix + ' ' + t.LastName AS Teacher
	FROM Class c
	INNER JOIN Teacher t ON c.TeacherId = t.Id
	INNER JOIN Prefix p ON t.PrefixId = p.Id
	WHERE c.Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetClasses]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetClasses]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT c.Id, Title, Price, TeacherId, MinAge, MaxAge, [Description], [Time], [Date], p.Prefix + ' ' + t.LastName AS Teacher
	FROM Class c
	INNER JOIN Teacher t ON c.TeacherId = t.Id
	INNER JOIN Prefix p ON t.PrefixId = p.Id

END
GO
/****** Object:  StoredProcedure [dbo].[GetClassStudents]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetClassStudents]
	@ClassId int = NULL,
	@StudentId int = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- All students in a class
	IF(@ClassId IS NOT NULL AND @StudentId IS NULL)
	BEGIN
		SELECT ClassId, StudentId, s.FirstName, s.LastName, s.Age, g.Gender
		FROM ClassStudent cs
		INNER JOIN Student s ON cs.StudentId = s.Id
		INNER JOIN Gender g ON s.GenderId = g.Id
		WHERE ClassId = @ClassId
		ORDER BY s.LastName, s.FirstName
	END

	-- All classes a student attends
	IF(@ClassId IS NULL AND @StudentId IS NOT NULL)
	BEGIN
		SELECT ClassId, StudentId, s.FirstName, s.LastName, s.Age, g.Gender, c.Title, c.Date, c.Time, p.Prefix + ' ' + t.LastName AS Teacher
		FROM ClassStudent cs
		INNER JOIN Student s ON cs.StudentId = s.Id
		INNER JOIN Gender g ON s.GenderId = g.Id
		INNER JOIN Class c ON cs.ClassId = c.Id
		INNER JOIN Teacher t ON c.TeacherId = t.Id
		INNER JOIN Prefix p ON t.PrefixId = p.Id
		WHERE StudentId = @StudentId
		ORDER BY c.Title
	END

	-- All classes and student
	IF(@ClassId IS NULL AND @StudentId IS NULL)
	BEGIN
		SELECT ClassId, StudentId, s.FirstName, s.LastName, s.Age, g.Gender, c.Title, c.Date, c.Time, p.Prefix + ' ' + t.LastName AS Teacher
		FROM ClassStudent cs
		INNER JOIN Student s ON cs.StudentId = s.Id
		INNER JOIN Gender g ON s.GenderId = g.Id
		INNER JOIN Class c ON cs.ClassId = c.Id
		INNER JOIN Teacher t ON c.TeacherId = t.Id
		INNER JOIN Prefix p ON t.PrefixId = p.Id
		ORDER BY c.Title, s.LastName, s.FirstName
	END
END
GO
/****** Object:  StoredProcedure [dbo].[GetContact]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetContact]
	@Id int,
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, CustomerId, [Message]
	FROM Contact
	WHERE Id = @Id AND CustomerId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[GetContacts]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetContacts]
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, CustomerId, [Message]
	FROM Contact
	WHERE CustomerId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomer]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetCustomer]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT c.Id, FirstName, LastName, Email, PrefixId, Prefix
	FROM Customer c
	LEFT JOIN Prefix p ON c.PrefixId = p.Id
	WHERE c.Id = @Id
END


GO
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCustomers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT c.Id, FirstName, LastName, Email, PrefixId, Prefix
	FROM Customer c
	LEFT JOIN Prefix p ON c.PrefixId = p.Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetGender]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetGender]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, Gender
	FROM Gender
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetGenders]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetGenders]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, Gender
	FROM Gender
END
GO
/****** Object:  StoredProcedure [dbo].[GetPrefix]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPrefix]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, Prefix
	FROM Prefix
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetPrefixes]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPrefixes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id, Prefix
	FROM Prefix
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetStudent]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT s.Id, FirstName, LastName, Age, GenderId, Gender
	FROM Student s
	LEFT JOIN Gender g ON s.GenderId = g.Id
	WHERE s.Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudents]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetStudents]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT s.Id, FirstName, LastName, Age, GenderId, Gender
	FROM Student s
	LEFT JOIN Gender g ON s.GenderId = g.Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetTeacher]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetTeacher]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT t.Id, FirstName, LastName, PrefixId, Prefix
	FROM Teacher t
	LEFT JOIN Prefix p ON t.PrefixId = p.Id
	WHERE t.Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetTeachers]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetTeachers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT t.Id, FirstName, LastName, PrefixId, Prefix
	FROM Teacher t
	LEFT JOIN Prefix p ON t.PrefixId = p.Id

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCart]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateCart]
	@Id int,
	@Price decimal(18,2),
	@Count int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS
	(
		SELECT Id
		FROM Cart
		WHERE Id = @Id
	)
    BEGIN
		UPDATE Cart
		SET Price = @Price,
			[Count] = @Count
		WHERE Id = @Id
	END;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateClass]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateClass]
	@Id int,
	@Title nvarchar(30),
    @Price decimal(18,2),
	@TeacherId int,
	@MinAge int,
	@MaxAge int,
    @Description nvarchar(150),
    @Time nvarchar(12),
    @Date date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE [dbo].[Class]
   SET Title = @Title,
       Price = @Price,
       TeacherId = @TeacherId,
       MinAge = @MinAge,
       MaxAge = @MaxAge,
       [Description] = @Description,
       [Time] = @Time,
       [Date] = @Date
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateContact]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateContact]
	@Id int,
	@CustomerId int,
	@Message nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS
	(
		SELECT Id, CustomerId, [Message]
		FROM Contact
		WHERE Id = @Id AND CustomerId = @CustomerId
	)
    BEGIN
		UPDATE Contact
		SET [Message] = @Message
		WHERE Id = @Id AND CustomerId = @CustomerId
	END;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCustomer]
	@Id int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(50),
	@PrefixId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	UPDATE Customer
	SET FirstName = @FirstName,
       LastName = @LastName,
       Email = @Email,
       PrefixId = @PrefixId
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateGender]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateGender]
	@Id int,
	@Gender nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	UPDATE Gender
	SET Gender = @Gender
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePrefix]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePrefix]
	@Id int,
	@Prefix nvarchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	UPDATE Prefix
	SET Prefix = @Prefix
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateStudent]
	@Id int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Age int,
	@GenderId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Student]
	SET FirstName = @FirstName, 
		LastName = @LastName, 
		Age = @Age, 
		GenderId = @GenderId
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTeacher]    Script Date: 2020-08-06 09:54:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateTeacher]
	@Id int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@PrefixId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	UPDATE Teacher
	SET FirstName = @FirstName,
        LastName = @LastName,
        PrefixId = @PrefixId
	WHERE Id = @Id
END
GO
