USE [master]
GO
/****** Object:  Database [pustokDb]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE DATABASE [pustokDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pustokDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEW\MSSQL\DATA\pustokDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pustokDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NEW\MSSQL\DATA\pustokDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [pustokDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pustokDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pustokDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pustokDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pustokDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pustokDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pustokDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [pustokDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [pustokDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pustokDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pustokDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pustokDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pustokDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pustokDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pustokDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pustokDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pustokDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [pustokDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pustokDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pustokDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pustokDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pustokDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pustokDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [pustokDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pustokDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pustokDb] SET  MULTI_USER 
GO
ALTER DATABASE [pustokDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pustokDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pustokDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pustokDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pustokDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pustokDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [pustokDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [pustokDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [pustokDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](13) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](30) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NOT NULL,
	[BookId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookImages]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[BookId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BookImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookReviews]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[BookId] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Rate] [tinyint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BookReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenreId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Desc] [nvarchar](500) NULL,
	[CostPrice] [money] NOT NULL,
	[SalePrice] [money] NOT NULL,
	[DiscountPercent] [decimal](18, 2) NOT NULL,
	[StockStatus] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookTags]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookTags](
	[BookId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_BookTags] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[CostPrice] [money] NOT NULL,
	[SalePrice] [money] NOT NULL,
	[DiscountPercent] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](100) NULL,
	[Title2] [nvarchar](100) NULL,
	[Desc] [nvarchar](250) NULL,
	[BtnText] [nvarchar](100) NULL,
	[BtnUrl] [nvarchar](250) NULL,
	[ImageName] [nvarchar](100) NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/16/2024 7:33:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423152216_BooksTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423153238_BooksTableChanged', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423153540_AnnotationsAddedIntoBooks', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423153943_BookimagesTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423161819_BaseEntityChanged', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423163005_IsNewAndIsFeaturedAddedIntoBooks', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240424164200_SettingTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240429154811_SlidersTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240429155522_GenreTableModified', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240501170411_BookTagsTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240501171254_ChangeTagTableName', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240506165024_UsersTablesCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240513161736_BookReviewsTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240514151639_BasketItemsTableCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240514165210_OrdersTablesCreated', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240514170941_OrdersTableChanged', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'47df2cec-ee94-4533-82f4-71f6c77e785e', N'admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'63a83e81-6da2-40b6-918f-5ab0187c961c', N'super_admin', N'SUPER_ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e735d8d1-5cf1-47cc-8819-1774d3ee0790', N'member', N'MEMBER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee062452-7c4c-4936-9260-db5a20e932f5', N'63a83e81-6da2-40b6-918f-5ab0187c961c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', N'e735d8d1-5cf1-47cc-8819-1774d3ee0790')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2a39cb7-6b63-45fd-8c7d-8fc49b0dee96', N'e735d8d1-5cf1-47cc-8819-1774d3ee0790')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', N'e735d8d1-5cf1-47cc-8819-1774d3ee0790')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', N'AppUser', N'Ezize', N'aziza', N'AZIZA', N'aziza@gmail.com', N'AZIZA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAW9CnAjLDSMF/wNPhW8VnIaDlC+Edt6JprNRGphDCVglEHrldd5kJHD8SxrCvlfyA==', N'6A3N5KLBCL7LNIPTUBGHWIFJRS35OL4L', N'e2dcb237-a0ad-4f4b-9a52-9bf97b419426', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a2a39cb7-6b63-45fd-8c7d-8fc49b0dee96', N'AppUser', N'Abbas', N'abbas', N'ABBAS', N'abbas@gmail.com', N'ABBAS@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECiCMUCkiXC6HIzsHbdhNGaMUDGZpZIGYvMyTFUcGmB8XYO4rsns+efaLAQY7KRw1A==', N'4EECTZBYTF2NAKT433ZYF3I444RXAU7G', N'f0a9fa54-cb45-460f-8507-70cbb37b333c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', N'AppUser', N'Hikmet Abbasov', N'hiko123', N'HIKO123', N'hiko@gmail.com', N'HIKO@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDleGWe+VDjmaR5F57WNk9cYV4zlrgWnoE3l6GP1aIM84vMGRul4L7nhtoguSOohzw==', N'SQNNUNK7HVH4WDOQS6RGHDODCVRJ4CJE', N'c5631ffd-e20e-4932-924c-fc1eeb205003', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee062452-7c4c-4936-9260-db5a20e932f5', N'AppUser', NULL, N'admin', N'ADMIN', N'admin', N'ADMIN', 0, N'AQAAAAIAAYagAAAAECN0bexGBocLu0FR6VZ1kp0LtRtBxBkSFMwfOE/1+Nl3RFlD5BnEdMz/s4pr0665Sg==', N'NTHEP32UTNMV3Q2PFAOC54O7NDEOVQLW', N'dc9a90e6-9968-4f42-9f2c-7a747c8b3c5a', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (1, N'Bəxtiyar Vahabzadə', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (2, N'Aqata Kristi', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (3, N'Şərəf Yılmaz', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (4, N'Nizami Gəncəvi', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (5, N'Madeline Miller', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (6, N'Xalid Hüseyni', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (13, N'fsdfsfsd', NULL, NULL, 0)
INSERT [dbo].[Authors] ([Id], [Fullname], [CreatedAt], [ModifiedAt], [IsDeleted]) VALUES (14, N'aaaaa', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[BasketItems] ON 

INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (1, N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', 6, 1)
INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (2, N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', 2, 2)
INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (3, N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', 16, 1)
INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (9, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', 4, 2)
INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (10, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', 6, 4)
INSERT [dbo].[BasketItems] ([Id], [AppUserId], [BookId], [Count]) VALUES (11, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', 16, 1)
SET IDENTITY_INSERT [dbo].[BasketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[BookImages] ON 

INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (2, N'product-1.jpg', 1, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (3, N'product-3.jpg', 1, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (4, N'product-4.jpg', 2, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (5, N'product-5.jpg', 2, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (6, N'product-6.jpg', 3, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (7, N'product-7.jpg', 3, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (8, N'product-8.jpg', 4, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (9, N'product-9.jpg', 4, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (10, N'product-2.jpg', 5, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (11, N'product-1.jpg', 5, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (12, N'product-5.jpg', 6, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (13, N'product-4.jpg', 6, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (14, N'product-3.jpg', 7, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (15, N'product-6.jpg', 7, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (16, N'product-9.jpg', 8, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (17, N'product-8.jpg', 8, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (18, N'product-2.jpg', 9, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (19, N'product-6.jpg', 9, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (20, N'product-5.jpg', 10, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (21, N'product-7.jpg', 10, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (22, N'product-8.jpg', 11, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (23, N'product-9.jpg', 11, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (24, N'product-4.jpg', 12, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (25, N'product-10.jpg', 12, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (26, N'product-11.jpg', 13, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (27, N'product-5.jpg', 13, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (28, N'product-5.jpg', 14, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (29, N'product-2.jpg', 14, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (30, N'product-7.jpg', 15, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (31, N'product-8.jpg', 15, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (32, N'product-9.jpg', 16, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (33, N'product-10.jpg', 16, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (34, N'product-6.jpg', 17, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (35, N'product-5.jpg', 17, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (36, N'product-7.jpg', 18, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (37, N'product-8.jpg', 18, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (38, N'product-9.jpg', 19, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (39, N'product-4.jpg', 19, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (40, N'product-10.jpg', 20, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (41, N'product-11.jpg', 20, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (42, N'product-5.jpg', 21, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (43, N'product-5.jpg', 21, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (44, N'product-2.jpg', 22, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (45, N'product-7.jpg', 22, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (46, N'product-8.jpg', 23, 0)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (47, N'product-9.jpg', 23, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (49, N'd9b56d54-b7fe-455d-8813-d20dc6e8ce7eproduct-details-3.jpg', 28, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (50, N'fbea4fbb-a098-4947-a9c8-0616cf0671a3product-8.jpg', 29, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (51, N'e395c4f1-6ac5-41a0-bfbd-9b95dc3d9615product-13.jpg', 30, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (55, N'bc5c710d-0230-486d-903a-675f3238ae14home-slider-1-ai.png', 31, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (56, N'1ef6b459-bd30-4d5b-8601-6a71dae747d1books.sql', 31, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (57, N'7729ab14-4b07-4a89-b43c-ef366a6b6aaahome-slider-1-ai.png', 32, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (58, N'2c570482-2b20-4f31-8fdc-7c8a3debc380books.sql', 32, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (63, N'ca3624e0-1b76-4f6d-958e-0691352ec0c0blog-img-big-3.jpg', 34, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (64, N'9114d90c-58f9-46b5-95d6-7d61294c753dblog-grid-1.jpg', 35, 1)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (68, N'db6b5d1e-63a0-441c-8333-9098ece22b41blog-grid-3.jpg', 33, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (69, N'd2c3d795-5ff3-4484-99de-e7bccfbb9132blog-grid-4.jpg', 33, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (70, N'0c000507-1dd8-4a44-8852-167a720a991dblog-img-big-3.jpg', 33, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (72, N'f28cc850-3957-444e-8b06-4763b9c6dc77best-seller-author.jpg', 30, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (73, N'e9b0bc61-e217-4a6d-a809-b1b25d8f318eblog-img-big-2.jpg', 30, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (74, N'4d456a44-42c7-4f6a-9efe-c64c23887d21best-seller-author.jpg', 31, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (79, N'cbc90d5e-fd4a-4214-9fca-29aa2950193fcat-gal-small-2.jpg', 35, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (80, N'b2d4b340-a746-471a-852f-34f305b24e2bclient-1.png', 35, NULL)
INSERT [dbo].[BookImages] ([Id], [Name], [BookId], [Status]) VALUES (81, N'89f3fd0f-fec2-4c28-9ab2-0d4562125803home-blog-2.jpg', 35, NULL)
SET IDENTITY_INSERT [dbo].[BookImages] OFF
GO
SET IDENTITY_INSERT [dbo].[BookReviews] ON 

INSERT [dbo].[BookReviews] ([Id], [AppUserId], [BookId], [Text], [Rate], [CreatedAt], [Status]) VALUES (5, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', 4, N'Eladir!', 1, CAST(N'2024-05-13T20:57:06.6838782' AS DateTime2), 0)
INSERT [dbo].[BookReviews] ([Id], [AppUserId], [BookId], [Text], [Rate], [CreatedAt], [Status]) VALUES (6, N'a2a39cb7-6b63-45fd-8c7d-8fc49b0dee96', 4, N'Pis deyil!', 3, CAST(N'2024-05-13T20:58:25.0264606' AS DateTime2), 0)
INSERT [dbo].[BookReviews] ([Id], [AppUserId], [BookId], [Text], [Rate], [CreatedAt], [Status]) VALUES (7, N'8cec30c9-0b3e-407b-8ea3-bc1b751c6819', 4, N'Yaxsidir', 4, CAST(N'2024-05-13T20:59:15.7661125' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[BookReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (1, 1, 1, N'Günlerin Köpüğü', NULL, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (2, 2, 2, N'Küçük Prens', NULL, 8.0000, 15.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), CAST(N'2024-05-13T15:28:35.4618750' AS DateTime2), 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (3, 2, 3, N'İnsanlık Durumu', NULL, 12.0000, 8.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (4, 4, 3, N'Küçük Prens', NULL, 10.0000, 4.0000, CAST(8.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (5, 3, 2, N'The Name of the Rose', NULL, 16.0000, 25.0000, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (6, 1, 1, N'Günlerin Köpüğü', NULL, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (7, 2, 2, N'The Gulag Archipelago', NULL, 8.0000, 15.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (8, 2, 3, N'7	Alcools', NULL, 12.0000, 8.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (9, 4, 3, N'Mavi Lotus', NULL, 10.0000, 4.0000, CAST(25.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (10, 3, 2, N'Cesur Yeni Dünya 1', NULL, 16.0000, 25.0000, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), CAST(N'2024-04-30T17:27:04.8147432' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (11, 1, 1, N'Kel Kantocu', NULL, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (12, 2, 2, N'Lolita', NULL, 8.0000, 15.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (13, 2, 3, N'İnsanlık Durumu', NULL, 12.0000, 8.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (14, 4, 3, N'Ulysses', NULL, 10.0000, 4.0000, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (15, 3, 2, N'The Name of the Rose', NULL, 16.0000, 25.0000, CAST(10.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (16, 1, 1, N'Tatar Çölü', NULL, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (17, 1, 1, N'kitab 1', N'fdsf', 20.0000, 40.0000, CAST(8.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), CAST(N'2024-04-30T17:24:21.3764430' AS DateTime2), 1, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (18, 1, 1, N'name 2', NULL, 4.0000, 10.0000, CAST(0.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (19, 1, 1, N'name 2', NULL, 3.0000, 10.0000, CAST(23.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (20, 1, 1, N'name 4', NULL, 33.0000, 34.0000, CAST(3.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (21, 4, 4, N'Name 5', NULL, 34.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 1, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (22, 4, 3, N'name 5', NULL, 3.0000, 33.0000, CAST(4.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (23, 6, 4, N'name 6', NULL, 66.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-23T20:25:40.8233333' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (24, 3, 3, N'test 1', N'fdsfds', 22.0000, 34.0000, CAST(20.00 AS Decimal(18, 2)), 1, NULL, NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (25, 4, 4, N'test 1', N'dsfdsf', 12.0000, 34.0000, CAST(23.00 AS Decimal(18, 2)), 1, NULL, NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (26, 6, 5, N'fdfd', N'ffdffd', 34.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 0, CAST(N'2024-04-30T17:28:06.0806335' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (27, 1, 1, N'fdsf', N'fsdfds', 34.0000, 34.0000, CAST(334.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T15:36:18.5434209' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (28, 4, 3, N'book 1', N'dsfdsfs', 34.0000, 324.0000, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T15:42:48.0172428' AS DateTime2), NULL, 1, 0, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (29, 4, 4, N'book 2', N'fdf', 3.0000, 34.0000, CAST(10.00 AS Decimal(18, 2)), 1, CAST(N'2024-05-01T15:46:22.9168265' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (30, 3, 5, N'book 3', N'fdf', 34.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T16:17:27.1218052' AS DateTime2), CAST(N'2024-05-02T16:52:08.3966611' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (31, 3, 3, N'ffdd', N'ere', 34.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T16:19:34.6360531' AS DateTime2), CAST(N'2024-05-02T16:58:28.8713892' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (32, 3, 3, N'fdsfds', N'ffdf', 34.0000, 34.0000, CAST(34.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T16:20:29.4874189' AS DateTime2), NULL, 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (33, 3, 3, N'book 4', N'edfd', 23.0000, 432.0000, CAST(2.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T17:19:24.2780009' AS DateTime2), CAST(N'2024-05-02T16:47:12.2087070' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (34, 3, 4, N'book 4', N'wewe', 2.0000, 23.0000, CAST(2.00 AS Decimal(18, 2)), 0, CAST(N'2024-05-01T17:20:24.7393557' AS DateTime2), CAST(N'2024-05-02T15:51:21.9214842' AS DateTime2), 0, 1, 0)
INSERT [dbo].[Books] ([Id], [GenreId], [AuthorId], [Name], [Desc], [CostPrice], [SalePrice], [DiscountPercent], [StockStatus], [CreatedAt], [ModifiedAt], [IsFeatured], [IsNew], [IsDeleted]) VALUES (35, 3, 6, N'book 5', N'dfd', 10.0000, 55.0000, CAST(5.00 AS Decimal(18, 2)), 1, CAST(N'2024-05-01T17:22:28.6722706' AS DateTime2), CAST(N'2024-05-06T15:56:34.9264644' AS DateTime2), 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (2, 1)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (34, 1)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (33, 2)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (34, 2)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (35, 2)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (2, 3)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (35, 3)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (2, 4)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (33, 4)
INSERT [dbo].[BookTags] ([BookId], [TagId]) VALUES (35, 4)
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (1, N'Tarix', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (2, N'Klassik', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (3, N'Drama', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (4, N'Romantik', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (5, N'Dedektif', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (6, N'Komiks', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (7, N'Elmi-Fantastik', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (8, N'Yeni', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (9, N'test', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (12, N'new', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (13, N'tezew', NULL, 0, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [CreatedAt], [IsDeleted], [ModifiedAt]) VALUES (14, N'genre 1', CAST(N'2024-05-08T17:26:32.7695168' AS DateTime2), 0, NULL)
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (1, 1, 6, 2, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (2, 1, 16, 1, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (3, 2, 6, 2, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (4, 2, 16, 1, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (5, 2, 4, 2, 10.0000, 4.0000, CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (6, 2, 11, 1, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [OrderId], [BookId], [Count], [CostPrice], [SalePrice], [DiscountPercent]) VALUES (7, 3, 6, 1, 4.0000, 10.0000, CAST(10.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Email], [Phone], [Address], [CreatedAt], [ModifiedAt], [Status], [Note]) VALUES (1, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', N'Hikmet Abbasov', N'hiko@gmail.com', N'+994555555555', N'Baki s nizami k 203 b', CAST(N'2024-05-14T21:33:40.3008927' AS DateTime2), NULL, 3, NULL)
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Email], [Phone], [Address], [CreatedAt], [ModifiedAt], [Status], [Note]) VALUES (2, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', N'Hikmet Abbasov', N'hiko@gmail.com', N'+994555555555', N'Baki s nizami k 203 b', CAST(N'2024-05-15T19:27:14.0216416' AS DateTime2), NULL, 3, NULL)
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Email], [Phone], [Address], [CreatedAt], [ModifiedAt], [Status], [Note]) VALUES (3, N'e7db1e77-68d3-4198-8d9e-26cbc5d61b64', N'Hikmet Abbasov', N'hiko@gmail.com', N'+994555555555', N'Baki s nizami k 203 b', CAST(N'2024-05-15T19:50:54.5431741' AS DateTime2), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Address', N'Baki ş. Nizami k. 203B Aff business 2-ci mərtəbə')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'ContactPhone', N'+994551111443')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'HeaderLogo', N'logo.png')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'SupportEmail', N'support@gmail.com')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'SupportPhone', N'+994555555555')
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [ImageName], [Order]) VALUES (7, N'fds', N'gfdfdsfdsfds', N'gfdhggf', N'hgfdh', N'fhgfh', N'bb5629d7-d64b-4cae-8ee5-b87d96d81d91home-slider-2-ai.png', 455)
INSERT [dbo].[Sliders] ([Id], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [ImageName], [Order]) VALUES (8, N'slider 3', N'fdsf', N'dsfdsfds', N'fdsf', N'dsfdsfds', N'da6ad4a5-1940-4dc3-a34b-e1902b8abafehome-4-slider-2.jpg', 34)
INSERT [dbo].[Sliders] ([Id], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [ImageName], [Order]) VALUES (9, N'dsfds', N'fds', N'gfdg', N'fdgfdg', N'45', N'f46e2109-f91d-4e0b-888f-adb39f1ed97bhome-slider-2-ai.png', 4)
INSERT [dbo].[Sliders] ([Id], [Title1], [Title2], [Desc], [BtnText], [BtnUrl], [ImageName], [Order]) VALUES (10, N'gfdgfd', N'gfdgfd', N'gfdgfd', N'gdgfdgfd', N'erewfre', N'6e85e1dd-7375-429f-87a2-8227327e661dhome-3-slider-2.jpg', 54)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Yeni')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Endirimdə')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Ən çox satan')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Elmarın seçimi')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BasketItems_AppUserId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_AppUserId] ON [dbo].[BasketItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_BookId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_BookId] ON [dbo].[BasketItems]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookImages_BookId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookImages_BookId] ON [dbo].[BookImages]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BookReviews_AppUserId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookReviews_AppUserId] ON [dbo].[BookReviews]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookReviews_BookId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookReviews_BookId] ON [dbo].[BookReviews]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_AuthorId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_AuthorId] ON [dbo].[Books]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_GenreId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_GenreId] ON [dbo].[Books]
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookTags_TagId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_BookTags_TagId] ON [dbo].[BookTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_BookId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_BookId] ON [dbo].[OrderItems]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 5/16/2024 7:33:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFeatured]
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNew]
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Genres] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Books_BookId]
GO
ALTER TABLE [dbo].[BookImages]  WITH CHECK ADD  CONSTRAINT [FK_BookImages_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookImages] CHECK CONSTRAINT [FK_BookImages_Books_BookId]
GO
ALTER TABLE [dbo].[BookReviews]  WITH CHECK ADD  CONSTRAINT [FK_BookReviews_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BookReviews] CHECK CONSTRAINT [FK_BookReviews_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BookReviews]  WITH CHECK ADD  CONSTRAINT [FK_BookReviews_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookReviews] CHECK CONSTRAINT [FK_BookReviews_Books_BookId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors_AuthorId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Genres_GenreId]
GO
ALTER TABLE [dbo].[BookTags]  WITH CHECK ADD  CONSTRAINT [FK_BookTags_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookTags] CHECK CONSTRAINT [FK_BookTags_Books_BookId]
GO
ALTER TABLE [dbo].[BookTags]  WITH CHECK ADD  CONSTRAINT [FK_BookTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookTags] CHECK CONSTRAINT [FK_BookTags_Tags_TagId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Books_BookId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [pustokDb] SET  READ_WRITE 
GO
