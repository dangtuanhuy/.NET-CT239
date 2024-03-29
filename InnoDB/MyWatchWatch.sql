USE [master]
GO
/****** Object:  Database [MyWatchWatch]    Script Date: 10/16/2018 10:41:12 AM ******/
CREATE DATABASE [MyWatchWatch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyWatchWatch', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MyWatchWatch.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyWatchWatch_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MyWatchWatch_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyWatchWatch] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyWatchWatch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyWatchWatch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyWatchWatch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyWatchWatch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyWatchWatch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyWatchWatch] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyWatchWatch] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MyWatchWatch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyWatchWatch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyWatchWatch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyWatchWatch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyWatchWatch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyWatchWatch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyWatchWatch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyWatchWatch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyWatchWatch] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyWatchWatch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyWatchWatch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyWatchWatch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyWatchWatch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyWatchWatch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyWatchWatch] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyWatchWatch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyWatchWatch] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyWatchWatch] SET  MULTI_USER 
GO
ALTER DATABASE [MyWatchWatch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyWatchWatch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyWatchWatch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyWatchWatch] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MyWatchWatch] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MyWatchWatch]
GO
/****** Object:  Table [dbo].[About]    Script Date: 10/16/2018 10:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutUs] [nvarchar](50) NULL,
	[AboutImg] [nvarchar](100) NULL,
	[AboutDetails] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NULL,
	[BranchDetails] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[CategoryDetails] [nvarchar](550) NULL,
	[Status_Category] [bit] NOT NULL,
	[Create_Category] [date] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[ContactsTitle] [ntext] NULL,
	[Fax] [nvarchar](24) NULL,
	[Status] [bit] NOT NULL,
	[Create_Contact] [date] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerCode] [nvarchar](40) NOT NULL,
	[CustomerPass] [nvarchar](40) NOT NULL,
	[CustomerFullName] [nvarchar](40) NOT NULL,
	[ContactCompany] [nvarchar](30) NULL,
	[CustomerAddress] [nvarchar](60) NULL,
	[CustomerRegion] [nvarchar](15) NULL,
	[CustomerPostalCode] [nvarchar](10) NULL,
	[CustomerPhone] [nvarchar](24) NULL,
	[CustomerFax] [nvarchar](24) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DeliveryId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryTitle] [nvarchar](50) NULL,
	[ImgDelivery] [nvarchar](50) NULL,
	[DeliveryDetails] [ntext] NULL,
	[DeliveryQuestion] [ntext] NULL,
	[EmployeeCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[EmployeePass] [nvarchar](80) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[EmployeeGender] [bit] NULL,
	[BirthDate] [datetime] NULL,
	[EmployeImg] [nvarchar](150) NULL,
	[EmployeeEmail] [nvarchar](50) NULL,
	[EmployeeAddress] [nvarchar](60) NULL,
	[RoleId] [int] NULL,
	[Create_Emp] [date] NOT NULL,
	[Status_Emp] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgNews]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgNews](
	[ImgNewId] [int] IDENTITY(1,1) NOT NULL,
	[News_Img] [nvarchar](50) NULL,
	[SortNews] [tinyint] NOT NULL,
	[NewsId] [int] NULL,
 CONSTRAINT [PK_ImgNews] PRIMARY KEY CLUSTERED 
(
	[ImgNewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgProduct]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgProduct](
	[ImgProductId] [int] IDENTITY(1,1) NOT NULL,
	[Img_Product] [nvarchar](150) NULL,
	[SortImg] [tinyint] NOT NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_ImgProducts] PRIMARY KEY CLUSTERED 
(
	[ImgProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NewTitles] [nvarchar](50) NULL,
	[NewsDetails] [nvarchar](max) NULL,
	[NewsDate] [date] NULL,
	[EmployeeCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [nvarchar](40) NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[OrderAddress] [nvarchar](60) NULL,
	[PaymentMethod] [int] NULL,
	[PaymentOnline] [nvarchar](250) NULL,
	[Order_Status] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SoldPrice] [decimal](18, 0) NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductDetails] [nvarchar](50) NULL,
	[ProductStatus] [bit] NULL,
	[ProductUpdate] [date] NULL,
	[ProductQty] [int] NULL,
	[ProductSold] [decimal](18, 0) NULL,
	[SupplierId] [int] NULL,
	[CategoryId] [int] NULL,
	[PromotionId] [int] NULL,
	[Create_Product] [date] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](50) NULL,
	[PromotionDetails] [ntext] NULL,
	[PromotionDiscount] [int] NULL,
	[PromotionStatus] [bit] NULL,
	[PromotionOpen] [date] NULL,
	[PromotionClose] [date] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[RoleDescription] [ntext] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderId] [int] NOT NULL,
	[SliderImg] [nvarchar](250) NULL,
	[SliderStatus] [bit] NULL,
	[SliderComment] [nvarchar](150) NULL,
	[SliderData] [date] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/16/2018 10:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTitle] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[HomePage] [ntext] NULL,
	[Status_Supplier] [bit] NOT NULL,
	[Create_Supplier] [date] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((0)) FOR [Status_Category]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Create_Category]  DEFAULT (getdate()) FOR [Create_Category]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Create_Contact]  DEFAULT (getdate()) FOR [Create_Contact]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_RoleId_1]  DEFAULT ((2)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_EmployeeGender]  DEFAULT ((0)) FOR [EmployeeGender]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_RoleId_1]  DEFAULT ((1)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Create_Emp]  DEFAULT (getdate()) FOR [Create_Emp]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Status_Emp]  DEFAULT ((1)) FOR [Status_Emp]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_NewsDate]  DEFAULT (getdate()) FOR [NewsDate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Order_Status]  DEFAULT ((0)) FOR [Order_Status]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_SoldPrice]  DEFAULT ((0)) FOR [SoldPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductUpdate_1]  DEFAULT (getdate()) FOR [ProductUpdate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Create_Product]  DEFAULT (getdate()) FOR [Create_Product]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF_Supplier_Status_Supplier]  DEFAULT ((0)) FOR [Status_Supplier]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF_Supplier_Create_Supplier]  DEFAULT (getdate()) FOR [Create_Supplier]
GO
ALTER TABLE [dbo].[About]  WITH CHECK ADD  CONSTRAINT [FK_About_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[About] CHECK CONSTRAINT [FK_About_Employee]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Employee]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Role]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[ImgNews]  WITH CHECK ADD  CONSTRAINT [FK_ImgNews_News] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([NewsId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgNews] CHECK CONSTRAINT [FK_ImgNews_News]
GO
ALTER TABLE [dbo].[ImgProduct]  WITH CHECK ADD  CONSTRAINT [FK_ImgProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgProduct] CHECK CONSTRAINT [FK_ImgProducts_Products]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Employee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[Employee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Employee]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[Customer] ([CustomerCode])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentMethod] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[PaymentMethod] ([PaymentId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentMethod]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Promotion] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([PromotionId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Promotion]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Supplier]
GO
USE [master]
GO
ALTER DATABASE [MyWatchWatch] SET  READ_WRITE 
GO
