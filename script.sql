USE [master]
GO
/****** Object:  Database [TestGoogleLogin]    Script Date: 1/13/2025 2:27:26 PM ******/
CREATE DATABASE [TestGoogleLogin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestGoogleLogin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestGoogleLogin.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestGoogleLogin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestGoogleLogin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TestGoogleLogin] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestGoogleLogin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestGoogleLogin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestGoogleLogin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestGoogleLogin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestGoogleLogin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestGoogleLogin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET RECOVERY FULL 
GO
ALTER DATABASE [TestGoogleLogin] SET  MULTI_USER 
GO
ALTER DATABASE [TestGoogleLogin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestGoogleLogin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestGoogleLogin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestGoogleLogin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestGoogleLogin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestGoogleLogin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestGoogleLogin', N'ON'
GO
ALTER DATABASE [TestGoogleLogin] SET QUERY_STORE = ON
GO
ALTER DATABASE [TestGoogleLogin] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TestGoogleLogin]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[Arseachs]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arseachs](
	[id] [nvarchar](450) NOT NULL,
	[arsearch_id] [nvarchar](max) NOT NULL,
	[arseach_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Arseachs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArTopics]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArTopics](
	[id] [nvarchar](450) NOT NULL,
	[artopic_id] [nvarchar](max) NOT NULL,
	[artopic_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ArTopics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[googleId] [nvarchar](max) NULL,
	[role] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/13/2025 2:27:26 PM ******/
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
/****** Object:  Table [dbo].[Books]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id] [nvarchar](450) NOT NULL,
	[book_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](max) NOT NULL,
	[category_name] [nvarchar](max) NOT NULL,
	[type] [nvarchar](max) NOT NULL,
	[training_id] [nvarchar](max) NOT NULL,
	[research_number] [int] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conferences]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conferences](
	[id] [nvarchar](450) NOT NULL,
	[conference_name] [nvarchar](max) NOT NULL,
	[seminar_id] [nvarchar](450) NOT NULL,
	[office] [nvarchar](max) NULL,
	[unit] [nvarchar](max) NULL,
	[status_name] [nvarchar](max) NULL,
	[date] [datetime2](7) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[money] [nvarchar](max) NULL,
 CONSTRAINT [PK_Conferences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Council]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Council](
	[id] [nvarchar](450) NOT NULL,
	[decision_number] [int] NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[lvcouncil_id] [nvarchar](max) NOT NULL,
	[tpcouncil_id] [nvarchar](max) NOT NULL,
	[tpcouncilid] [nvarchar](450) NULL,
	[council_name] [nvarchar](max) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Council] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Councils]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Councils](
	[id] [nvarchar](450) NOT NULL,
	[position_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Councils] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculums]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculums](
	[id] [nvarchar](450) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[year] [int] NOT NULL,
	[publisher] [nvarchar](max) NOT NULL,
	[book_id] [nvarchar](450) NOT NULL,
	[training_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Curriculums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[id] [nvarchar](450) NOT NULL,
	[original_name] [nvarchar](max) NOT NULL,
	[file_path] [nvarchar](max) NOT NULL,
	[file_type] [nvarchar](max) NOT NULL,
	[related_id] [nvarchar](max) NOT NULL,
	[related_type] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LvTopics]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvTopics](
	[id] [nvarchar](450) NOT NULL,
	[lvtopic_name] [nvarchar](max) NOT NULL,
	[category] [int] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LvTopics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Magazines]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magazines](
	[id] [nvarchar](450) NOT NULL,
	[magazine_name] [nvarchar](max) NOT NULL,
	[year] [int] NOT NULL,
	[journal] [nvarchar](max) NOT NULL,
	[paper_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Magazines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneys]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneys](
	[id] [nvarchar](450) NOT NULL,
	[money_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Moneys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[id] [nvarchar](450) NOT NULL,
	[year] [int] NOT NULL,
	[offer_name] [nvarchar](max) NOT NULL,
	[propose_id] [nvarchar](450) NOT NULL,
	[note] [nvarchar](max) NULL,
	[status] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[id] [nvarchar](450) NOT NULL,
	[office_id] [nvarchar](max) NOT NULL,
	[office_name] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NULL,
	[phone] [int] NULL,
	[email] [nvarchar](max) NULL,
	[office_parent] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Papers]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Papers](
	[id] [nvarchar](450) NOT NULL,
	[paper_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Papers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [nvarchar](450) NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposes]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposes](
	[id] [nvarchar](450) NOT NULL,
	[propose_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Proposes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [nvarchar](450) NOT NULL,
	[role_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[role_type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistCurriculumRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistCurriculumRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[curriculum_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[requestStatus] [nvarchar](max) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_ScientistCurriculumRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistMagazineRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistMagazineRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[magazine_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ScientistMagazineRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistOfferRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistOfferRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[offer_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[requestStatus] [nvarchar](max) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_ScientistOfferRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scientists]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scientists](
	[id] [nvarchar](450) NOT NULL,
	[user_id] [nvarchar](max) NULL,
	[profile_id] [nvarchar](max) NOT NULL,
	[profile_name] [nvarchar](max) NOT NULL,
	[birthday] [datetime2](7) NULL,
	[gender] [nvarchar](max) NULL,
	[birth_place] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[office_phone] [nvarchar](max) NULL,
	[house_phone] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[degree_Id] [int] NULL,
	[nvestiture] [nvarchar](max) NULL,
	[scientific_title] [nvarchar](max) NULL,
	[research_major] [nvarchar](max) NULL,
	[research_title] [nvarchar](max) NULL,
	[research_position] [nvarchar](max) NULL,
	[office_id] [nvarchar](max) NULL,
	[address_office] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[Officeid] [nvarchar](450) NULL,
 CONSTRAINT [PK_Scientists] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistTopicRoles]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistTopicRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[topic_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[status] [bit] NULL,
	[requestStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_ScientistTopicRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[id] [nvarchar](450) NOT NULL,
	[year] [int] NOT NULL,
	[decision_num] [nvarchar](max) NOT NULL,
	[tbscore_name] [nvarchar](max) NOT NULL,
	[mark] [int] NOT NULL,
	[council] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seminars]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seminars](
	[id] [nvarchar](450) NOT NULL,
	[seminar_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Seminars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suggesttions]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suggesttions](
	[id] [nvarchar](450) NOT NULL,
	[suggestion_id] [nvarchar](max) NOT NULL,
	[suggestion_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Suggesttions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[id] [nvarchar](450) NOT NULL,
	[topic_name] [nvarchar](max) NOT NULL,
	[result] [nvarchar](max) NOT NULL,
	[lvtopic_id] [nvarchar](450) NOT NULL,
	[start_date] [datetime2](7) NULL,
	[end_date] [datetime2](7) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TpCouncils]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TpCouncils](
	[id] [nvarchar](450) NOT NULL,
	[tpcouncil_id] [nvarchar](max) NOT NULL,
	[tpcouncil_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TpCouncils] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainings]    Script Date: 1/13/2025 2:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainings](
	[id] [nvarchar](450) NOT NULL,
	[training_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Trainings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241221155131_InitialTest', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241221164730_InitialTest2', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241221171859_Initial', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241222151731_Scientist', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241223020355_initialScientist', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241228142248_updateTopic', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241230153849_updateResult', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241230163910_updateMagazine', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241230164046_updatepaper', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231030159_test', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231045946_updatebook', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231064230_updatebookfk', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231073606_updatecurriculum', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231081421_updateoffer', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241231094025_updateoffer1', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102034539_updaterole', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102035805_updatetopicstatus', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102100456_updatetopicrequeststatus', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250102103032_updatetopicrequest', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250103072750_updateoffice', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250104084119_updateData', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250106030331_updateDateTopic', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250106105830_updateCurriculumStatus', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250110064642_updateofferstatus', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250111150258_updateDatabase', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250112165117_updateCouncil', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113022655_updatedt', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'087ff5ff-4f31-4a8d-a532-677c43ff6052', N'Administrators', N'ADMINISTRATORS', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'286543b9-a1fe-4fb1-9fe1-a9b04f772aa1', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'109263800306905871301', N'Google', N'9e3c20ea-e105-4082-a7a7-ccb527c9eb96')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f5cf100-764f-4d0f-a9da-abdb027cdf02', N'087ff5ff-4f31-4a8d-a532-677c43ff6052')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e3c20ea-e105-4082-a7a7-ccb527c9eb96', N'087ff5ff-4f31-4a8d-a532-677c43ff6052')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4549989a-156e-46b9-81a0-41a3eb9325c9', N'286543b9-a1fe-4fb1-9fe1-a9b04f772aa1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f5cf100-764f-4d0f-a9da-abdb027cdf02', N'286543b9-a1fe-4fb1-9fe1-a9b04f772aa1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e3c20ea-e105-4082-a7a7-ccb527c9eb96', N'286543b9-a1fe-4fb1-9fe1-a9b04f772aa1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [googleId], [role]) VALUES (N'4549989a-156e-46b9-81a0-41a3eb9325c9', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELGSGoOYThe64FZ+AJ9eJYuDu53/9Na/NNqcvXe2WfQH0W+n3TPAWdEG9aAEC0bm/A==', N'ZMZ5PTPGA76GVJLGBWP7I5I53SYWLE6I', N'5ffde579-2257-4e10-b9a4-7f84661c03f9', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [googleId], [role]) VALUES (N'8f5cf100-764f-4d0f-a9da-abdb027cdf02', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJFXosW/CjeK18CkCrzAlLhwcSv/2NXuK+NRNo6MA7iG1LEa62+AiKrAIBJfLuof3w==', N'IS6IBZWEJ3SG2UR26SR5DVSIQH3YSX3X', N'04bc3214-f42a-48d7-aabc-cf780422989e', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [googleId], [role]) VALUES (N'9e3c20ea-e105-4082-a7a7-ccb527c9eb96', N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', 1, NULL, N'J6UCBXZHFJZ5VYHX7QIVMEGZINBMKTKE', N'7c334568-d569-467a-9831-0066912ad088', NULL, 0, 0, NULL, 1, 0, NULL, N'User')
GO
INSERT [dbo].[Books] ([id], [book_name], [created_at], [updated_at]) VALUES (N'E3B6DF7E-CE0E-4E85-95F4-BA28FCE782FB', N'Sách giáo trình', CAST(N'2024-12-31T14:54:31.3100000' AS DateTime2), CAST(N'2024-12-31T14:54:31.3100000' AS DateTime2))
GO
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at]) VALUES (N'bad9c6fc-ada9-4fc2-9fbb-e868b6b8b1d0', N'Test user', 2025, N'User account', N'E3B6DF7E-CE0E-4E85-95F4-BA28FCE782FB', N'1530188C-0550-413E-8AA3-3C1560A516FE', CAST(N'2025-01-09T10:00:30.8482877' AS DateTime2), CAST(N'2025-01-09T03:22:08.4128751' AS DateTime2))
GO
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'13811E42-A106-4BDC-A19F-F8FF0F559774', N'Đề tài cấp cơ sở phân cấp', 0, CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2), CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2))
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'1E2BBA35-3E21-4F1A-9539-B3C0BDE2557E', N'Đề tài cấp quốc gia', 0, CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2), CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2))
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'312930E0-11C5-472F-9CB6-7D1502420E17', N'Đề tài cấp tỉnh', 0, CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2), CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2))
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'CAD9D455-1E7C-4FB7-92D3-E8C685A4F62B', N'Đề tài cấp trường', 0, CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2), CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2))
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'DDFE23FC-E090-4E6A-82A8-816747AA0E59', N'Đề tài cấp quốc tế', 0, CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2), CAST(N'2024-12-24T09:29:21.0500000' AS DateTime2))
GO
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at]) VALUES (N'7e7682ab-0069-48cf-bf01-1aea4f55df5d', N'Test', 2017, N'Tạp chí tuổi trẻddd', N'48F104E3-9A87-4058-B3C6-EB7A0D8F6677', CAST(N'2024-12-31T11:04:03.7066811' AS DateTime2), CAST(N'2024-12-31T04:10:22.9792834' AS DateTime2))
GO
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at]) VALUES (N'a16ad0a1-8fa2-4963-ad1a-1294868d003b', 2022, N'Test offer', N'340AAA45-A780-4AF3-8FD5-C85605E8F3F0', N'demo', N'Chưa duyệt', CAST(N'2025-01-10T17:44:07.5466056' AS DateTime2), CAST(N'2025-01-10T10:46:56.1592897' AS DateTime2))
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at]) VALUES (N'bb443189-73b6-436b-adfe-e9a7619c2ef8', 2023, N'resss', N'340AAA45-A780-4AF3-8FD5-C85605E8F3F0', NULL, N'Chưa duyệt', CAST(N'2024-12-31T16:40:56.7540409' AS DateTime2), CAST(N'2024-12-31T16:40:56.7540784' AS DateTime2))
GO
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'1', N'VP001', N'Văn phòng chính', N'123 Đường Chính, Thành phố Hà Nội', 241234567, N'vanphongchinh@example.com', NULL, CAST(N'2025-01-01T10:00:00.0000000' AS DateTime2), CAST(N'2025-01-01T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'2', N'VP002', N'Chi nhánh miền Bắc', N'456 Đường Phố, Thành phố Hải Phòng', 317654321, N'chinhanhmienbac@example.com', N'VP001', CAST(N'2025-01-02T11:00:00.0000000' AS DateTime2), CAST(N'2025-01-02T11:00:00.0000000' AS DateTime2))
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'3', N'VP003', N'Chi nhánh miền Trung', N'789 Đường Biển, Thành phố Đà Nẵng', 511223344, N'chinhanhmientrung@example.com', N'VP001', CAST(N'2025-01-03T12:00:00.0000000' AS DateTime2), CAST(N'2025-01-03T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'4', N'VP004', N'Chi nhánh miền Nam', N'321 Đường Cây, Thành phố Hồ Chí Minh', 284455667, N'chinhanhmiennam@example.com', NULL, CAST(N'2025-01-04T13:00:00.0000000' AS DateTime2), CAST(N'2025-01-04T13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'5', N'VP005', N'Văn phòng địa phương', N'654 Đường Hoa, Thành phố Cần Thơ', 717788990, N'vanphongdlphuong@example.com', N'VP004', CAST(N'2025-01-05T14:00:00.0000000' AS DateTime2), CAST(N'2025-01-05T14:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at]) VALUES (N'48F104E3-9A87-4058-B3C6-EB7A0D8F6677', N'Bài báo nghiên cứu', CAST(N'2024-12-31T10:22:52.7266667' AS DateTime2), CAST(N'2024-12-31T10:22:52.7266667' AS DateTime2))
GO
INSERT [dbo].[Proposes] ([id], [propose_name], [created_at], [updated_at]) VALUES (N'340AAA45-A780-4AF3-8FD5-C85605E8F3F0', N'Ðể tài cấp cơ sở phân cấp', CAST(N'2024-12-31T16:14:01.6866667' AS DateTime2), CAST(N'2024-12-31T16:14:01.6866667' AS DateTime2))
GO
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'25A384DF-B97B-4D31-A6E9-3EAA9199160A', N'Đồng tác giả', CAST(N'2025-01-06T14:44:50.0600000' AS DateTime2), CAST(N'2025-01-06T14:44:50.0600000' AS DateTime2), N'curriculum')
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'3ED82E69-C027-44FD-9F08-92A00CFBD2F8', N'Chủ biên', CAST(N'2025-01-10T13:56:11.8533333' AS DateTime2), CAST(N'2025-01-10T13:56:11.8533333' AS DateTime2), N'topic')
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'3FD85DFE-33A1-4179-8AD5-77BED12FEEC4', N'Nhà báo', CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), N'magazine')
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'4709C59A-FCDB-41E4-ACD0-A23FD479BFA6', N'Nhà nghiên cứu', CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), N'topic')
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'B9166D33-14BA-4938-AAE9-84BC004F9A99', N'Chủ nhiệm dự án', CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), CAST(N'2024-12-24T09:18:49.6633333' AS DateTime2), N'topic')
INSERT [dbo].[Roles] ([id], [role_name], [created_at], [updated_at], [role_type]) VALUES (N'F4609032-EFFE-4073-BCF0-414FB057E277', N'Tác giả', CAST(N'2024-12-31T14:58:30.7900000' AS DateTime2), CAST(N'2024-12-31T14:58:30.7900000' AS DateTime2), N'curriculum')
GO
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'7483b52b-262b-47d1-8158-c2434686aad7', N'86979408-09e4-4a76-a731-44af156017f8', N'bad9c6fc-ada9-4fc2-9fbb-e868b6b8b1d0', N'25A384DF-B97B-4D31-A6E9-3EAA9199160A', CAST(N'2025-01-09T03:00:53.4244548' AS DateTime2), CAST(N'2025-01-09T03:22:08.5180184' AS DateTime2), N'Đã tham gia', NULL)
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'91607bbe-c207-468d-9325-6e00fef725b8', N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'bad9c6fc-ada9-4fc2-9fbb-e868b6b8b1d0', N'F4609032-EFFE-4073-BCF0-414FB057E277', CAST(N'2025-01-09T03:00:30.9722334' AS DateTime2), CAST(N'2025-01-09T03:00:30.9722547' AS DateTime2), N'Đã tham gia', NULL)
GO
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at]) VALUES (N'fa03f105-1a29-45d8-998e-30f7378dc7d0', N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'7e7682ab-0069-48cf-bf01-1aea4f55df5d', N'3FD85DFE-33A1-4179-8AD5-77BED12FEEC4', CAST(N'2024-12-31T04:04:03.8469706' AS DateTime2), CAST(N'2024-12-31T04:10:22.9971337' AS DateTime2))
GO
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'2cb53d3a-6c8f-4d9c-9336-8e401fc87565', N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'bb443189-73b6-436b-adfe-e9a7619c2ef8', N'B9166D33-14BA-4938-AAE9-84BC004F9A99', CAST(N'2024-12-31T09:40:56.8732584' AS DateTime2), CAST(N'2024-12-31T09:40:56.8732900' AS DateTime2), NULL, NULL)
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'450693cb-0de3-49af-941d-6a2b6ea0abad', N'86979408-09e4-4a76-a731-44af156017f8', N'a16ad0a1-8fa2-4963-ad1a-1294868d003b', N'3ED82E69-C027-44FD-9F08-92A00CFBD2F8', CAST(N'2025-01-10T10:46:38.7080740' AS DateTime2), CAST(N'2025-01-10T10:46:56.1802093' AS DateTime2), N'Đã tham gia', NULL)
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'de01b8ae-2452-4e59-ada8-c3ba73e1e808', N'b192f143-f0ef-4ee6-a10c-f1d4a39636cf', N'a16ad0a1-8fa2-4963-ad1a-1294868d003b', N'B9166D33-14BA-4938-AAE9-84BC004F9A99', CAST(N'2025-01-10T10:44:07.6672688' AS DateTime2), CAST(N'2025-01-10T10:44:07.6672979' AS DateTime2), N'Đã tham gia', NULL)
GO
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_Id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at], [Officeid]) VALUES (N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'9e3c20ea-e105-4082-a7a7-ccb527c9eb96', N'b5e5fa04-52e8-4b90-b1e5-a0d80cd0ca72', N'test', NULL, N'test', N'test', N'test', N'0123456789', N'0123456789', N'0123456789', N'ducthang191102@gmail.com', 1, N'test', N'test', NULL, N'test', N'test', N'VP001', N'123 Đường Chính, Thành phố Hà Nội', CAST(N'2024-12-23T09:18:06.4296932' AS DateTime2), CAST(N'2024-12-23T09:18:06.4300341' AS DateTime2), NULL)
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_Id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at], [Officeid]) VALUES (N'86979408-09e4-4a76-a731-44af156017f8', N'8f5cf100-764f-4d0f-a9da-abdb027cdf02', N'1356d489-a55f-4cb4-8fae-29daaf2ba04e', N'Admin', CAST(N'2024-12-05T00:00:00.0000000' AS DateTime2), N'Nam', N'Admin', N'Admin', N'0123456789', N'0123456789', N'0123456789', N'admin@gmail.com', 1, N'2012', N'Admin', NULL, N'Admin', N'Admin', N'Admin', N'Admin', CAST(N'2024-12-26T17:33:24.4295978' AS DateTime2), CAST(N'2024-12-26T17:33:24.4298260' AS DateTime2), NULL)
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_Id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at], [Officeid]) VALUES (N'b192f143-f0ef-4ee6-a10c-f1d4a39636cf', N'4549989a-156e-46b9-81a0-41a3eb9325c9', N'65c59d04-cf53-4071-8795-990f950057c8', N'User test', CAST(N'2024-10-23T00:00:00.0000000' AS DateTime2), N'Nam', N'Test user', NULL, N'0123456789', N'0123456789', N'0123456789', N'user@gmail.com', 1, N'2022', NULL, NULL, N'User', N'User', N'VP004', N'321 Đường Cây, Thành phố Hồ Chí Minh', CAST(N'2025-01-06T09:35:23.2675851' AS DateTime2), CAST(N'2025-01-13T14:19:36.1485583' AS DateTime2), NULL)
GO
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [created_at], [updated_at], [status], [requestStatus]) VALUES (N'190a571c-5a96-49e4-8df0-d43bd20c0009', N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'cf47efe8-b4d6-451f-9c96-3268c8b82949', N'B9166D33-14BA-4938-AAE9-84BC004F9A99', CAST(N'2025-01-02T08:44:28.2010929' AS DateTime2), CAST(N'2025-01-02T08:44:28.2011175' AS DateTime2), 0, N'Đã tham gia')
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [created_at], [updated_at], [status], [requestStatus]) VALUES (N'20a8ef5d-dcb8-40f3-976e-783ad2bf828a', N'5b50b516-0ace-4e9b-b232-9699aae4e6e9', N'b01df805-3ae6-4d90-bab0-9b0ddefd1eb0', N'4709C59A-FCDB-41E4-ACD0-A23FD479BFA6', CAST(N'2025-01-06T07:49:33.6252216' AS DateTime2), CAST(N'2025-01-06T07:49:53.2358521' AS DateTime2), 0, N'Đã tham gia')
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [created_at], [updated_at], [status], [requestStatus]) VALUES (N'6e7f874c-3254-491c-a065-c7aef9ae18c1', N'b192f143-f0ef-4ee6-a10c-f1d4a39636cf', N'b01df805-3ae6-4d90-bab0-9b0ddefd1eb0', N'B9166D33-14BA-4938-AAE9-84BC004F9A99', CAST(N'2025-01-06T07:19:58.2255728' AS DateTime2), CAST(N'2025-01-06T07:19:58.2256064' AS DateTime2), 0, N'Đã tham gia')
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [created_at], [updated_at], [status], [requestStatus]) VALUES (N'846f91d8-aa1f-4941-9418-e3b5faa46586', N'86979408-09e4-4a76-a731-44af156017f8', N'cf47efe8-b4d6-451f-9c96-3268c8b82949', N'4709C59A-FCDB-41E4-ACD0-A23FD479BFA6', CAST(N'2025-01-02T09:19:33.3629334' AS DateTime2), CAST(N'2025-01-02T10:51:00.3747450' AS DateTime2), 0, N'Đã tham gia')
GO
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'b01df805-3ae6-4d90-bab0-9b0ddefd1eb0', N'Test', N'Chưa_kết_thúc', N'312930E0-11C5-472F-9CB6-7D1502420E17', NULL, NULL, CAST(N'2025-01-06T14:19:58.0794567' AS DateTime2), CAST(N'2025-01-06T07:49:53.2066292' AS DateTime2))
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'cf47efe8-b4d6-451f-9c96-3268c8b82949', N'test', N'Chưa_kết_thúc', N'13811E42-A106-4BDC-A19F-F8FF0F559774', CAST(N'2025-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-02T15:44:28.0720787' AS DateTime2), CAST(N'2025-01-02T10:51:00.2512414' AS DateTime2))
GO
INSERT [dbo].[Trainings] ([id], [training_name], [created_at], [updated_at]) VALUES (N'1530188C-0550-413E-8AA3-3C1560A516FE', N'Đại học', CAST(N'2024-12-31T14:56:06.7000000' AS DateTime2), CAST(N'2024-12-31T14:56:06.7000000' AS DateTime2))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Conferences_seminar_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Conferences_seminar_id] ON [dbo].[Conferences]
(
	[seminar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Council_tpcouncilid]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Council_tpcouncilid] ON [dbo].[Council]
(
	[tpcouncilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_book_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_book_id] ON [dbo].[Curriculums]
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_training_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_training_id] ON [dbo].[Curriculums]
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Magazines_paper_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Magazines_paper_id] ON [dbo].[Magazines]
(
	[paper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Offers_propose_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_propose_id] ON [dbo].[Offers]
(
	[propose_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_curriculum_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_curriculum_id] ON [dbo].[ScientistCurriculumRoles]
(
	[curriculum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_role_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_role_id] ON [dbo].[ScientistCurriculumRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_scientist_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_scientist_id] ON [dbo].[ScientistCurriculumRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_magazine_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_magazine_id] ON [dbo].[ScientistMagazineRoles]
(
	[magazine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_role_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_role_id] ON [dbo].[ScientistMagazineRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_scientist_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_scientist_id] ON [dbo].[ScientistMagazineRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_offer_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_offer_id] ON [dbo].[ScientistOfferRoles]
(
	[offer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_role_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_role_id] ON [dbo].[ScientistOfferRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_scientist_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_scientist_id] ON [dbo].[ScientistOfferRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Scientists_Officeid]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Scientists_Officeid] ON [dbo].[Scientists]
(
	[Officeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_role_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_role_id] ON [dbo].[ScientistTopicRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_scientist_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_scientist_id] ON [dbo].[ScientistTopicRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_topic_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_topic_id] ON [dbo].[ScientistTopicRoles]
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Topics_lvtopic_id]    Script Date: 1/13/2025 2:27:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topics_lvtopic_id] ON [dbo].[Topics]
(
	[lvtopic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Conferences]  WITH CHECK ADD  CONSTRAINT [FK_Conferences_Seminars_seminar_id] FOREIGN KEY([seminar_id])
REFERENCES [dbo].[Seminars] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Conferences] CHECK CONSTRAINT [FK_Conferences_Seminars_seminar_id]
GO
ALTER TABLE [dbo].[Council]  WITH CHECK ADD  CONSTRAINT [FK_Council_TpCouncils_tpcouncilid] FOREIGN KEY([tpcouncilid])
REFERENCES [dbo].[TpCouncils] ([id])
GO
ALTER TABLE [dbo].[Council] CHECK CONSTRAINT [FK_Council_TpCouncils_tpcouncilid]
GO
ALTER TABLE [dbo].[Curriculums]  WITH CHECK ADD  CONSTRAINT [FK_Curriculums_Books_book_id] FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculums] CHECK CONSTRAINT [FK_Curriculums_Books_book_id]
GO
ALTER TABLE [dbo].[Curriculums]  WITH CHECK ADD  CONSTRAINT [FK_Curriculums_Trainings_training_id] FOREIGN KEY([training_id])
REFERENCES [dbo].[Trainings] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculums] CHECK CONSTRAINT [FK_Curriculums_Trainings_training_id]
GO
ALTER TABLE [dbo].[Magazines]  WITH CHECK ADD  CONSTRAINT [FK_Magazines_Papers_paper_id] FOREIGN KEY([paper_id])
REFERENCES [dbo].[Papers] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Magazines] CHECK CONSTRAINT [FK_Magazines_Papers_paper_id]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Proposes_propose_id] FOREIGN KEY([propose_id])
REFERENCES [dbo].[Proposes] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Proposes_propose_id]
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistCurriculumRoles_Curriculums_curriculum_id] FOREIGN KEY([curriculum_id])
REFERENCES [dbo].[Curriculums] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles] CHECK CONSTRAINT [FK_ScientistCurriculumRoles_Curriculums_curriculum_id]
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistCurriculumRoles_Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles] CHECK CONSTRAINT [FK_ScientistCurriculumRoles_Roles_role_id]
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistCurriculumRoles_Scientists_scientist_id] FOREIGN KEY([scientist_id])
REFERENCES [dbo].[Scientists] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistCurriculumRoles] CHECK CONSTRAINT [FK_ScientistCurriculumRoles_Scientists_scientist_id]
GO
ALTER TABLE [dbo].[ScientistMagazineRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistMagazineRoles_Magazines_magazine_id] FOREIGN KEY([magazine_id])
REFERENCES [dbo].[Magazines] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistMagazineRoles] CHECK CONSTRAINT [FK_ScientistMagazineRoles_Magazines_magazine_id]
GO
ALTER TABLE [dbo].[ScientistMagazineRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistMagazineRoles_Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistMagazineRoles] CHECK CONSTRAINT [FK_ScientistMagazineRoles_Roles_role_id]
GO
ALTER TABLE [dbo].[ScientistMagazineRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistMagazineRoles_Scientists_scientist_id] FOREIGN KEY([scientist_id])
REFERENCES [dbo].[Scientists] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistMagazineRoles] CHECK CONSTRAINT [FK_ScientistMagazineRoles_Scientists_scientist_id]
GO
ALTER TABLE [dbo].[ScientistOfferRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistOfferRoles_Offers_offer_id] FOREIGN KEY([offer_id])
REFERENCES [dbo].[Offers] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistOfferRoles] CHECK CONSTRAINT [FK_ScientistOfferRoles_Offers_offer_id]
GO
ALTER TABLE [dbo].[ScientistOfferRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistOfferRoles_Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistOfferRoles] CHECK CONSTRAINT [FK_ScientistOfferRoles_Roles_role_id]
GO
ALTER TABLE [dbo].[ScientistOfferRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistOfferRoles_Scientists_scientist_id] FOREIGN KEY([scientist_id])
REFERENCES [dbo].[Scientists] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistOfferRoles] CHECK CONSTRAINT [FK_ScientistOfferRoles_Scientists_scientist_id]
GO
ALTER TABLE [dbo].[Scientists]  WITH CHECK ADD  CONSTRAINT [FK_Scientists_Offices_Officeid] FOREIGN KEY([Officeid])
REFERENCES [dbo].[Offices] ([id])
GO
ALTER TABLE [dbo].[Scientists] CHECK CONSTRAINT [FK_Scientists_Offices_Officeid]
GO
ALTER TABLE [dbo].[ScientistTopicRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistTopicRoles_Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistTopicRoles] CHECK CONSTRAINT [FK_ScientistTopicRoles_Roles_role_id]
GO
ALTER TABLE [dbo].[ScientistTopicRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistTopicRoles_Scientists_scientist_id] FOREIGN KEY([scientist_id])
REFERENCES [dbo].[Scientists] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistTopicRoles] CHECK CONSTRAINT [FK_ScientistTopicRoles_Scientists_scientist_id]
GO
ALTER TABLE [dbo].[ScientistTopicRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistTopicRoles_Topics_topic_id] FOREIGN KEY([topic_id])
REFERENCES [dbo].[Topics] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScientistTopicRoles] CHECK CONSTRAINT [FK_ScientistTopicRoles_Topics_topic_id]
GO
ALTER TABLE [dbo].[Topics]  WITH CHECK ADD  CONSTRAINT [FK_Topics_LvTopics_lvtopic_id] FOREIGN KEY([lvtopic_id])
REFERENCES [dbo].[LvTopics] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topics] CHECK CONSTRAINT [FK_Topics_LvTopics_lvtopic_id]
GO
USE [master]
GO
ALTER DATABASE [TestGoogleLogin] SET  READ_WRITE 
GO
