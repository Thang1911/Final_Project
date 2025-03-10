USE [master]
GO
/****** Object:  Database [Final_Database]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Arseachs]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ArTopics]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Books]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ConferenceCouncils]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConferenceCouncils](
	[id] [nvarchar](450) NOT NULL,
	[conference_id] [nvarchar](450) NOT NULL,
	[council_id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ConferenceCouncils] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conferences]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ConferenceTopics]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConferenceTopics](
	[id] [nvarchar](450) NOT NULL,
	[conference_id] [nvarchar](450) NOT NULL,
	[topic_id] [nvarchar](max) NOT NULL,
	[Topicid] [nvarchar](450) NULL,
	[presentation_date] [datetime2](7) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ConferenceTopics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Council]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Council](
	[id] [nvarchar](450) NOT NULL,
	[decision_number] [int] NOT NULL,
	[date] [datetime2](7) NOT NULL,
	[lvCouncilId] [nvarchar](450) NOT NULL,
	[tpCouncilId] [nvarchar](450) NOT NULL,
	[council_name] [nvarchar](max) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Council] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Councils]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[CouncilTopics]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouncilTopics](
	[id] [nvarchar](450) NOT NULL,
	[council_id] [nvarchar](450) NOT NULL,
	[topic_id] [nvarchar](max) NOT NULL,
	[Topicid] [nvarchar](450) NULL,
	[decision] [nvarchar](max) NOT NULL,
	[reviewed_at] [datetime2](7) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CouncilTopics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculums]    Script Date: 2/20/2025 5:54:06 PM ******/
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
	[month] [int] NULL,
	[day] [int] NULL,
 CONSTRAINT [PK_Curriculums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degrees]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Files]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[id] [nvarchar](450) NOT NULL,
	[original_name] [nvarchar](max) NOT NULL,
	[file_type] [nvarchar](max) NOT NULL,
	[related_id] [nvarchar](max) NOT NULL,
	[related_type] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[file_content] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LvCouncils]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[LvTopics]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Magazines]    Script Date: 2/20/2025 5:54:06 PM ******/
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
	[citation_count] [int] NULL,
	[page_count] [int] NULL,
	[volume] [nvarchar](max) NULL,
	[month] [int] NULL,
 CONSTRAINT [PK_Magazines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MagazineScores]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Moneys]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Offers]    Script Date: 2/20/2025 5:54:06 PM ******/
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
	[month] [int] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Papers]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Papers](
	[id] [nvarchar](450) NOT NULL,
	[paper_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
	[paper_type] [nvarchar](max) NULL,
	[scope] [nvarchar](max) NULL,
 CONSTRAINT [PK_Papers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Projects]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Proposes]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Researchers]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ScientistCurriculumRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ScientistMagazineRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ScientistOfferRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Scientists]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[ScientistTopicRoles]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Scores]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Seminars]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Suggesttions]    Script Date: 2/20/2025 5:54:06 PM ******/
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
/****** Object:  Table [dbo].[Topics]    Script Date: 2/20/2025 5:54:06 PM ******/
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
	[topicId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TpCouncils]    Script Date: 2/20/2025 5:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TpCouncils](
	[id] [nvarchar](450) NOT NULL,
	[tpCouncilId] [nvarchar](max) NOT NULL,
	[tpcouncil_name] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TpCouncils] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainings]    Script Date: 2/20/2025 5:54:06 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204032645_addTopicCouncil', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204070151_addRelation', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204105413_updateFK', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204105948_updateFK1', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204110640_updateFK2', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250204151121_updateFK3', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250205041724_updateFK5', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250205101105_updateUploadFile', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250208162158_update', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250211143612_updateGG', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250220043043_UpdateMagazinePaper', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250220064236_UpdateMonth', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250220075546_UpdateDay', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250220082238_UpdateTopicId', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'adbc9a97-1e6e-4705-bfa4-69f917cdb354', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'efd97393-4810-470a-bad1-7f9eff4c7543', N'Administrators', N'ADMINISTRATORS', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'109263800306905871301', N'Google', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07221fc1-fdf8-4bf6-aacd-8609691dab0c', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', N'efd97393-4810-470a-bad1-7f9eff4c7543')
GO
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'07221fc1-fdf8-4bf6-aacd-8609691dab0c', NULL, NULL, N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPZri1twA+wepaRPR8ydpeuEDGzqQWGmPD8VqYRwQk1kCsmk8RmI8YSncaceAY/8WA==', N'DQKC2TMKON5BKV6PZK3NOLN7BQXZGLTF', N'13098c50-1857-42d3-8fd0-9d1a33209226', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', NULL, NULL, N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENQWgxsq2ZRQ7+ASow65lRVJwkI7VtSRU1HX8Y6Br4uxKZ6xsYFavHkDt7EcOKlpdA==', N'BUNUM7FKP67WW5XYYZQNCGXQ7STWURY5', N'06f8e074-14fe-4e1d-860f-57127b3e2d52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', NULL, NULL, N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', 1, NULL, N'DDH627STYSXGAY4PQEHI3SJ4TFQTP2DX', N'909af2e8-e7e9-4000-96f1-2ba9c6107eb2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', NULL, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAPNrs6LyOsA7tCplAmusYp4h8vdXb3zmqlH8tUbXFo4I1lXWJpHXK7CaabsGNCMIA==', N'C7KBYJNN22TCFOOSEBOYXCXKP4RHPTEK', N'7ced7bd5-0f90-4283-8695-f9681cea289a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Books] ([id], [book_name], [created_at], [updated_at]) VALUES (N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'Sách tham khảo', CAST(N'2025-01-13T22:06:58.0199366' AS DateTime2), CAST(N'2025-01-13T22:06:58.0200070' AS DateTime2))
INSERT [dbo].[Books] ([id], [book_name], [created_at], [updated_at]) VALUES (N'f36cdd90-52b1-4e65-a71b-b2048bb1b741', N'xxxxxxxx', CAST(N'2025-02-04T15:52:47.8338581' AS DateTime2), CAST(N'2025-02-04T15:52:47.8339119' AS DateTime2))
GO
INSERT [dbo].[Council] ([id], [decision_number], [date], [lvCouncilId], [tpCouncilId], [council_name], [year]) VALUES (N'4594d313-e9da-4363-a68b-155852994979', 12, CAST(N'2025-02-05T13:52:59.9554060' AS DateTime2), N'0c83f7d9-07da-42d8-b3b1-f0ac3b646af3', N'93124703-e228-4028-8c60-78b071d854a3', N'sdd', 2024)
INSERT [dbo].[Council] ([id], [decision_number], [date], [lvCouncilId], [tpCouncilId], [council_name], [year]) VALUES (N'4d490b43-bbdf-4909-a768-e28e3f6e58c7', 1, CAST(N'2025-02-05T13:45:19.2108378' AS DateTime2), N'0c83f7d9-07da-42d8-b3b1-f0ac3b646af3', N'e9dea220-8c4c-4cce-9370-a07d2cf8960a', N's', 2025)
GO
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at], [month], [day]) VALUES (N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'ssss', 2025, N'ssseeee', N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-01-13T22:20:40.0358146' AS DateTime2), CAST(N'2025-01-13T22:20:40.0358790' AS DateTime2), 12, 21)
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at], [month], [day]) VALUES (N'9f5ab428-54cb-4ecd-b300-906994d70d99', N'lklklk', 2025, N'nkbh', N'f36cdd90-52b1-4e65-a71b-b2048bb1b741', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-02-12T18:02:20.5370363' AS DateTime2), CAST(N'2025-02-13T17:50:45.3972161' AS DateTime2), 12, 23)
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at], [month], [day]) VALUES (N'c06a4f9f-d2b3-46ea-84e3-35ae849e0e6a', N'Test demo', 2025, N'Test demo', N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-01-15T14:57:48.6148763' AS DateTime2), CAST(N'2025-01-15T14:57:48.6149179' AS DateTime2), 12, 12)
GO
INSERT [dbo].[Degrees] ([id], [degree_name], [created_at], [updated_at]) VALUES (N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'Thạc sĩ', CAST(N'2025-01-13T21:38:41.0935771' AS DateTime2), CAST(N'2025-01-13T21:38:41.0936247' AS DateTime2))
GO
INSERT [dbo].[Files] ([id], [original_name], [file_type], [related_id], [related_type], [created_at], [updated_at], [file_content]) VALUES (N'36d28c50-c4f9-4c76-9e2e-1243a230c3f0', N'1658569630156-1389403d-e97a-4961-b80d-bb6711ed312d.png', N'image/png', N'9f5ab428-54cb-4ecd-b300-906994d70d99', N'ExampleType', CAST(N'2025-02-14T09:15:23.1047901' AS DateTime2), CAST(N'2025-02-14T09:15:23.1048116' AS DateTime2), 0x89504E470D0A1A0A0000000D49484452000000FF000001450806000000232E3B6D00000006624B474400FF00FF00FFA0BDA793000025004944415478DAED9D7BB464557DE7BFBFBDEBDE7EF0E80E3898411227134D428201BB515CE398A00DAD4D820B842698C42CD4AC64CD32465D89639608731DA2681E93999821CA3C4C3409493F8D2C40083E98C832464540186378240650196DC0169AE6569DFD9B3FCEFB9C7DCED9A7AA6EDDEABEDFCF5AB5FAF6A97D4E9DDAB57FE7F7D8BFFDDB0021841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082921EC82A3939D3B772D1E3860FFB5B5A353109993217AB24036AA609300D6A91E9F0D0291C70100CE3DAEC61C32EA1E82B3DFD4C1F0A1CD9BEDA3BB775F12B14729FC64FE84DC3EF698F90911779A407E12AAA701380DC073A7F41111800701DCA52AF7C0E02BCE45777DEA53973EC0DEA7F09319B2B4B4643E77DB69A7AA752F55E01C00E740F17DAB702B8F42F07F04B8552273FBCD9FBEF85EFE3A147EB20226FC13DFD17360642780570338610E6FF39F14D823C6ECFA9BBFB9F88BFCD528FC64020DFFD9CF9E7AAEA8792D445FBD4ADA7D5C1E84C86EA7FA914F7EF292FFCB5F93C24F02D8B1E3CF8E8F868B972AF016003F7E147CA5DB21F2DF86C367EDFFCC675E3EE22F4CE127155EF18ABFFCE18119FC86425F07E0D8A3F02BFE1354FF68FDC60D1FBCFEFAF30FF117A7F053E85FB1EB39D6CA7F84E25701AC5B035FF9DB10FCFE6070CC7FBDE9A6F39EE108A0F0AF39B66DDB77A231D1DB01FC3A800D6BB00BBE2EA2EFDDB409FF8B790414FE35C3B9E7EEDE09E08F019CB8E607A0E073CE456FBCF5D64BBFCA9141E13F6AD9BE7DD70F01F22100E7B2374A0C55F15F366FD62B77EFBE6499DD41E13F6A585A5A32B7DF7EDA5B457015808DEC91462BE0CB8079FDCD37BFE62EF60685FF8867C78E3F3B3E8AD6FD092017B23782380CE04DB7DC72F1FF665750F88F60DF7ED71962CC1E003FCCDEE83D32AFDD749C7B33DD000AFF9127F8AFDA7B9938BD06B22623F9531A9CF2596BA39D37DE78C9B7D81B14FE238257EED8F70E557D1F7B627214F8FA40CCB69B6EBA90AB08A78C61174C59E3BF72DFBB29F853D54ECF8DD47DFADC73F73C9FBD41CD3FAF3A4A5EB963FF1FA8EA5BD8172B32521F7562CFBDF5C60BBEC2CEA0F0CF95E06F3F6FDFFF80E28DEC8B15E5DBCEC84FDF7AC36B981044B37F3ED8FEAA7D5752F067C2BF32AA376CDFBEEF24760535FFEA0BFE8EBD3F0791EBD89733E576ABEBB77161D0640CD805E3F3AA57EDFBF72AF8530AFECC79A99367FE14D0D702A2EC8EF1B0EC8271057FFFBF51C1A720388EBDB12A9CF6BCE77DEDD003F7FFD5EDEC0AFAFC33636969C9A8D50FC3E04448A2F7F99AFDCBE87BB6FFCCFEAD1C9114FE99F1B92FBCE06D00CE664FACBEDB2AD08F9C7DF687D7B32BE8F3AF38E7FCCCBE5355E42A3AF973C38FAF3B6ED315002E675750F3AF185BB77E68C18A7C54C07CFDB942E51D3BCEDFFB127604857FC538F1E467BF05007DCCF9C33A351FDCB9731703D814FEE9B3FDC27D2709F45D0CB4CDEDEBF4834F0FDEC0914AE19F3E23F39F01D944299BE39798ABB66FBFF9180E560AFFD438EFBCBDCF15E0F5EC89B9E7D958F7F47F603750F8A7A7F407832B2058A4723D0294BFE0EDE79F7F3DEB2452F827E7DC57FFF5C906FABA747C411D656CBE5F270D115DC6914BE19F186BDCAF51EB1F092FCDB5BFD5B72E2D2D716C77C0249F16CE3EFBD3EBA1077F25FDBFAA83086793E61155404492BFE5F99FBBE385DB017C823D43CD3F16EB8F3F78014ABBEA7001D9BC2202A8E6BF0F03B414FE097B475F9F9A920A8D47184DEC397D49C9F487C105DB2EDC7722073185BF37E7EDBCE1FB01D9962B7D071176D79C1BFFC5FF2C2EEAE022F6097DFEFEC36838BAB0E4E04B3C8F44E6D9F4B750D5EC21ADC08500AE65CF50F3F71D49D9F65AAA4AC13F327EB438F297FF7FDB0517ECDFCC7EA1F00773F6CE5DC72AF0D3B9F04734F98F4CFB6DE119333887FD40B33F98F56EC34F4174B1A8507C55FA62139316C1AA887553DF1B81228FCF38E01500F6B0C7A8F9C3706E5B6198411AEB7372EA6F951F011E6FCD40D51506B852F353F8FBF48A79591AE0537580B179C08FAFB9788931B1E87BDFCF8FABC8F3E3991B42B3BF831D3B6E5C07443F99EB1685F19897AAB14540A37F7535BFAFFFE3DF45335F4D9D7B1180EBD95FD4FCED16FFB1D1E900D615A4BCA925FDFD3945528B2D7F46BC88BD42CD1FF0349433D27D20541530C6BF25872AB7EA980B4987D7EF776E94A769085EC88EA2E60FB024DDA9F9DF9CE29B77C957AF65563BFE63EC2B0A7F88CDF8A359B0080A318601B6390EFA01AEA50DD2BF7FE8ECCB3ECDDAFE14FE4EE9FF91DC55F4DB95CCF89B23CDDFF80C3745ED6F8F79FAA9E7B1BF28FC6D36BF0038A528FA7E1CBBEE08080514837E2E323FC05E29C3805F8157BFF6E3270D23BB2ED5EE62A431B3CF50F667FF68564D0CAEC28F220D8157630037CADE13A3CF610F52F81B8946F694CC9C5785C0A039A45F957E05C3FF2B1D8E2957EC29FF0E5233FB5DF1B8A6161DA1F0FB348B9153720740E3A92269B029A5AA951806988D311F019595D60A5FDF4BFC4096CC51A3E6A7CFDF3AB64E299A988D9ADC3BBDC43CFF553307E01ADFCB827ED4FCD4FC1D3C473257D279D37A8178359978049F8A7F268E7F45CB9B64C9B54FB309040E020B116A7E0A7FBBE67F4E26CC2DCB78B339E4966364052D7FA9C40122D710F44B7235E2F728FC34FB5BC6959367C5D961028881BF522492ACBFEA3156D19CC54B6BC78CE758FE5EE189B199BBF852F89B2D4AC1095978A8418DFB6201ADF101B2AA464221D1C78C369CC0925E34FB1B47CB0925BFD21BE9F7B80442D95F2DB3BFF49B78CC7EB8FCBDE1E8E913001C602752F3FB3821F1F89BE7EDBC5A9E91FE19DB683E1DEF7F521466669C3327B0EFA8F9FD46BF7C627336B8C4781F002A02633CEA8793FC33D2FCB1DF5F4AF4F11D4B755BF65309D480C24FCD5FE782CB3EB6297D18B67AF0EAD859AB6CF557B5BC74585F99F2570A3F85DFC37079E184D26891B6A29D42A37F9ECC7EF19BFDF94F18BF6728FC34FB7D3867366559A3D234CFDF309FCF80DF0CD595D4AB2849FADB78EC84C2CC9F3386D17E6A7E4F470CCCB13E03B3C9F0A4DE9F1BBD8FB675FDC560A0A86E64EF51F37BC6886ECC9276254EDAA90690D21565C5E3BE63630DE835B201C8E4DFB39854951A03D278DD34155B44202A147E6A7E4F47A8D9D0ADC95752CBAF150B42A7F104E9F5B0C8E27D463770A453F86B448949A8BA1A42BB965C075DBDEBD2ECA7D9DFA0203666EE7C396DBF3CC0BC19669842C06F8D94029F46C9735F8625D05E7B4100A8A1F053F3FB7D7E9F6FE971FAD7B0D69E17BDAFFDAE9B9A7342B39F9ADF2BFCA956D072F9E7521B29FF9B3E2404AD197EAAAEB5FEBFA6A568D6429660E7F7544FA9AECA43B97A0D6300E7FCD72DFF96D4FCD4FCBE31222BA81582FCD135A2FA750ABDA9E39A14147E0ABF7744AD1B4B84751A82CD805FB9AB74A53E931B77D0ECF719936AB42BE0E70B2CB5059B50B95EF74DAC858E0EF89EDABF3F9B96F5967E4BEEBD46E1F7E08C58510448BF27D4ACED233A6433EFB5B1E1B7064A7F5B9B86DFA0F19CFC3D5161251F0ABF5FF36775A0334D22F571A43DC65DA8260B9589DA09F324D081AD2560AAAF6D3A503DD3AD1A24FB50516A7EFAFC5E62AD3056C45D57F8FD59F8C5638ABEAE987FBE12E750F353F3FB1444EE0F0A00A995886E76EFBB8DFE1037577BE97299ABBE0B7F680529FE966B2AFAE55949C1A1522A3B0A7FA3560809F8F57137434D5DE92FD18A394A0BE8FBD49A24F8D914740D30FB859A9FC2EF1D5322466B23292CDC1F5BBED262A287D806E3E8F33990FEB19E42D27E3DED92FE727F6AA8F453F829FC3E9CA82D2EE9F5DAA7636AFEA0F77BE7F6CFC9E6807D0395417DD1D6467BFD069AECB094BC47B3BF003B636A36AFB6A8B2A3193D42AEC9F1CECE681E6FA3A230378A7243745B9B4F08CBEE5D0B597E413303DAD117DAA7F3AB07461CE834FB3D3EBF19E52667CBC21EEFA212695EB022D2BD9825DD21A48F193F2F7B82F759903485BE50010495B2EA926CCDD5DDFF147E6A7ECF18313AECD226D26A964E5001E8085ED433F3597E0D3F2BEBD6E4A120C090239D9ABF86138CA4A078DA027EB500775BC02E3420384ED2DE3C4CF5F509F84962D24FD217E98F2415972924C38F9A9F9ADF3F2ECDA8DBB79731247015CB561DA5C199F1DB0A353F85DF27C2A9D92F630EC0B61D6394C21CFA0DB56BC96F8F7E52ADBA6BD4FC34FB7D0353A2BC508FF8CB71178EA7EF89002E092849C3DE7E5DA5BD25F135FA94B4564CA35C787B85A1A0BBE851B65C26EE8BE4F38C29BD9FFF169552EB4909F6C26F43CD4FCDEF197426F707A561FBA7CCD1D73ED34D217A4F7B69B4F8F656DF5258995B98FEC29E2C794BE9F353F87DC3C7C972A879A92CDA39E1D342273BDDE30A84581F22147E9AFDDEC7A03B947987A9E60F8ADE4BF3EC80B7FD986DAA27C8944A7D4F740DED778DD0BE68BCA67AAEA1DDA5D64DFC1BA9E230073A35BF4F2D1CEA3627DB2AF486D4A69B9EC93BF93A7A9DDC6EEF7DBE067E2F1DE3F3029E4082A738D0A9F9EB4F41C5935A2ACD2DFEA09AA77CB71883C6ACB462865993692A06105748320874FC27CDF09BF01ADE6CBB90CF6BFB9EDEF2E8E5F345F2CF2C953DF715601049FA5700E8931CE9D4FC359CC853F918F32FD6A9EEF73E7DAD77B4BBFC937D416D9B62F5CDB4A4537DD9CF29D4FC147E5F47846B85FA2016ACD9A49BD55E5FD06F9684C24FB3BF4E64E42953CC05F7A6EC4AF39AFE26B7336BAB61F529FA06CF26919989F718D4FEF7DCE59E8704FC4C9EDE9B55496A2AE75D78402928FC147E0F167832ABA82306E9D6CE1258D14355D11DEE9700499EA624ADF013A4F735429F72D2A32F93A42098DA39F1C2C7C2716A7E0ABF8FE1409E1A8CBAC7A8F8A601A5A869647CD9EF294793D6F18BABDC4C7ABE8CF1BC92F0B6554D5E5DD8D3D8775A7B3E2AC0801F85BFCE3A8B27DDA85B16251DF47DAD7E68B7EC6BB830F64E0DE821637D757EF8A23E0DF8CCE6ED4BBC7A3FA97A2CD260A3158F53F39760C02FE189CD7812D5A89DB6A4F8169A4A71DA694634A620CF9859C6FBFCB305E1959584D17E0ABF8FCF2CBD7C04C141648B418A6666E8AB6FFB095F98E4F3744A9F2FD3FF5EA6FD9A991B5F7A49E7F713E8E31CE934FB9BF4D801009BB2809FB784B464EFE5F9000680EB0854B518BC5952117AECD76712F7635CD53BA9E390CEBAF75989086F60AEDAA2DD2129DF77F937928A4120A5809FAA1CE018A7F0378DAB0300FE6D3EC6EAD37362045A95F3B6E9BC6A70AAD5F9D6D906FB75FCF501D9629A71B6199A649D83547C8D643A4F4C75396F3D3838B2A3C738C869F63771A097E034E8C29938CEF3E0F3F7DD6760D28715825D7EEFEF738C1A6A7E0A7FE3483A10CB95B40C2C994CD0A72677B2029B64F6B41AFA98FCAA13B7F1B939F9EFD0792FCBBBAF7939A7FA68F6370D2E732096FB789188FAB4B26FA14EF5EF5273D3B9B0276FD3C30A3066B2897EC5440B7B5492054DD2C34FE92CDD2D958538951BF695F56E5A08947E4E7E8FD4FAD4FCAD96F46345CDDA6A5716B5948C5BF76F52E5BBDA9A7FC57D858ED3B5F25BB5BDA7F4F7A9F95BA5FF40D537CDB2D8B2C7A5D4F7896ECB0A320238B497AC0E69D32408A2E309D4A401C3F4737BEDCF9D04E6A47F1BD57A0EBFEF58C91D284E1B32D24FCDDFAE9BDD817005A508B61256E43925ABAAFD75B5347FF8D3A67A80C24FE16F75641FED1A6432C1BCF8745D83092BF7620A95807A551BD61E6DA6B07B89D6463ACD7E9AFD2D43C8DA47445D3C568C817379DE783E880CC4554A45FB8E151F171267AB4B4BA0ABBB8DCF5B30F5FBEB69398C5BFE5B20F1E78796ED4677E9EED636EA792F39668CE73E24B94793ADD0FC064738357F2387179E7AB8AA4DB4D7D6DBE369D3CC84EF7BBEC4B5F757C745D209F213267777C22D85E421A7FA08473885BF915B7EEF954F41F0DDA0FC7920284F3D0D5E696B2EBD8C99732FB35D4B90ED79E7C65E4B2063DEB3B7FF1AD736D48F1B6328FC14FE4E1E09D53C618A5F822C0341FF009E884CA8F9C7F4FBB3DA786324F9B49ED3D246C3E30159EDBE42DB9128CD7E0A7FA72FFB487900FACB77AB67496F976007C5ACB46FD06F32011EDBE40F14C4711E34BD83AA8D55910B7FEA32357F0506FCEA43F4E16279E8C62CBF6C70E55967DA341093DC006D7B5048BC3230DB5F2EE8D16DA05134BEEF3D418660BFEC3E647D9395396F69E32FC3DD9021E83B96652F66F738DCB279DBB73FCEE14DCDDF3EA8D1A1F9C731D143B69232BD35727E1FB30DFA69B6AC711CAD3FA6D9EFD1F2DA90E1E739FECDA525711CDDD4FCAD38C82322951568E2796456B2FC44248980D733EE24B50AA65DC137C90C1C6B59FE24197EA2C9661D3DFCFD62B0AFEBBE5AB6DE12DF12E95A4660B5CA2F23FDD4FC0158D1878B7EFC5456EF055C6B2CCD2FABA5F97B4EF30506EB328D2D6367F1350D7306FBA8F94354FFE0014884E6E2FCE933D3957DE6C4872E57F8A9A8336D1180AC5C789F5CFD80EBB69CDBEFB34A0E75A19656A8884A50159FD854378DD7287DAE4AE1C1E9ABE26391545D7A88039BC2DFC9E1E8F10717178E8F00D8D494AF2EEE49CD789542B5DD62496FDFE29E8E4D325273B6EFE29EB8828DCECCECEF65C2379AE1CDD76DAE84A665B720E97F5F8C203B9E7C9E40EFE3C8A6D9DFC94D1F38EF19011E2E967DAEE7D6485E6A1B01F528D3D093BA967652C85D713DF25F248E54605635431D5AFBC67B8E769F93F565E875B5D4B7BEF7F297B99F239BC21FAA15EF2BA9C5203FBCA5AD84ADFA1B2FCF5E665BCD6B8C049F382A59886B782FDBD146AB718E96B26095B6911D51F353F87B087F5B6AAEA998E81D69BCE269EF7F99DEE9B36224F94C9D516AAFF64E2D4ECF11337E3A72AD20674BC9EED81D4BE7FFB1BCFEEB8FFE0B07357DFE30D97772BF4A1E84AB06D4E240D2C8E33C3705DFE2605757669C888935609F005EA1CC78BF745B8C172854ED08DCF9347A7320AF6C50E441BAE660A094827AA8DC8B9676201528F0E0EEDD97441CD514FE3023D5B8FB0426CE466BAAB0532DB5DD15D43302683D78589663936402BA1EB29FDEA36B35ABA716F0134DB21F7B06173B0384AE3D2858DD774F5A2A0315AC2851D0DFA7D9DFA353CCE07EAF13D9E29B7767FD05CCC94B9F1883DF175F5977BFDB771FF79CB6397EEFA220D5A0988418A1BF4FE10FE7F0D38F3F08209246618C4DD078C05607A6B607F3B43BD1A774DD2EA59A9E338B449FA0957995539CEB3C277B4034994D9E24A16CE55EE5A192F543FE790F704453F883B9E903E73D0391AF21A954535B70922D24A9BC874A29EFC24B4C927092ED6F271DEDD0DAAE748E24F9C681ED4B65C27BBCD2A4203136FCBC907352C16E68A3C902AA6C3151E642144A734B617155E1F39CCAD738A229FC7DB9330FA87934AB48832BA0CDBE79AC0AA7AFC9250EF8ADB4F6CF4DF87EEBF863B934E35FD7672D354E39968F1BB8BB399429FCBD10C19DC836A6480655698AAD7A5C20A61084F654DDC9DFD796A93B9397E70A9EEE3363EEDADBB37D360529FD2AFEA4F7D7391568C2BE67E9DEA5768FF10488008287F7FFDE4BFF1F473385BF6FD7DC59D4F0B54539DE45351DC93C623B8282E11642F7BD4C5DEF8F319D1818204CDB19D3683D54E32AFE7BD164173153B6DE88174EF53561E50E89E20AB98A3CFD347B34A4C70B222F62008DE2B9708F90189138D7CD4510DB241092CC0A6AB66977E7632AB91754EEB1F579510BA10598EFC9770CFE8CE41C636CCB39F16A2823D258C127ABA85CC8EEF3DD4B7ABC50D598C24FCDDF9FFD579F7500220FA741A66AA0CE77BC54DDC61798B38372C59FA697096C57FBDC1E41BF1E01C5E2F7944A80ADF51C759DE764DFB1358898CEE797FBB776DDEC5AC97195BB389229FC633AFEB833CE3AF399E19EE31DE6773EDDD79E70969ABFEAA2E01B1559E1DD7B1AA6D6DA4C7E556D2DDB55FC8E4D267F66CA97A6F9FCEE44F5B8D3E8CB1CC414FE71BDDC2FC776A46D08D44929C09705EB1A036F02B12699C56F0EE8196BC728912DBDCF690E4EB605EFFA05FBA433D8D7DE2EDF73CFF37EE55EF26B092038F8B1DFFD770F721453F8C753FC6ABE54D6C4D5E93E53D138D219AC0B9BCA8B77A5893F2F509BAF74B24FCF69BEB4AFE2BC85F6EB4A96ABD0163494D663C56B2556C2DD79110042E1EFDD3BF25900AE4960F3C8BC9685B6359A6FFD0F9231DB35DFCB342D7E5788AE8716EE8B82E6F7553B1E10A9BB516C5316F2927B5068F7050E600AFFA441BF7BD36CB16A002E3F5E08B4F98E55CE89ABEFB8F6205E161CD4C0A09FEDD5BED72B2828570E0E2A0462170203823638D0985F7B50B99656837DB7710453F8278CF9E96D9966AD04EA7C164188061633E8CCC81331F11876A3B0FB4C838D2ED4EC0FB710B4B7C91F050507B5637EDFABE51BD61754827D2EB1DA08857F22F1BF2D0D48F9827EF17CBDF304FD9A036F9206F4346ACF68B383CEE060358370FCBDF4028272C97D87B737ADD985AA2E69238DD75194837D4D01424D32FBC418C0E02BFBAF3EEB00C72E857F222C966F03A04D3E785C8023D7A421E5B473ADDE35E5674B9A3434E83775BFBF97E657A873D902A5265CF29D8C1904F8FBA670A861AD80BA2C83120E34F929FC93B3FBEA9FFA3620FF20620B1B6316CA67A6E5A15D9A8D6720C616FEDF50763331FD53E7C2DB26FB4C0D52D179A96A3735B5AFAA509544F04D77FBE47BC742DDDD2E7F48F83EDBA15CDD470A425EBFC7FC330D859FC23F2DBF1F9FC9E6FB2BA67A6ADA2AA29EA6FF0010C0759AFE36098C69F0021F854EB35C2FD2EF1ED2DE69149BDF1D2E826A94B49196360553BEE006D44CFEA40F93DF42B16E487F9FC23FAD5ED24FC57926C9B2BC52696D8973CE5D7E2CCB6577517339EFC4F46F6B2389592C89E9DF5922DC98E0D2DFA1CF87F45A26A854B7021A65DFBF797160FC5D6C6BBB24E7BFD026BB97CA7950977C778100F7EE5FE24ABE10B8B027800D03DCF2F408CBC6DA45170D6BF5F2C45AB86894EDD3276200D3BD0187B1162E8ABCFBFB95E2034612EDD6F57349B68F60674DBFC0953DB5605F6B6820890D24564DA3BFAF11905A078DEE7EBACCD71602FD2E3ECFD4D37A4DFA9922B772C452F34F8D3F5F7AC9C178DEB89879E70BCC15A6FC2471115AE373B130BB68D419F80BCDF69334E835A5A05F9F693EE712F3BB758A4FA12EB60EDA1F24234FB0AF7E5E3E5D981C17C79DB829FCD376FCF5FA3C50E709FA558281C60C92D5AADA1ED0CB04BB3D38183F24A2EEA05FFA20EA0CFAB5071BD3405A9C636302827D48847AA1B59DCBD27E173A0382F17731957B1954DA454929330B40BEFBAC6F0DE8EF53F8A74BA4F231089C190C62ED550DFC195BAABE23D60246A03A6A951963074920CBB506F2E2C05F34BDA05FC8029DB645359E405F482E806A147F9F966BA6FD919BF2CDB9034EA3AC9D426FBCF6DA33871CAD14FEA9F2D7EF79F14300FE36D5AEAE32F76E12E12F65FB49BD9DCFA4874867269F492C0E0DAD01E826DFA722755B5A33F032333D8A5397BB72F95D14C7043AAE9517332D5E7F80DAD25ED5AC9D017671A452F8570695EB324174A3920F9E0B715408E80DE28D3A3A04D698418F8744B750974DFF49843F6C0D7F2AD4AD093BA91F2F12D0AEEADBFBE304EA46D903478183C70D0E7D828394C2BF32B21FB93D107946EC0030265F4C92BC8C1D648B55F2453C89F66F59E062060BB9B0B6B5B30B89793D9B453E0A058CE92CD51D47E14D6DB14DF5E5D4C1742DF64997EE14DAB986EB97AE6764CF9F2CBDFC304729857F45D87FF5590714D8979AF9556D2D1ED35CEC20319FDBA2EFF183C37599FEA9251198168C09347F66528BED6CEBDC28489B4335FE0E1DD6419CFE6C5A2C817A94DF0A3ECA114AE15F51ACC1B5D9A21B1D9532EFD2405631309756E571218B7834EA5894132F65EDBC56BA2B7057F9EF96A05FD8E29CA41D146630E808088E9236D2BAD8C76904295D4B936CC0F2F59D1B657D0B83AFEE593A9329BD14FE9565CFD299B741F0D538F966509BA3173BA868E6D8C7D5AEB9FC86EBF9B47F35DEE0B324B21D7FC756FD6165B75D34AA05E21A037D1DD641FADD8B56847351CD12886300A3EC7A0AF920ABF650F86780281C7E5F00D84410059A29256B6C2C9885145B6BE3E9C14A2AEFBF54159FB503A0723D5F5AB031161A8D3A527D6D6BAAAF8174A4E0C6EBE8B332D86848C17523583B68BD9646B15BE0B9D63DA5766E046B17CAF7118D602AD7D768086BB3EB1D54D88F705C52F86764FA6FFC685CD6DBC6DADA15037506C62E64D355C5632E897627FBCF3D02917FAE57F949B47F57E0AF23882869F96FD5F63DFE5A026FE9351A03788936EFAAC4A31AC541CDFAE75F57BA56D24FE5E01FCA414200CEB96240F09A8F2DBDF0098E4A0AFF4CD8BDF413CB007EB76C86173A359DBA2BA4D81ABB102F3D4DABDC40B602F840DDAC5FA89DEB0BE849C7B45F5A327B1CD33FCBD10F30F98D5D68BF56E21678AE758743DE71EAEAD7D244EBD7838B593EC12187853FE088A4F0CFB8E3367C1082FBD3205FACD5F3409AB116AE92DD671716E1DC30FDFF220C0E41707F7589B018533BD717202C7D6653B65F6300B13BD8675AB2F5E24C3D690F08420B81BE9AFFF27E11794D1ABC8B8399B6726E54CAF243C98A0020FADFF72F9DCE157C14FED96B7F517947A6D5DDA8AEE96B538116109305B654F10B10B9BCF6A30C16C2027F1D197F59CA71A315218D013A29EE8E33A6D677AE51EBDF6D9CDC03E0C550858B8659AE4349C3A7F3FAD9670E3357448047D76BF4DB1C8914FE5561CFD2D67D10DC92FAD8A579FAC487AF0AB1B50B70D130DD57EFA54074AF027F5F124931DE73BD0F809636D97E033EE16F5BA5A72E604B6DEDACC9EF3C667B723F573871BF06405C348C037AC5CF53AD650CA63B00A5D753D177FEF9D24B0E721452F8570D750B6F84C8136690F8F485ACBAD8CFAF64ED190333584C4D5D01EC6F1AA3EFF065FD6947369FB10BF9EEC18D65C26D62C68797E9AE66D8D582782EEA2CCBED5C6CB2D7828190BFD345773B447E29CDE63383C55AE69ED885BC0C777ABD85ACDDCD7BAF38F3C31C7D14FE5565DFD2E90F2BF44D0060078B656D9D0860D5FC376955DE38B0F6F343D10704B8A1A6FDC5B467F3A5D6454B66603CDFAF8DE77BB4721C8E6C5ACC93AC5508C9D4F3B80511ACBCD90C076F03708C1B0D63C1AF9D1B95AEEFA23CEB4F81EF0C9DBC01C2797D0AFF3C3C00AE3CF32F20FAFE38D0372806F56006FE8C3C3B5888DB4117076ADF1659F75B10941201CC60A133A867D2F4E18ECCC1DAF14C1157837D51EBB25CA7A35AB65DAD8D1B654B9A2BEFFDA1191D7E10066F766E083318D496F6C6C7172A19842E0D1A2E1B954B3FBEB4E51B1C7514FEB9E105D1D677027A9D6F8ACDF832F712B33D8A8600F0CB83E1F01B10FC715DB38769FFA6368D9B884853B04F5BABECA80BD1FA914FEB3F60A2F5573ABBEEB7D4B9E38B4B718B5605B29D7D93437960D141E4B23DFF69CB2739DA28FC73C5D292B817445B7F5105D7C4917E976D839B2FB401AA5577E20743745C64D7BFF5B8D1C1B703F872B18DB18B9D157C8C59686D132F38F25414927A751E75AE5C2ABB5885272AAEA997C636B1B0968E3FE180F31D0E9D04E0D79D8B6006EBEAE7BA08C62E963FCF2E00629E163197EE7DD796EB38D2A687B00BA6CFC5577DE95721F23B2E1A1D9F6949D52C0856259EC2B24F2D44E647D4BA0D9198DB013CBBA849632DDEAC9133BFD8E3ABAB8B626D5CF0AFB33CFAE2FDA8221A2DC32EACF37E46345A86F5F8E8A5FB182D57FDF821D4FCEC9E2BCEB8E5E2F7DCB1DB0D972FCE32F64A4ABF5C98232FCF65EE55E0B2BDEFDAF2458E2C6AFEB967CF155B3F34C0E8346307FF535D742833CF1B16DB243901C78C0678F75F5D71E6032ABA1DC063B9E96E3B97F1FA320D83827E15016C7AC0A8739D45375D34AA56E98954F417F75C71C62D17BFF74B2F73A3E1C55299BB2F5EBF548444E45E23F2E6EF8CBE7B06059F9AFF88E4E7AFBEFBFB862EDAA1A26741E52C75A3174A6CDBFA2C80489D3963FFD28BEEB9E8B7EF385304370178964F33360A9F31DE39FAAAD6F659132E1AC673EB1EE18CE7E3173A85BF60494400DEB0E7F22D1F595A5273B77CE10B62CD16DFBDA97380C13F42CDE721FA793774B7ED5F7AD13D1C3D14FEA38A1D7F78DFBA639FFCDE16A7BA4514A743E47400A701D89804B83EB9F7CA179F030017BDF78B3F266A6E06F0831EE10A11C0B2B0A78B7950C8DF2FB8094D021E3F78DA6BF969B2302779702C2BF4757B2FDFBA0B002E7AF7DFBD0976F047C9674700EE03E46E0077027A6724C3BFDFFF4E6EAC49E15F83ECDCB5CBDA7F3CF5E46533FA41EBE494434F7EEF961BDEF7B2C701E035EFBFEB143B8AAE51C876A8AED34A34DC6B3E1712768AFE7CD1AC57CF7AFDB6078774D6D9771063541477ABE86FECB93C8FCA5F74D5E72F10B3F03D15F7C871CBDFFB6796DBA2F0933E0F88A57B1747EB9F39D50EF50764604F56A727ABC829027D36A01B01B309A2C7AAEA46A81E2B623655633A89807A855FD5C52BFCEB0F8D430A7758C43E21C021050E0BF084831E10C83705F250A4A36F195978686171F8D5EB7EF3CCEFF0D7A2F093797868BCEF8B9B1674D1E40F00595C367A4C49BEA351B4DE0E4A79F2F2CCA188B9F384104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208218410420821841042082184104208216466FC7F85DEF2B974AF903D0000000049454E44AE426082)
GO
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'0c83f7d9-07da-42d8-b3b1-f0ac3b646af3', N'oooo', CAST(N'2025-02-05T10:22:28.3654499' AS DateTime2), CAST(N'2025-02-05T10:22:28.3658006' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'1795ebe0-ea3e-4a7e-af72-2f2ca6d59a7a', N'adadaadapppp', CAST(N'2025-02-05T10:20:43.7178482' AS DateTime2), CAST(N'2025-02-05T10:24:24.0191835' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'5341baf7-f67b-4346-a8a0-d82c75cbdfed', N'rewtrwetyeryte', CAST(N'2025-02-05T10:21:16.8201863' AS DateTime2), CAST(N'2025-02-05T10:21:16.8201889' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'662400ea-2347-4722-84a8-b504d6eab94d', N'xxxxx', CAST(N'2025-02-04T15:53:41.8654299' AS DateTime2), CAST(N'2025-02-04T15:53:41.8654336' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'69f3e296-01b7-45a9-a07f-0b77453f76f4', N'aaaaa', CAST(N'2025-02-05T10:18:40.3092509' AS DateTime2), CAST(N'2025-02-05T10:18:40.3095763' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'724f524b-5be0-4172-88ef-5ab573101ebd', N'dsasda', CAST(N'2025-02-05T10:21:25.4521626' AS DateTime2), CAST(N'2025-02-05T10:21:25.4521659' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'8abcee34-28af-423d-acd6-e99a14cecf88', N'ewewqwrqweq', CAST(N'2025-02-05T10:21:09.6439817' AS DateTime2), CAST(N'2025-02-05T10:21:09.6439840' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'a0d6e953-ab67-420a-b962-ea65b2f3bad6', N'pppp', CAST(N'2025-02-05T10:23:39.4850572' AS DateTime2), CAST(N'2025-02-05T10:23:39.4854191' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'd86d1e16-2eac-4aa9-8e06-58b9e14f0b7d', N'00oo', CAST(N'2025-02-05T10:22:33.6697038' AS DateTime2), CAST(N'2025-02-05T10:22:33.6697067' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'ee7eecbc-b114-489e-89dc-00a72c1ee061', N'hhhhhh', CAST(N'2025-02-04T15:45:51.8189907' AS DateTime2), CAST(N'2025-02-04T15:45:51.8193455' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'ef604165-8324-4c8c-98e6-fa5625c5d2fd', N'eeeeqqq', CAST(N'2025-02-05T10:16:16.0439153' AS DateTime2), CAST(N'2025-02-05T10:16:16.0439189' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'f2790bfc-751d-48d2-a614-422db09a237e', N'wwwww', CAST(N'2025-02-05T10:26:11.2767559' AS DateTime2), CAST(N'2025-02-05T10:26:11.2770572' AS DateTime2))
INSERT [dbo].[LvCouncils] ([id], [lvcoucil_name], [created_at], [updated_at]) VALUES (N'fa80c3db-bb19-4b32-8612-da8965b37b63', N'dddđ', CAST(N'2025-02-04T15:51:37.7545743' AS DateTime2), CAST(N'2025-02-04T15:51:37.7548896' AS DateTime2))
GO
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'd146f151-a67a-455a-a2fa-6a7417184eac', N'Đề tài cấp cơ sở phân cấp', 0, CAST(N'2025-01-13T22:06:43.1957763' AS DateTime2), CAST(N'2025-01-13T22:06:43.1958213' AS DateTime2))
GO
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id], [citation_count], [page_count], [volume], [month]) VALUES (N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'vvvvv', 2024, N'vvv', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-02-03T14:31:25.0890676' AS DateTime2), CAST(N'2025-02-03T14:31:25.0891100' AS DateTime2), N'Quốc_tế', N'Q1', NULL, 1, 6, N'3', 12)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id], [citation_count], [page_count], [volume], [month]) VALUES (N'620bf6e2-6819-4dac-b72e-b0cbb20bc634', N'testd', 2025, N'fff', N'a715b1da-ddcc-401c-aaf0-cac975057723', CAST(N'2025-02-11T14:08:26.9251678' AS DateTime2), CAST(N'2025-02-17T09:13:20.5507215' AS DateTime2), N'Trong_nước', N'Q2', N'96c1592f-57d2-4fbf-8e32-450e7b537f35', 2, 6, N'4', 12)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id], [citation_count], [page_count], [volume], [month]) VALUES (N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'tét', 2025, N'yyyy', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-13T22:20:25.6517886' AS DateTime2), CAST(N'2025-01-13T22:20:25.6518456' AS DateTime2), N'Quốc_tế', N'Q3', NULL, 3, 6, N'2', 12)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id], [citation_count], [page_count], [volume], [month]) VALUES (N'd6288359-9d71-4e21-a134-31b395727eb0', N'demo', 2025, N'new', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-14T09:55:50.4595363' AS DateTime2), CAST(N'2025-01-14T10:01:36.4213188' AS DateTime2), N'Quốc_tế', N'Q2', NULL, 4, 7, N'3', 12)
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at], [magazine_scope], [rank], [magazine_score_id], [citation_count], [page_count], [volume], [month]) VALUES (N'ecd175b6-0305-4b2f-a600-b76a5a5a8d1b', N'tert', 2025, N'tere', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-02-05T17:58:09.4121568' AS DateTime2), CAST(N'2025-02-05T17:58:09.4121951' AS DateTime2), N'Quốc_tế', N'Q1', NULL, 5, 4, N'8', 12)
GO
INSERT [dbo].[MagazineScores] ([id], [magazine_score_name], [created_at], [updated_at], [scope]) VALUES (N'55815c96-bd47-45c8-8648-0954bf00ddca', N'Mẫu chỉ số', CAST(N'2025-02-03T07:18:23.5128316' AS DateTime2), CAST(N'2025-02-03T07:18:23.5128316' AS DateTime2), N'Quốc_tế')
INSERT [dbo].[MagazineScores] ([id], [magazine_score_name], [created_at], [updated_at], [scope]) VALUES (N'96c1592f-57d2-4fbf-8e32-450e7b537f35', N'Test score', CAST(N'2025-02-03T07:18:35.9777471' AS DateTime2), CAST(N'2025-02-03T07:18:35.9777472' AS DateTime2), N'Trong_nước')
GO
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at], [month]) VALUES (N'0a6631a6-e5fd-498b-ba58-cc5475308461', 2022, N'Test demo', N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', N'Test demo', N'Chưa duyệt', CAST(N'2025-01-15T14:56:53.5808339' AS DateTime2), CAST(N'2025-02-13T16:53:00.1450811' AS DateTime2), NULL)
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at], [month]) VALUES (N'43325be8-e91a-4a1d-a656-99d58ee5a871', 2024, N'Tesst', N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', NULL, N'Chưa duyệt', CAST(N'2025-01-13T22:18:09.9645187' AS DateTime2), CAST(N'2025-01-13T22:18:09.9645775' AS DateTime2), NULL)
GO
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'HAU-001', N'Khoa CNTT', N'Trường Đại học Kiến Trúc Hà Nội', NULL, NULL, N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:39:22.0622975' AS DateTime2), CAST(N'2025-01-13T21:39:22.0623629' AS DateTime2))
GO
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at], [paper_type], [scope]) VALUES (N'8c83e982-ea73-4d5f-894c-a70134743856', N'Tạ chí tuổi trẻ', CAST(N'2025-01-13T15:08:00.1728340' AS DateTime2), CAST(N'2025-02-20T16:16:31.6271894' AS DateTime2), N'Hội thảo', N'Trong nước')
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at], [paper_type], [scope]) VALUES (N'a715b1da-ddcc-401c-aaf0-cac975057723', N'xxxxxxxx', CAST(N'2025-02-04T08:52:58.5153872' AS DateTime2), CAST(N'2025-02-20T16:16:44.7590280' AS DateTime2), N'Hội thảo', N'Quốc tế')
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at], [paper_type], [scope]) VALUES (N'fedb7d35-0183-4619-9b9a-73ab17aaf02d', N'xxxpppp', CAST(N'2025-02-04T08:53:26.7371249' AS DateTime2), CAST(N'2025-02-20T16:16:51.4273800' AS DateTime2), N'Tạp chí', N'Trong nước')
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
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'bf48f65e-8582-44f5-a09c-3ee31c23d8b2', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'9f5ab428-54cb-4ecd-b300-906994d70d99', N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', 0, N'Đã tham gia', CAST(N'2025-02-12T18:02:20.6392042' AS DateTime2), CAST(N'2025-02-12T18:02:20.6392266' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'c4a683d2-9b42-4256-8fd1-a511df175a76', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'c06a4f9f-d2b3-46ea-84e3-35ae849e0e6a', N'90f5e838-49b6-44bb-b368-f309a818acfa', NULL, N'Chờ duyệt', CAST(N'2025-01-15T07:58:42.6205466' AS DateTime2), CAST(N'2025-01-15T07:58:42.6205467' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'e1742873-97bc-4724-8868-5f8ce0effb0d', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', NULL, N'Đã tham gia', CAST(N'2025-01-13T15:20:40.0571897' AS DateTime2), CAST(N'2025-01-13T15:20:40.0572324' AS DateTime2))
GO
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'0a415a0c-36ca-4d56-ac13-0eeae346839a', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-02-03T07:50:28.9692111' AS DateTime2), CAST(N'2025-02-03T07:50:28.9692299' AS DateTime2), N'Chờ duyệt', 1, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'174ce5b3-480f-4cfe-9173-0235ba9576b2', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'620bf6e2-6819-4dac-b72e-b0cbb20bc634', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-02-11T17:21:32.7069734' AS DateTime2), CAST(N'2025-02-11T17:21:32.7069907' AS DateTime2), N'Đã tham gia', 1, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'4fe7d470-12fd-428b-9184-69d74c538b84', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'b380fc1f-7def-4dd4-8360-7c44a52af2ff', CAST(N'2025-01-15T07:58:35.6616869' AS DateTime2), CAST(N'2025-01-15T07:58:35.6616870' AS DateTime2), N'Chờ duyệt', NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'5131ea6b-931d-4275-80af-ed201a8daeb1', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'35e37c8c-36b4-489a-b617-5d9321b922c1', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-02-03T07:31:25.1163548' AS DateTime2), CAST(N'2025-02-03T07:31:25.1163841' AS DateTime2), N'Đã tham gia', 0, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'53f6c28e-f282-47dc-898e-d4bc6e02a4b1', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'ecd175b6-0305-4b2f-a600-b76a5a5a8d1b', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-02-05T17:58:09.5268350' AS DateTime2), CAST(N'2025-02-05T17:58:09.5268657' AS DateTime2), N'Đã tham gia', 0, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'6715de41-6e15-40eb-920f-e281fa0e72e3', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-13T15:20:25.6783604' AS DateTime2), CAST(N'2025-01-13T15:20:25.6784001' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'70127e3b-99f7-4579-9af6-c7a50d2a922c', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'd6288359-9d71-4e21-a134-31b395727eb0', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-01-14T03:51:28.0760504' AS DateTime2), CAST(N'2025-01-14T10:01:36.5607787' AS DateTime2), N'Bị từ chối', NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status], [ScientistRequestid]) VALUES (N'7155496c-a712-4ada-be26-bf8e82e9ae3f', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'620bf6e2-6819-4dac-b72e-b0cbb20bc634', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-02-11T14:08:27.0357809' AS DateTime2), CAST(N'2025-02-12T17:37:18.1260076' AS DateTime2), N'Đã tham gia', 1, NULL)
GO
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'2f1e91d5-4101-4b08-911f-92c214293416', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', 0, N'Chờ duyệt', CAST(N'2025-01-13T15:31:00.7737598' AS DateTime2), CAST(N'2025-01-13T15:31:00.7737979' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'57ff1245-582d-4970-b209-94aecf7b00e6', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'0a6631a6-e5fd-498b-ba58-cc5475308461', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T07:56:53.6244627' AS DateTime2), CAST(N'2025-02-12T14:03:13.7211185' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'71247412-3f07-410b-a636-a135d4a4b811', N'3de0430e-a2fb-4226-ba73-a5f8f646a98e', N'0a6631a6-e5fd-498b-ba58-cc5475308461', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', 1, N'Đã tham gia', CAST(N'2025-02-12T14:03:28.3708647' AS DateTime2), CAST(N'2025-02-13T16:52:51.2228568' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'c90894ca-5f2b-40e3-885d-d4e7ec3d4198', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'0a6631a6-e5fd-498b-ba58-cc5475308461', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', 0, N'Chờ duyệt', CAST(N'2025-01-15T07:58:17.6635555' AS DateTime2), CAST(N'2025-01-15T07:58:17.6635557' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'fd5fd77a-98a5-448e-a6fa-78a8cd9fff9a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-13T15:18:10.1041265' AS DateTime2), CAST(N'2025-01-13T15:18:10.1041653' AS DateTime2))
GO
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'3de0430e-a2fb-4226-ba73-a5f8f646a98e', N'07221fc1-fdf8-4bf6-aacd-8609691dab0c', N'234c01af-72c7-431a-8c07-506b41728f1d', N'nguyen', CAST(N'2012-06-13T00:00:00.0000000' AS DateTime2), N'Nam', N'fffff', NULL, NULL, NULL, N'0123654789', N'test@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', NULL, NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-02-10T15:02:02.0455259' AS DateTime2), CAST(N'2025-02-20T17:44:40.1949811' AS DateTime2))
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'754566a3-0024-485a-8fb4-3d976132e12a', N'TÉt ddfđ', CAST(N'2025-01-06T00:00:00.0000000' AS DateTime2), N'Nam', N'HM', NULL, NULL, NULL, N'0123456789', N'ducthang191102@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2025', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T22:28:25.5712698' AS DateTime2), CAST(N'2025-01-13T22:28:25.5713234' AS DateTime2))
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'771aa184-a15e-4f80-826d-eae63bf70379', N'44ae3ec6-e278-4213-af7a-e5218b83492d', N'Thang', CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), N'Nam', N'HA NOI', NULL, NULL, NULL, N'0123456789', N'user@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2022', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:51:57.1739272' AS DateTime2), CAST(N'2025-01-15T14:56:29.3722454' AS DateTime2))
GO
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'48cce338-6f0e-41ba-9394-3cca8bbc7083', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'8f628a2b-7195-49b3-9876-b1304ca6bd04', N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', 0, N'Đã tham gia', CAST(N'2025-01-15T04:28:38.7451910' AS DateTime2), CAST(N'2025-02-12T17:48:14.6215534' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'6377450f-ad9e-408c-a7bb-52c816f8d4f8', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'41e72f88-2b8c-4fdf-b9be-ecbc96599694', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:26:32.6433230' AS DateTime2), CAST(N'2025-01-15T04:26:32.6433449' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'9fa1971b-746d-4f37-80e2-8a12d830195a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-13T15:20:02.4670891' AS DateTime2), CAST(N'2025-01-13T15:20:02.4671270' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'd46d6abf-6a6b-4b1d-a2a6-2ff03298d150', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', 0, N'Chờ duyệt', CAST(N'2025-01-13T15:28:42.0446437' AS DateTime2), CAST(N'2025-01-13T15:28:42.0446438' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'e3116dff-fd0b-4282-a06a-33a1ff3722b1', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'd1ae05ff-5566-40a3-bdf9-ed95660552cc', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-15T04:11:46.0406067' AS DateTime2), CAST(N'2025-01-15T04:11:46.0406290' AS DateTime2))
GO
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at], [topicId]) VALUES (N'41e72f88-2b8c-4fdf-b9be-ecbc96599694', N'gggg', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:26:31.9973556' AS DateTime2), CAST(N'2025-01-15T11:26:31.9976702' AS DateTime2), NULL)
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at], [topicId]) VALUES (N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'tét', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-13T22:20:02.3330141' AS DateTime2), CAST(N'2025-01-13T22:20:02.3333869' AS DateTime2), NULL)
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at], [topicId]) VALUES (N'8f628a2b-7195-49b3-9876-b1304ca6bd04', N'fdsfds', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-17T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:28:38.1684544' AS DateTime2), CAST(N'2025-02-12T17:48:14.5237432' AS DateTime2), NULL)
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at], [topicId]) VALUES (N'd1ae05ff-5566-40a3-bdf9-ed95660552cc', N'testtsse', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-15T11:11:45.9211294' AS DateTime2), CAST(N'2025-01-15T11:11:45.9213717' AS DateTime2), NULL)
GO
INSERT [dbo].[TpCouncils] ([id], [tpCouncilId], [tpcouncil_name], [created_at], [updated_at]) VALUES (N'93124703-e228-4028-8c60-78b071d854a3', N'tttt', N'yyyy', CAST(N'2025-02-04T16:19:53.7023689' AS DateTime2), CAST(N'2025-02-04T16:19:53.7023711' AS DateTime2))
INSERT [dbo].[TpCouncils] ([id], [tpCouncilId], [tpcouncil_name], [created_at], [updated_at]) VALUES (N'e9dea220-8c4c-4cce-9370-a07d2cf8960a', N'ffff', N'qqqqq', CAST(N'2025-02-04T16:19:46.4956752' AS DateTime2), CAST(N'2025-02-04T16:19:46.4960890' AS DateTime2))
GO
INSERT [dbo].[Trainings] ([id], [training_name], [created_at], [updated_at]) VALUES (N'860005c8-d072-4564-83c9-7bdf68b47689', N'Test', CAST(N'2025-01-13T22:07:37.4437086' AS DateTime2), CAST(N'2025-01-13T22:07:37.4437596' AS DateTime2))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_role_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_role_id] ON [dbo].[Categories]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_training_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Categories_training_id] ON [dbo].[Categories]
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConferenceCouncils_conference_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ConferenceCouncils_conference_id] ON [dbo].[ConferenceCouncils]
(
	[conference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConferenceCouncils_council_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ConferenceCouncils_council_id] ON [dbo].[ConferenceCouncils]
(
	[council_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Conferences_seminar_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Conferences_seminar_id] ON [dbo].[Conferences]
(
	[seminar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConferenceTopics_conference_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ConferenceTopics_conference_id] ON [dbo].[ConferenceTopics]
(
	[conference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConferenceTopics_Topicid]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ConferenceTopics_Topicid] ON [dbo].[ConferenceTopics]
(
	[Topicid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Council_lvCouncilId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Council_lvCouncilId] ON [dbo].[Council]
(
	[lvCouncilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Council_tpCouncilId]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Council_tpCouncilId] ON [dbo].[Council]
(
	[tpCouncilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CouncilTopics_council_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CouncilTopics_council_id] ON [dbo].[CouncilTopics]
(
	[council_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CouncilTopics_Topicid]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_CouncilTopics_Topicid] ON [dbo].[CouncilTopics]
(
	[Topicid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_book_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_book_id] ON [dbo].[Curriculums]
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Curriculums_training_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Curriculums_training_id] ON [dbo].[Curriculums]
(
	[training_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Magazines_magazine_score_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Magazines_magazine_score_id] ON [dbo].[Magazines]
(
	[magazine_score_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Magazines_paper_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Magazines_paper_id] ON [dbo].[Magazines]
(
	[paper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Offers_propose_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_propose_id] ON [dbo].[Offers]
(
	[propose_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Projects_researcherid]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_researcherid] ON [dbo].[Projects]
(
	[researcherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_curriculum_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_curriculum_id] ON [dbo].[ScientistCurriculumRoles]
(
	[curriculum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_role_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_role_id] ON [dbo].[ScientistCurriculumRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistCurriculumRoles_scientist_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistCurriculumRoles_scientist_id] ON [dbo].[ScientistCurriculumRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_magazine_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_magazine_id] ON [dbo].[ScientistMagazineRoles]
(
	[magazine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_role_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_role_id] ON [dbo].[ScientistMagazineRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_scientist_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_scientist_id] ON [dbo].[ScientistMagazineRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistMagazineRoles_ScientistRequestid]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistMagazineRoles_ScientistRequestid] ON [dbo].[ScientistMagazineRoles]
(
	[ScientistRequestid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_offer_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_offer_id] ON [dbo].[ScientistOfferRoles]
(
	[offer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_role_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_role_id] ON [dbo].[ScientistOfferRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistOfferRoles_scientist_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistOfferRoles_scientist_id] ON [dbo].[ScientistOfferRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Scientists_degree_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Scientists_degree_id] ON [dbo].[Scientists]
(
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Scientists_office_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Scientists_office_id] ON [dbo].[Scientists]
(
	[office_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_role_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_role_id] ON [dbo].[ScientistTopicRoles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_scientist_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_scientist_id] ON [dbo].[ScientistTopicRoles]
(
	[scientist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ScientistTopicRoles_topic_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_ScientistTopicRoles_topic_id] ON [dbo].[ScientistTopicRoles]
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Topics_lvtopic_id]    Script Date: 2/20/2025 5:54:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Topics_lvtopic_id] ON [dbo].[Topics]
(
	[lvtopic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Council] ADD  DEFAULT (N'') FOR [lvCouncilId]
GO
ALTER TABLE [dbo].[Council] ADD  DEFAULT (N'') FOR [tpCouncilId]
GO
ALTER TABLE [dbo].[Files] ADD  DEFAULT (0x) FOR [file_content]
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
ALTER TABLE [dbo].[ConferenceCouncils]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceCouncils_Conferences_conference_id] FOREIGN KEY([conference_id])
REFERENCES [dbo].[Conferences] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConferenceCouncils] CHECK CONSTRAINT [FK_ConferenceCouncils_Conferences_conference_id]
GO
ALTER TABLE [dbo].[ConferenceCouncils]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceCouncils_Council_council_id] FOREIGN KEY([council_id])
REFERENCES [dbo].[Council] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConferenceCouncils] CHECK CONSTRAINT [FK_ConferenceCouncils_Council_council_id]
GO
ALTER TABLE [dbo].[Conferences]  WITH CHECK ADD  CONSTRAINT [FK_Conferences_Seminars_seminar_id] FOREIGN KEY([seminar_id])
REFERENCES [dbo].[Seminars] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Conferences] CHECK CONSTRAINT [FK_Conferences_Seminars_seminar_id]
GO
ALTER TABLE [dbo].[ConferenceTopics]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTopics_Conferences_conference_id] FOREIGN KEY([conference_id])
REFERENCES [dbo].[Conferences] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConferenceTopics] CHECK CONSTRAINT [FK_ConferenceTopics_Conferences_conference_id]
GO
ALTER TABLE [dbo].[ConferenceTopics]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceTopics_Topics_Topicid] FOREIGN KEY([Topicid])
REFERENCES [dbo].[Topics] ([id])
GO
ALTER TABLE [dbo].[ConferenceTopics] CHECK CONSTRAINT [FK_ConferenceTopics_Topics_Topicid]
GO
ALTER TABLE [dbo].[Council]  WITH CHECK ADD  CONSTRAINT [FK_Council_LvCouncils_lvCouncilId] FOREIGN KEY([lvCouncilId])
REFERENCES [dbo].[LvCouncils] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Council] CHECK CONSTRAINT [FK_Council_LvCouncils_lvCouncilId]
GO
ALTER TABLE [dbo].[Council]  WITH CHECK ADD  CONSTRAINT [FK_Council_TpCouncils_tpCouncilId] FOREIGN KEY([tpCouncilId])
REFERENCES [dbo].[TpCouncils] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Council] CHECK CONSTRAINT [FK_Council_TpCouncils_tpCouncilId]
GO
ALTER TABLE [dbo].[CouncilTopics]  WITH CHECK ADD  CONSTRAINT [FK_CouncilTopics_Council_council_id] FOREIGN KEY([council_id])
REFERENCES [dbo].[Council] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CouncilTopics] CHECK CONSTRAINT [FK_CouncilTopics_Council_council_id]
GO
ALTER TABLE [dbo].[CouncilTopics]  WITH CHECK ADD  CONSTRAINT [FK_CouncilTopics_Topics_Topicid] FOREIGN KEY([Topicid])
REFERENCES [dbo].[Topics] ([id])
GO
ALTER TABLE [dbo].[CouncilTopics] CHECK CONSTRAINT [FK_CouncilTopics_Topics_Topicid]
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
