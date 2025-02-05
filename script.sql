USE [master]
GO
/****** Object:  Database [Final_Database]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE DATABASE [Final_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Final_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Final_Database.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Final_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Final_Database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Final_Database] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Final_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Final_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Final_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Final_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Final_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Final_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Final_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Final_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Final_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Final_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Final_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Final_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Final_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Final_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Final_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Final_Database] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Final_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Final_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Final_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Final_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Final_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Final_Database] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Final_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Final_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Final_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Final_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Final_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Final_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Final_Database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Final_Database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Final_Database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Final_Database', N'ON'
GO
ALTER DATABASE [Final_Database] SET QUERY_STORE = ON
GO
ALTER DATABASE [Final_Database] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Final_Database]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Arseachs]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[ArTopics]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[role] [nvarchar](max) NULL,
	[googleId] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Books]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[category_name] [nvarchar](max) NOT NULL,
	[type] [nvarchar](max) NOT NULL,
	[training_id] [nvarchar](450) NOT NULL,
	[research_number] [int] NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conferences]    Script Date: 2/3/2025 6:14:51 PM ******/
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
	[money] [nvarchar](max) NULL,
	[status_name] [nvarchar](max) NULL,
	[date] [datetime2](7) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Conferences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Council]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Council](
	[id] [nvarchar](450) NOT NULL,
	[decision_number] [int] NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[lvcouncil_id] [nvarchar](max) NOT NULL,
	[lvCouncilid] [nvarchar](450) NULL,
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
/****** Object:  Table [dbo].[Councils]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Curriculums]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Degrees]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degrees](
	[id] [nvarchar](450) NOT NULL,
	[degree_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Degrees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[LvCouncils]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvCouncils](
	[id] [nvarchar](450) NOT NULL,
	[lvcoucil_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LvCouncils] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LvTopics]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Magazines]    Script Date: 2/3/2025 6:14:51 PM ******/
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
	[magazine_scope] [nvarchar](max) NULL,
	[rank] [nvarchar](max) NULL,
	[magazine_score_id] [nvarchar](450) NULL,
 CONSTRAINT [PK_Magazines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MagazineScores]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MagazineScores](
	[id] [nvarchar](450) NOT NULL,
	[magazine_score_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[scope] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MagazineScores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneys]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Offers]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Offices]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Papers]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Projects]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[id] [nvarchar](450) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[reseacher_id] [nvarchar](max) NOT NULL,
	[researcherid] [nvarchar](450) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_by] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposes]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Researchers]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Researchers](
	[id] [nvarchar](450) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Researchers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [nvarchar](450) NOT NULL,
	[role_name] [nvarchar](max) NOT NULL,
	[role_type] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistCurriculumRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistCurriculumRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[curriculum_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[status] [bit] NULL,
	[requestStatus] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ScientistCurriculumRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistMagazineRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
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
	[requestStatus] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[ScientistRequestid] [nvarchar](450) NULL,
 CONSTRAINT [PK_ScientistMagazineRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistOfferRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistOfferRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[offer_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[status] [bit] NULL,
	[requestStatus] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ScientistOfferRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scientists]    Script Date: 2/3/2025 6:14:51 PM ******/
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
	[degree_id] [nvarchar](450) NOT NULL,
	[nvestiture] [nvarchar](max) NULL,
	[scientific_title] [nvarchar](max) NULL,
	[research_major] [nvarchar](max) NULL,
	[research_title] [nvarchar](max) NULL,
	[research_position] [nvarchar](max) NULL,
	[office_id] [nvarchar](450) NULL,
	[address_office] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Scientists] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScientistTopicRoles]    Script Date: 2/3/2025 6:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScientistTopicRoles](
	[id] [nvarchar](450) NOT NULL,
	[scientist_id] [nvarchar](450) NOT NULL,
	[topic_id] [nvarchar](450) NOT NULL,
	[role_id] [nvarchar](450) NOT NULL,
	[status] [bit] NULL,
	[requestStatus] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ScientistTopicRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Seminars]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Suggesttions]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Topics]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[TpCouncils]    Script Date: 2/3/2025 6:14:51 PM ******/
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
/****** Object:  Table [dbo].[Trainings]    Script Date: 2/3/2025 6:14:51 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113101118_addInitialData', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113111309_updateProject', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250114023309_updateJoinMagazine', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250124043156_updateMagazine', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250124050054_updateMagazineScore', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250124074424_updateMagazineScoreKey', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250124074541_updateMagazineScoreFK', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250124075002_updateMagazineScorePK', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250125070049_updatescore', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250125152929_updates', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250203023816_updatecolumn', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'adbc9a97-1e6e-4705-bfa4-69f917cdb354', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'efd97393-4810-470a-bad1-7f9eff4c7543', N'Administrators', N'ADMINISTRATORS', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'109263800306905871301', N'Google', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', N'efd97393-4810-470a-bad1-7f9eff4c7543')
GO
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', NULL, NULL, N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENQWgxsq2ZRQ7+ASow65lRVJwkI7VtSRU1HX8Y6Br4uxKZ6xsYFavHkDt7EcOKlpdA==', N'BUNUM7FKP67WW5XYYZQNCGXQ7STWURY5', N'06f8e074-14fe-4e1d-860f-57127b3e2d52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', NULL, NULL, N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', 1, NULL, N'DDH627STYSXGAY4PQEHI3SJ4TFQTP2DX', N'909af2e8-e7e9-4000-96f1-2ba9c6107eb2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', NULL, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAPNrs6LyOsA7tCplAmusYp4h8vdXb3zmqlH8tUbXFo4I1lXWJpHXK7CaabsGNCMIA==', N'C7KBYJNN22TCFOOSEBOYXCXKP4RHPTEK', N'7ced7bd5-0f90-4283-8695-f9681cea289a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Books] ([id], [book_name], [created_at], [updated_at]) VALUES (N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'Sách tham khảo', CAST(N'2025-01-13T22:06:58.0199366' AS DateTime2), CAST(N'2025-01-13T22:06:58.0200070' AS DateTime2))
GO
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at]) VALUES (N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'ssss', 2025, N'ssseeee', N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-01-13T22:20:40.0358146' AS DateTime2), CAST(N'2025-01-13T22:20:40.0358790' AS DateTime2))
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at]) VALUES (N'c06a4f9f-d2b3-46ea-84e3-35ae849e0e6a', N'Test demo', 2025, N'Test demo', N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-01-15T14:57:48.6148763' AS DateTime2), CAST(N'2025-01-15T14:57:48.6149179' AS DateTime2))
GO
INSERT [dbo].[Degrees] ([id], [degree_name], [created_at], [updated_at]) VALUES (N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'Thạc sĩ', CAST(N'2025-01-13T21:38:41.0935771' AS DateTime2), CAST(N'2025-01-13T21:38:41.0936247' AS DateTime2))
GO
INSERT [dbo].[Files] ([id], [original_name], [file_path], [file_type], [related_id], [related_type], [created_at], [updated_at]) VALUES (N'e28bd1b1-ab8c-4d4b-a02e-dfa9fd16d519', N'1659426153446-2cee1119-f43d-430e-8d8f-86b3646ed3e4.png', N'https://drive.google.com/uc?id=1Z5r2Mx8suZpCG87C3i4--FsI9vUOcsdm', N'image/png', N'11463b4c-798b-4036-a61a-553c66571d0d', N'ExampleType', CAST(N'2025-02-03T07:22:55.2854024' AS DateTime2), CAST(N'2025-02-03T07:22:55.2854893' AS DateTime2))
GO
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'd146f151-a67a-455a-a2fa-6a7417184eac', N'Đề tài cấp cơ sở phân cấp', 0, CAST(N'2025-01-13T22:06:43.1957763' AS DateTime2), CAST(N'2025-01-13T22:06:43.1958213' AS DateTime2))
GO
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id]) VALUES (N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'vvvvv', 2024, N'vvv', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-02-03T14:31:25.0890676' AS DateTime2), CAST(N'2025-02-03T14:31:25.0891100' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id]) VALUES (N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'tét', 2025, N'yyyy', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-13T22:20:25.6517886' AS DateTime2), CAST(N'2025-01-13T22:20:25.6518456' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id]) VALUES (N'c720916d-d43b-494e-96bc-d27ef7eb50df', N'dddd', 2025, N'ddd', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-02-03T14:19:27.2575246' AS DateTime2), CAST(N'2025-02-03T14:19:27.2575483' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id]) VALUES (N'd6288359-9d71-4e21-a134-31b395727eb0', N'demo', 2025, N'new', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-14T09:55:50.4595363' AS DateTime2), CAST(N'2025-01-14T10:01:36.4213188' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id]) VALUES (N'ee8d6abd-2828-4526-a86b-a3e617cea03f', N'Test demo', 2025, N'Tạp chí khoa học', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-15T14:57:28.1242732' AS DateTime2), CAST(N'2025-01-15T14:57:28.1243074' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[MagazineScores] ([id], [magazine_score_name], [created_at], [updated_at], [scope]) VALUES (N'55815c96-bd47-45c8-8648-0954bf00ddca', N'Mẫu chỉ số', CAST(N'2025-02-03T07:18:23.5128316' AS DateTime2), CAST(N'2025-02-03T07:18:23.5128316' AS DateTime2), N'Quốc_tế')
INSERT [dbo].[MagazineScores] ([id], [magazine_score_name], [created_at], [updated_at], [scope]) VALUES (N'96c1592f-57d2-4fbf-8e32-450e7b537f35', N'Test score', CAST(N'2025-02-03T07:18:35.9777471' AS DateTime2), CAST(N'2025-02-03T07:18:35.9777472' AS DateTime2), N'Trong_nước')
GO
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at]) VALUES (N'0a6631a6-e5fd-498b-ba58-cc5475308461', 2022, N'Test demo', N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', N'Test demo', N'Chưa duyệt', CAST(N'2025-01-15T14:56:53.5808339' AS DateTime2), CAST(N'2025-01-15T14:56:53.5808680' AS DateTime2))
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at]) VALUES (N'43325be8-e91a-4a1d-a656-99d58ee5a871', 2024, N'Tesst', N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', NULL, N'Chưa duyệt', CAST(N'2025-01-13T22:18:09.9645187' AS DateTime2), CAST(N'2025-01-13T22:18:09.9645775' AS DateTime2))
GO
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'HAU-001', N'Khoa CNTT', N'Trường Đại học Kiến Trúc Hà Nội', NULL, NULL, N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:39:22.0622975' AS DateTime2), CAST(N'2025-01-13T21:39:22.0623629' AS DateTime2))
GO
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at]) VALUES (N'8c83e982-ea73-4d5f-894c-a70134743856', N'Tạ chí tuổi trẻ', CAST(N'2025-01-13T15:08:00.1728340' AS DateTime2), CAST(N'2025-01-13T15:08:00.1728342' AS DateTime2))
GO
INSERT [dbo].[Proposes] ([id], [propose_name], [created_at], [updated_at]) VALUES (N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', N'Test', CAST(N'2025-01-13T22:07:12.6442462' AS DateTime2), CAST(N'2025-01-13T22:07:12.6443005' AS DateTime2))
GO
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'1dccf515-dd00-4aae-bf07-4d25b29673c2', N'Thư ký', N'topic', CAST(N'2025-01-13T21:38:07.3174165' AS DateTime2), CAST(N'2025-01-13T21:38:07.3174180' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'302d6d62-6ef3-485d-9512-c72284060f88', N'Chủ biên', N'curriculum', CAST(N'2025-01-13T22:04:59.6683243' AS DateTime2), CAST(N'2025-01-13T22:04:59.6686102' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'3527fddd-0cad-436d-832b-e811e3b6398c', N'Đồng tác giả', N'magazine', CAST(N'2025-01-13T22:06:15.2835040' AS DateTime2), CAST(N'2025-01-13T22:06:15.2835051' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', N'Thành viên dự án', N'topic', CAST(N'2025-01-13T21:38:22.3093254' AS DateTime2), CAST(N'2025-01-13T21:38:22.3093273' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'71610553-bba4-40c0-9e9c-f750d4a7e13c', N'Tác giả đứng đầu', N'magazine', CAST(N'2025-01-13T22:05:50.6195937' AS DateTime2), CAST(N'2025-01-13T22:05:50.6195953' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'90f5e838-49b6-44bb-b368-f309a818acfa', N'Đồng tác giả', N'curriculum', CAST(N'2025-01-13T22:05:34.6596201' AS DateTime2), CAST(N'2025-01-13T22:05:34.6596215' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'b380fc1f-7def-4dd4-8360-7c44a52af2ff', N'Tác giả liên hệ', N'magazine', CAST(N'2025-01-13T22:06:04.1956849' AS DateTime2), CAST(N'2025-01-13T22:06:04.1956865' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', N'Tác giả', N'curriculum', CAST(N'2025-01-13T22:05:20.2995242' AS DateTime2), CAST(N'2025-01-13T22:05:20.2995259' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', N'Chủ nhiệm dự án', N'topic', CAST(N'2025-01-13T21:37:55.4228413' AS DateTime2), CAST(N'2025-01-13T21:37:55.4231655' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'd4a2e404-6819-4aeb-bcce-b09ccd1b850c', N'Đồng chủ biên', N'curriculum', CAST(N'2025-01-13T22:05:10.5557995' AS DateTime2), CAST(N'2025-01-13T22:05:10.5558020' AS DateTime2))
GO
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'7a21b797-1c09-46b1-8183-ab6e78e27af8', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'90f5e838-49b6-44bb-b368-f309a818acfa', NULL, N'Chờ duyệt', CAST(N'2025-01-13T15:31:12.0842054' AS DateTime2), CAST(N'2025-01-13T15:31:12.0842494' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'805b8092-524d-4078-a8fd-7d827818be8e', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'c06a4f9f-d2b3-46ea-84e3-35ae849e0e6a', N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', NULL, N'Đã tham gia', CAST(N'2025-01-15T07:57:48.6319102' AS DateTime2), CAST(N'2025-01-15T07:57:48.6319445' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'c4a683d2-9b42-4256-8fd1-a511df175a76', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'c06a4f9f-d2b3-46ea-84e3-35ae849e0e6a', N'90f5e838-49b6-44bb-b368-f309a818acfa', NULL, N'Chờ duyệt', CAST(N'2025-01-15T07:58:42.6205466' AS DateTime2), CAST(N'2025-01-15T07:58:42.6205467' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'e1742873-97bc-4724-8868-5f8ce0effb0d', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', NULL, N'Đã tham gia', CAST(N'2025-01-13T15:20:40.0571897' AS DateTime2), CAST(N'2025-01-13T15:20:40.0572324' AS DateTime2))
GO
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'0a415a0c-36ca-4d56-ac13-0eeae346839a', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-02-03T07:50:28.9692111' AS DateTime2), CAST(N'2025-02-03T07:50:28.9692299' AS DateTime2), N'Chờ duyệt', 1, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'4d9c25f6-a05a-4e4c-a4f3-7dfa8ed17e5d', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'ee8d6abd-2828-4526-a86b-a3e617cea03f', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-15T07:57:28.1364382' AS DateTime2), CAST(N'2025-01-15T07:57:28.1364721' AS DateTime2), N'Đã tham gia', NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'4fe7d470-12fd-428b-9184-69d74c538b84', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'b380fc1f-7def-4dd4-8360-7c44a52af2ff', CAST(N'2025-01-15T07:58:35.6616869' AS DateTime2), CAST(N'2025-01-15T07:58:35.6616870' AS DateTime2), N'Chờ duyệt', NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'5131ea6b-931d-4275-80af-ed201a8daeb1', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-02-03T07:31:25.1163548' AS DateTime2), CAST(N'2025-02-03T07:31:25.1163841' AS DateTime2), N'Đã tham gia', 0, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'6715de41-6e15-40eb-920f-e281fa0e72e3', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-13T15:20:25.6783604' AS DateTime2), CAST(N'2025-01-13T15:20:25.6784001' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'70127e3b-99f7-4579-9af6-c7a50d2a922c', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'd6288359-9d71-4e21-a134-31b395727eb0', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-01-14T03:51:28.0760504' AS DateTime2), CAST(N'2025-01-14T10:01:36.5607787' AS DateTime2), N'Bị từ chối', NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'df3c8457-989d-4a3f-9fc4-e8d8e4a83622', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'c720916d-d43b-494e-96bc-d27ef7eb50df', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-02-03T07:19:27.3115906' AS DateTime2), CAST(N'2025-02-03T07:19:27.3116274' AS DateTime2), N'Đã tham gia', 1, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'e66268b2-1039-4d53-85c7-7ab1878588ef', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'd6288359-9d71-4e21-a134-31b395727eb0', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-14T02:55:50.5665146' AS DateTime2), CAST(N'2025-01-14T02:55:50.5665466' AS DateTime2), N'Đã tham gia', NULL, NULL)
GO
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'2f1e91d5-4101-4b08-911f-92c214293416', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', NULL, N'Chờ duyệt', CAST(N'2025-01-13T15:31:00.7737598' AS DateTime2), CAST(N'2025-01-13T15:31:00.7737979' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'57ff1245-582d-4970-b209-94aecf7b00e6', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'0a6631a6-e5fd-498b-ba58-cc5475308461', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', NULL, N'Đã tham gia', CAST(N'2025-01-15T07:56:53.6244627' AS DateTime2), CAST(N'2025-01-15T07:56:53.6244957' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'c90894ca-5f2b-40e3-885d-d4e7ec3d4198', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'0a6631a6-e5fd-498b-ba58-cc5475308461', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', NULL, N'Chờ duyệt', CAST(N'2025-01-15T07:58:17.6635555' AS DateTime2), CAST(N'2025-01-15T07:58:17.6635557' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'fd5fd77a-98a5-448e-a6fa-78a8cd9fff9a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', NULL, N'Đã tham gia', CAST(N'2025-01-13T15:18:10.1041265' AS DateTime2), CAST(N'2025-01-13T15:18:10.1041653' AS DateTime2))
GO
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'754566a3-0024-485a-8fb4-3d976132e12a', N'TÉt ddfđ', CAST(N'2025-01-06T00:00:00.0000000' AS DateTime2), N'Nam', N'HM', NULL, NULL, NULL, N'0123456789', N'ducthang191102@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2025', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T22:28:25.5712698' AS DateTime2), CAST(N'2025-01-13T22:28:25.5713234' AS DateTime2))
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'771aa184-a15e-4f80-826d-eae63bf70379', N'44ae3ec6-e278-4213-af7a-e5218b83492d', N'Thang', CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), N'Nam', N'HA NOI', NULL, NULL, NULL, N'0123456789', N'user@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2022', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:51:57.1739272' AS DateTime2), CAST(N'2025-01-15T14:56:29.3722454' AS DateTime2))
GO
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'21d8bb98-7e4d-4697-ae91-d1cc88f38b0c', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'0029d457-0e44-4606-a8a4-755b459416de', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:28:15.5074865' AS DateTime2), CAST(N'2025-02-03T11:11:39.8625340' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'48cce338-6f0e-41ba-9394-3cca8bbc7083', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'8f628a2b-7195-49b3-9876-b1304ca6bd04', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:28:38.7451910' AS DateTime2), CAST(N'2025-01-15T04:28:38.7451911' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'6377450f-ad9e-408c-a7bb-52c816f8d4f8', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'41e72f88-2b8c-4fdf-b9be-ecbc96599694', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:26:32.6433230' AS DateTime2), CAST(N'2025-01-15T04:26:32.6433449' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'9fa1971b-746d-4f37-80e2-8a12d830195a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-13T15:20:02.4670891' AS DateTime2), CAST(N'2025-01-13T15:20:02.4671270' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'bfd881dd-a702-434f-89df-d25dbd210337', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'0029d457-0e44-4606-a8a4-755b459416de', N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', 0, N'Chờ duyệt', CAST(N'2025-01-15T07:58:26.8055902' AS DateTime2), CAST(N'2025-01-15T07:58:26.8056190' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'd46d6abf-6a6b-4b1d-a2a6-2ff03298d150', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', 0, N'Chờ duyệt', CAST(N'2025-01-13T15:28:42.0446437' AS DateTime2), CAST(N'2025-01-13T15:28:42.0446438' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'e3116dff-fd0b-4282-a06a-33a1ff3722b1', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'd1ae05ff-5566-40a3-bdf9-ed95660552cc', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:11:46.0406067' AS DateTime2), CAST(N'2025-01-15T04:11:46.0406290' AS DateTime2))
GO
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'0029d457-0e44-4606-a8a4-755b459416de', N'gfsdgfsd', N'Giỏi', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-16T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-16T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:28:09.8507595' AS DateTime2), CAST(N'2025-02-03T11:11:39.7673882' AS DateTime2))
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'41e72f88-2b8c-4fdf-b9be-ecbc96599694', N'gggg', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:26:31.9973556' AS DateTime2), CAST(N'2025-01-15T11:26:31.9976702' AS DateTime2))
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'tét', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-13T22:20:02.3330141' AS DateTime2), CAST(N'2025-01-13T22:20:02.3333869' AS DateTime2))
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'8f628a2b-7195-49b3-9876-b1304ca6bd04', N'fdsfds', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-17T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:28:38.1684544' AS DateTime2), CAST(N'2025-01-15T11:28:38.1684565' AS DateTime2))
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'd1ae05ff-5566-40a3-bdf9-ed95660552cc', N'testtsse', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:11:45.9211294' AS DateTime2), CAST(N'2025-01-15T11:11:45.9213717' AS DateTime2))
GO
INSERT [dbo].[Trainings] ([id], [training_name], [created_at], [updated_at]) VALUES (N'860005c8-d072-4564-83c9-7bdf68b47689', N'Test', CAST(N'2025-01-13T22:07:37.4437086' AS DateTime2), CAST(N'2025-01-13T22:07:37.4437596' AS DateTime2))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_role_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_role_id] ON [dbo].[Categories]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_training_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_training_id] ON [dbo].[Categories]
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Conferences_seminar_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Conferences_seminar_id] ON [dbo].[Conferences]
(
	[seminar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Council_lvCouncilid]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Council_lvCouncilid] ON [dbo].[Council]
(
	[lvCouncilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Council_tpcouncilid]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Council_tpcouncilid] ON [dbo].[Council]
(
	[tpcouncilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_book_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_book_id] ON [dbo].[Curriculums]
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_training_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_training_id] ON [dbo].[Curriculums]
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Magazines_magazine_score_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Magazines_magazine_score_id] ON [dbo].[Magazines]
(
	[magazine_score_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Magazines_paper_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Magazines_paper_id] ON [dbo].[Magazines]
(
	[paper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Offers_propose_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_propose_id] ON [dbo].[Offers]
(
	[propose_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Projects_researcherid]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_researcherid] ON [dbo].[Projects]
(
	[researcherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_curriculum_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_curriculum_id] ON [dbo].[ScientistCurriculumRoles]
(
	[curriculum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_role_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_role_id] ON [dbo].[ScientistCurriculumRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_scientist_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_scientist_id] ON [dbo].[ScientistCurriculumRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_magazine_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_magazine_id] ON [dbo].[ScientistMagazineRoles]
(
	[magazine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_role_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_role_id] ON [dbo].[ScientistMagazineRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_scientist_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_scientist_id] ON [dbo].[ScientistMagazineRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_ScientistRequestid]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_ScientistRequestid] ON [dbo].[ScientistMagazineRoles]
(
	[ScientistRequestid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_offer_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_offer_id] ON [dbo].[ScientistOfferRoles]
(
	[offer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_role_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_role_id] ON [dbo].[ScientistOfferRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_scientist_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_scientist_id] ON [dbo].[ScientistOfferRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Scientists_degree_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Scientists_degree_id] ON [dbo].[Scientists]
(
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Scientists_office_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Scientists_office_id] ON [dbo].[Scientists]
(
	[office_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_role_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_role_id] ON [dbo].[ScientistTopicRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_scientist_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_scientist_id] ON [dbo].[ScientistTopicRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_topic_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_topic_id] ON [dbo].[ScientistTopicRoles]
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Topics_lvtopic_id]    Script Date: 2/3/2025 6:14:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topics_lvtopic_id] ON [dbo].[Topics]
(
	[lvtopic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MagazineScores] ADD  DEFAULT (N'') FOR [scope]
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
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Roles_role_id]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Trainings_training_id] FOREIGN KEY([training_id])
REFERENCES [dbo].[Trainings] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Trainings_training_id]
GO
ALTER TABLE [dbo].[Conferences]  WITH CHECK ADD  CONSTRAINT [FK_Conferences_Seminars_seminar_id] FOREIGN KEY([seminar_id])
REFERENCES [dbo].[Seminars] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Conferences] CHECK CONSTRAINT [FK_Conferences_Seminars_seminar_id]
GO
ALTER TABLE [dbo].[Council]  WITH CHECK ADD  CONSTRAINT [FK_Council_LvCouncils_lvCouncilid] FOREIGN KEY([lvCouncilid])
REFERENCES [dbo].[LvCouncils] ([id])
GO
ALTER TABLE [dbo].[Council] CHECK CONSTRAINT [FK_Council_LvCouncils_lvCouncilid]
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
ALTER TABLE [dbo].[Magazines]  WITH CHECK ADD  CONSTRAINT [FK_Magazines_MagazineScores_magazine_score_id] FOREIGN KEY([magazine_score_id])
REFERENCES [dbo].[MagazineScores] ([id])
GO
ALTER TABLE [dbo].[Magazines] CHECK CONSTRAINT [FK_Magazines_MagazineScores_magazine_score_id]
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
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Researchers_researcherid] FOREIGN KEY([researcherid])
REFERENCES [dbo].[Researchers] ([id])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Researchers_researcherid]
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
ALTER TABLE [dbo].[ScientistMagazineRoles]  WITH CHECK ADD  CONSTRAINT [FK_ScientistMagazineRoles_Scientists_ScientistRequestid] FOREIGN KEY([ScientistRequestid])
REFERENCES [dbo].[Scientists] ([id])
GO
ALTER TABLE [dbo].[ScientistMagazineRoles] CHECK CONSTRAINT [FK_ScientistMagazineRoles_Scientists_ScientistRequestid]
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
ALTER TABLE [dbo].[Scientists]  WITH CHECK ADD  CONSTRAINT [FK_Scientists_Degrees_degree_id] FOREIGN KEY([degree_id])
REFERENCES [dbo].[Degrees] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Scientists] CHECK CONSTRAINT [FK_Scientists_Degrees_degree_id]
GO
ALTER TABLE [dbo].[Scientists]  WITH CHECK ADD  CONSTRAINT [FK_Scientists_Offices_office_id] FOREIGN KEY([office_id])
REFERENCES [dbo].[Offices] ([id])
GO
ALTER TABLE [dbo].[Scientists] CHECK CONSTRAINT [FK_Scientists_Offices_office_id]
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
ALTER DATABASE [Final_Database] SET  READ_WRITE 
GO
