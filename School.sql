USE [master]
GO
/****** Object:  Database [bigschooll]    Script Date: 3/28/2023 8:43:26 PM ******/
CREATE DATABASE [bigschooll]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bigschooll', FILENAME = N'D:\Work\VS\School\bigschooll.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bigschooll_log', FILENAME = N'D:\Work\VS\School\bigschooll_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bigschooll] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bigschooll].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bigschooll] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bigschooll] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bigschooll] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bigschooll] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bigschooll] SET ARITHABORT OFF 
GO
ALTER DATABASE [bigschooll] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bigschooll] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bigschooll] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bigschooll] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bigschooll] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bigschooll] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bigschooll] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bigschooll] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bigschooll] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bigschooll] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bigschooll] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bigschooll] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bigschooll] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bigschooll] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bigschooll] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bigschooll] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bigschooll] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bigschooll] SET RECOVERY FULL 
GO
ALTER DATABASE [bigschooll] SET  MULTI_USER 
GO
ALTER DATABASE [bigschooll] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bigschooll] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bigschooll] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bigschooll] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bigschooll] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bigschooll] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [bigschooll] SET QUERY_STORE = OFF
GO
USE [bigschooll]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[CourseId] [int] NOT NULL,
	[Attendee] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Attendance] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[Attendee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LecturerId] [nvarchar](128) NOT NULL,
	[Place] [nvarchar](255) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsCanceled] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Following]    Script Date: 3/28/2023 8:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Following](
	[FollowerId] [nvarchar](128) NOT NULL,
	[FolloweeId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Following] PRIMARY KEY CLUSTERED 
(
	[FollowerId] ASC,
	[FolloweeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303170758567_InitialCreate', N'lab04.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7D383AC954B77B127B05BA44ED206DD5CB0CE2ECEDB82966847588952252A4D50F497F5A13FA97FE10C254A166FBAD88AED140B2C2C72F8CD70382487C361FEFEF3AFF10F4F61603DE224F52332B18F4687B685891B793E594EEC8C2EDEBCB77FF8FE9B7F8D2FBCF0C9FA5CD29D303A6849D289FD40697CEA38A9FB8043948E42DF4DA2345AD0911B850EF222E7F8F0F0BFCED1918301C2062CCB1A7FCC08F5439C7FC0E734222E8E698682EBC8C341CACBA16696A35A3728C4698C5C3CB103343FFC6E54D0D9D659E02390618683856D2142228A284878FA29C5339A4464398BA10005F7CF3106BA050A52CC253F5D9177EDC4E131EB84B36A5842B9594AA3B027E0D109D78A23375F4BB776A535D0DB05E8973EB35EE7BA9BD8571ECE8B3E4601284066783A0D12463CB1AF2B1667697C83E9A86C382A202F1380FB2D4ABE8EEA880756E7760795151D8F0ED9BF036B9A05344BF084E08C262838B0EEB279E0BBBFE0E7FBE82B269393A3F9E2E4FDDB77C83B79F71D3E795BEF29F415E8840228BA4BA21827201B5E54FDB72D476CE7C80DAB66B5368556C0966042D8D6357AFA80C9923EC054397E6F5B97FE13F6CA126E5C9F880FF3071AD12483CF9B2C00930D7055EF34F264FF37703D7EFB6E10AE37E8D15FE6432FF1878993C0BCFA8883BC367DF0E3627A09E3FD85935D2651C8BE45FB2A6ABFCCA22C7159672223C93D4A96988AD28D9D95F17632690635BC5997A8FB6FDA4C52D5BCB5A4AC43EBCC8492C5B6674329EFCBF2ED6C7167710C83979B16D34893C1D5B7A991D4EEC0CA6B57E672D4D55C0874E39FBCFA5D84C80F0658FE3A70019F63E12721AE7AF96304C686486F99EF509AC2ECF77E46E94383E8F07300D167D8CD1230CA194561FCE2DCEE1E22826FB270CE6C7D7BBC061B9AFBDFA24BE4D228B920ACD5C6781F22F76B94D10BE29D238A3F51B704649FF77ED81D601071CE5C17A7E9251833F6A611B8D425E015A127C7BDE1D8D2B46BF7631A203FD4FB1FD222FAA5245DF9207A0AC50F3190E97C9126513F444B9F7413B524358B5A50B48ACAC9FA8ACAC0BA49CA29CD82E604AD721654837977F9080DEFDEE5B0FBEFDF6DB6799BD6829A1A67B042E29F30C1092C63DE1DA214276435025DD68D5D380BF9F031A62FBE37E59C3EA3201B9AD55AB3215F04869F0D39ECFECF865C4C287EF43DE6957438F494C400DF895E7F9E6A9F739264DB9E0E4237B7CD7C3B6B8069BA9CA569E4FAF92CD084BB78B042941F7C38AB3D7251F4468E7E40C7C0D07DB6E54109F4CD968DEA969CE300536C9DB94538708A521779AA1AA1435E0FC1CA1D5523D82A0A220AF71F8527583A4E5823C40E4129CC549F50755AF8C4F56314B46A496AD9710B637DAF78C835E738C684316CD54417E6FAA00713A0E2230D4A9B86C64ECDE29A0DD1E0B59AC6BCCD855D8DBB128BD88A4DB6F8CE06BBE4FEDB8B1866B3C6B6609CCD2AE922803180B70B03E56795AE06201F5CF6CD40A51393C140B94BB515031535B603031555F2EA0CB438A2761D7FE9BCBA6FE6291E94B7BFAD37AA6B07B629E863CF4CB3F03DA10D85163851CDF37CCE2AF113D51CCE404E7E3E4BB9AB2B9B08039F612A866C56FEAED60F759A4164236A025C195A0B28BFFA53809409D543B83296D7281DF7227AC09671B74658BEF64BB0351B50B1EB57A03542F345A96C9C9D4E1F55CF2A6B508CBCD361A186A3310879F1123BDE4129A6B8ACAA982EBE701F6FB8D6313E180D0A6AF15C0D4A2A3B33B8964AD36CD792CE21EBE3926DA425C97D3268A9ECCCE05AE236DAAE248D53D0C32DD84845E2163ED0642B231DD56E53D58D9D22278A178C1D43F2D4F81AC5B14F96B5642A5E62CD8A4CAAE99B59FF44A3B0C070DC54936F54495B71A251829658AA05D620E9A59FA4F41C5134472CCE33F542854CBBB71A96FF92657DFB5407B1DC074A6AF6BB68215CD80BBBACEA86F0D697D0B790F93279005D33F2FAE6164B6B43014A3431FB6914642131BB56E6D6C5CD5DBD7D51A2228C1D497EC57552F4A438B8A2D23B0D893A1D361E9ECA67597F88CC102645971E675DD5262FD48C5206A5EA28A640D5CE86CCE4BC741C26D923EC3F4AAD082F3397781A4A1D8017F5C4A865322860B5BAEEA862B2491D53ACE98E286594D421A5AA1E52D6F3460421EB156BE11934AAA7E8CE41CD14A9A3ABB5DD9135392375684DF51AD81A99E5BAEEA89AB4923AB0A6BA3BF62AC7445E3EF778B7329E53D6D8AE8A43EC66FB9501E365D6C261B6BBDA5D7D1DA856DC138BDFC62B60BC7C2FEDC878925BC38E8AA8C5667664C030AF36C2FDB6B8D8345ECA9B31854B6B61416FBAB437E3F5B3D617B509E508279354DCABA39C74641BF3E353FBA318E53C5590D856A946D8CC9F538AC3112318CD7E0DA6818FD9D25D125C23E22F704A8B440DFBF8F0E8587A5DB33F2F5D9C34F502CDF1D3F4DC451CB32DE45C914794B80F2851332036780DB2025582CB57C4C34F13FBF7BCD5691EA760BFF2E203EB2AFD44FC5F33A8B84F326CFDA166740E931DDFE13D4625E81FAFE2A14377955FFDEF4BD1F4C0BA4D603A9D5A8792A2D7197EF1F9432F698AA61B48B3F6A388D73BDB84D7075A5469B6ACFFD860EED3411E1A9452FE3B444FDFF6154DFB98602344CD8381A1F00651A1E941C03A58C6C7001E7CD2FC3140BFCEEA1F07AC239AF161804FFA83C9CF02BA2F4365CB1DEE439AA3D23696A45CCFAD69D51BE558EE7A6F52B2AF379AE86A86750FB841B3A83773515E5976F2605BA726F97830EC5DDAFD8B671CEF4B92F1CA69DF6D6EF136D3891BAE8FFE5159C47B90F7A6C9E3D97DAEF0B66DCD14FBDDF384CB7E19C17B666C7C9BDF7DDEEFB68DCD1420DE7363EB95DDBB67B6B6ABFD73C796D6790BDD79AEAE9A7664B8C3D14591DB72718B903B1CFFE7111841E151164F28F5C95F4D89AB2D0C572466A6E6AC3399B1327114BE0A4533DB7E7DE51B7E6367394D335B43AE66136FBEFE37F2E634CDBC0D1990BBC822D6E620EA32BB5BD6B1A664A9D794352CF4A42549BDCD676DBC907F4D49C2832845983D86DBE5D793133C884A869C3A3D7280D58B62D83B6B7F6311F6EFD45FAE20D85F5C24D81576CD8AE68A2CA272F396242A49A408CD35A6C8832DF52CA1FE02B914AA59003A7F039E07F5D835C81C7B57E436A37146A1CB389C0742C08B39014DFCF3446751E6F16DCCBED221BA0062FA2C707F4B7ECCFCC0ABE4BED4C4840C10CCBBE0E15E369694857D97CF15D24D443A0271F5554ED13D0EE300C0D25B32438F781DD9C0FC3EE025729F5711401348FB40886A1F9FFB6899A030E518ABF6F00936EC854FDFFF1F71C259916A540000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303231121522_AddAttendance', N'lab04.Migrations.Configuration', 0x1F8B0800000000000400E55A6D6FDB3610FE3E60FF41D0C721B31C7705BAC06E913AC960AC79419C16FB56D0D2D92146511A49053686FDB27DD84FDA5FD8E95D22254B761CB7C510A0A9A8BBE3F1EEB923F928FFFEFDCFF8DDDA67D6130849033EB14F0743DB02EE061EE5AB891DA9E58F6FEC776FBFFF6E7CE9F96BEB532EF72A96434D2E27F6A352E199E348F7117C22073E75452083A51AB881EF102F7046C3E1CFCEE9A90368C2465B9635BE8FB8A23E240FF8380DB80BA18A08BB0E3C60321BC737F3C4AA75437C902171616233B218FE3448E56CEB9C51823ECC812D6D8B701E28A2D0C3B38F12E64A047C350F7180B0874D0828B7244C42E6F95929DE7711C351BC08A754CC4DB9915481BFA3C1D35759541C5D7DAFD8DA45D4306E97185FB589579DC46E629F2B05DC231867DBD2A73B9B32118BD6833B28554EACE4C5490100C449FC73624D23A62201130E9112849D5877D18251F757D83C04BF039FF088B1AA63E81ABEAB0DE0D09D0842106A730FCBCCDD6910090933CFB69C6EE1D451005D78ECE87315CAC634E9FA675CBD1AD9D60D7A4D160C0AC05462355781805F8083200ABC3B82730BCCF74DC0CDF9B5D94A3FD3D910A15866B6754DD61F80AFD42316E0E88D6D5DD13578F948E6C1474EB12A514989081A3CD466BE214F749538DCB862DBBA0796BC968F344CEBA792EFCFB9D49508FCFB80D5F093BDFC3CC75F319A1E823689072256A0EABE8D9D129A5B019BBBD013ACA9F8F1816A42B41B7587C0DBCC8324625D98FB006EBC6E51CEF982A8D3E6BE63C4DD06F6D1EBD72F31ED0506EA0177977CE6F279474353545C0562D39DAFDED597596CACBFFC65563EB25A7EFABBA2B6F2EA3304F2F2DCAFF80A3FFB965FA6F0FF29C03E0D3FFEF708F8EF68F6F2F968D37B7D2B1CFBA0ED5CCAC0A5893F1ADC0A5FEAEBBBE49ED5E5581AE3EAC230D408391A22C8D0096C7246DCB6D82DCAAB6237DB90EA567F30AC223441C4CD99303CD74A043BE5CAC431E52E0D09EB5898A6D7B302E2D81733E86F2E208C4F215C75ACBDCFD4D50E69BA50CCA495675784C64E0522DB91639E59DA52BCE50053E6B87A4AEECAF336D3BDE173AA87797CCB2F808102EBDC4D6F1253225DE2351C6ED1810320AFD5F92340AF3527BDB0D77E45383CF2D24E863A0A3540642EBCA72BBCA006416C4CC15A356C977811CD764C99B5731D45B1E1392803D0D891CBFED9804F038E7543455B378CE448EC3290D6366DB6513459CD4A257E86A9CA5E53116BDB8FF4A4F6D8058A25D4BD37F0D1A3F1574DE54EEB05585F6B8F3834DCB0CC4074B4B49E4DADE27F0D525B62D1DEC69E158CFC1850144FC9EE3829BD93D3404E0B0F34BE26618887A70A2F948D58F394149AFE38DF9D33F1531B8E2B1BA893C2DB62263C069215686FE380787045855478CD200B12E774EAF98698D12A5A8A2F9FCEEC0666E2F29ACC75E2FFA77A2D3C4E435FCD74AF706D7EDC9893D36E23784CE5849F238C885656651AB0C8E75DFDBADD52C998542DB5F13D2988B415197B831137635BADA7A257A2DA9B56CF2435977A8F04B529B685544FCB6E09A9D209552BD5F1FED63282A06A281BEA6FA3BCDD57CD94A3FD2D550FB335E06E39E47E39C095FBDBFE98CB37F13D50D7AAFA32B84B6FD255FD74E4C8F930F6325DA498BDD8D3B4BD6B9CED23DD1F3A8C8D2515B12D0CCD13F5E24D65BE910AFC412C3098FFC1A68CE27A4B816BC2E912A44A09167B343C1D695F4CBE9EAF178E941EEBFD09E3DBF9A24079D3AD6086C6D713FBCF44E9CC9AFDF639D73BB16E05A6EECC1A5A7FED4C58EA1F18F81311EE231126D9BBD5F0AE1CFDD159BB24A89DC4F88EC13399F23DC3D74184375A4DA8C067F2DC1E3EABC3F0DCBD515B68EE80DBDD59E82F03B01DA358257BF7CCF10B32A6CFA748B30BEBB119D1A350A06D87EF6F9AF1EC9DB18392904D7CC2DE1CEB7EC8E99FCD83F197DF0A6369B2157DE9C80E36323D9CE226B40830DB6987DB99ADDC425636D9DF8DC8DC6CA5311BED7F0D246713AB6978D458F72649F0153298BD9D6D6D2DCD64D58BF093E6DD0D0BB4F2A76CD820245D9526E23F6CE3E0D64AB39099F16590F708CDA35C443B615C832278C823E742D1257115BE7641CAE4B3F227C22214B9F417E0CDF86DA4C248E192C15FB01A5AE24EB36DFE8484ADFB3CBE0D936FC7875802BA49E373EA2D7F1F51E6157E5F351C865A4CC42D2C3BF6C7B954F1F17FB5292C99DFE5DB0C65E12B3AEF03F8214363F296CFC913ECE3DB47091F6045DC4D7E056F37D29D887AD8C71794AC04F16566A3D4C747C4B0E7AFDFFE079AA6483FD1290000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303270313044_AddFollowingsTable', N'lab04.Migrations.Configuration', 0x1F8B0800000000000400E55ADB6EDB46107D2FD07F20F85838A2AC34406A48091CD92E84C6175876D0B760458EE445974B96BB742414FDB23EF493FA0B1DDE975CDE24CBAA8D224012923B979D39333B3BA37FFEFA7BFC71ED32E31102413D3E318F0743D3006E7B0EE5AB8919CAE59BF7E6C70FDF7F373E77DCB5F1255BF7365A87945C4CCC0729FD13CB12F603B8440C5C6A079EF09672607BAE451CCF1A0D873F59C7C716200B137919C6F836E492BA103FE0E3D4E336F83224ECD2738089F43D7E99C75C8D2BE282F0890D139391C5F0C741B2CE344E1925A8C31CD8D23408E79E2412353CB917309781C757731F5F1076B7F101D72D0913906A7E522CEFBB89E128DA84551066ACEC5048CFDD92E1F1DBD42A56957C27DB9AB9D5D06EE7685FB989761DDB6E629E4A09DC216867D3A88A3B99B2205A5A36EEA0203932E20F4739001027D19F23631A32190630E110CA80B023E3265C306AFF029B3BEF37E0131E32A62A86AAE1B7D20B7C7513783E0472730BCB54DDA9170602668E6958DD8B134501AA8BC75655564EAC8949F63FE3F2EDC834AE506BB260900346B1D55C7A01FC0C1C0222C1B921283B407F5F795C975F9156E899484384629899C625597F06BE920F1880A3F7A67141D7E0646F520DEE39C5A84422198450A36145F21579A4AB58E1DA1D9BC62DB0F8B378A07E123F8ABFBF66AB2E02CFBDF558093FE9C7AF73FC2742D39DD7B4E28E042B9065DDC65601CD56C0662AF4046BB2FCF040D521DA8DBA7DE06DE6406CB12ECC7D063BDA7750C87C46D45564DF3062B7817DF4EEDD73883D4343DDE1E992492E9EB7643445C295176CBAFDD5CE6726A6515830C8F97CF2306408DF226C53556A0337FB98C69D50E3B6FA2D0FCA2C6CB505595CEF16B5B99E7DE33625F8FF446E9F9322FAFB0081D3714A88A7A3AD7A4834C27127B45D788C79DF62EBF4845B4E7178BC25A2934CDCA3A84997D7D440DD3055451D3AE9AB7A3FAFEC26989C0AE1D9344641252BE5902DEFE09C3B46177E939DA8F8C70D2152A88FD84025704F9A655AF8E65958E19B163C65AE3F685C11221044873F61786F128851CAA58E27CA6DEA13D6B1B10A5DCF4419D93E9750FD72067E54E572D9B1F73EA2D5135857219754098F2E0B8D2D0522EDC8D16BE22617B714C8858FD55B58979FDB58F786CF71D5CCE36B7E86958804E3D44E6EAA53226CE2D45C9E50813D20AF51F90340AFD127BDB0D77C05DD3FF2924C86341229204855F8445773FB016BC5E803AC65CD31772F203DE9449A34AB288A18CF416A80C683BBC89F35F8D4E05866949FFE1A930C895D0C92D8A6F53CF224DBC1253FD0EBB828F541858DE2064D23A5B2519635553F556CF4384CF23D948DA0C1ACC7F9A1B2CA94AEC67179AF3DEC50D308D00DD191197BE64645FF12325B6CD19C0D9F648CAC9AC863B068425A491732EB565A0DEDCAF125F1FD08890565FAC69827BDCBE99BF9F6AD3D37E161D9A2A6C3976B9B4BC24B075941E56B6410072E682024DE86C982443E9D3AAEB64CCB380DD19789D3938AEEB82C28339AE8FF095D43BBB1263DA7B417B83737CAEFF1DDAA163C3A71DC46268C048DCDBFA9C7429777A5FD664E45634FE5D4D4964C4054D99176C46876D34EE7B22B7A39AA3969F574527DA8F7705013619349AB6ED9CE216AD74BE5A2BEEFCF2DED63A98CD257FD79144D28954DF1B63F27B5262E01B7A5566EB1B3D29B2AD95B79FF72E05B9C96BB2338AB2C76C07023E9F3A038E902A9F4C99B17E30FA5F8DAD91F458DB6BD435A689B6CAAB64654CBB675673AB969874873F3E6D9BDA5D531D525B9F4BC9EA9D42DE3B486E89EC56A4545B2C434D04C8FD4890A8AF946487007D182C1FC77366514F75B2CB8249C2E41C8A4B5668E86C7A3CA50F7E50C582D211CD67BCAFA7A869E94D75D2C67C87C3D31FF88894E8CD9AF5F33BA23E33A40D79D1843E3CFADDB83D519287F2481FD4002BD3DB853EFAF698C78F0F9406CD4CED9DD96C6D387793B9AAF635657CB351E3A3C7114E7E0B3DCCF28AE376A73CA27E1569FE12DA854B9240DEBA70DCDFE1B946E69097536B523507618F0BCB681CBDE02539FA7EC3965EE615CF2F4F948DA663AF438E420F38FA62BF3AB1E77F4F6D85E2710755DC09D072CBB21A7BF37F736BC782DE30ABDC7D87716D1318A48AE15583E2C3CF47692E1B61E55B44C2AEAF86F37C5D8B4CE306AF96F3DE1681F70D4C97819F38FBA8187B6EDDAE4A2F70F5FE070A3B7B28DF9ABBE8FFD2CA30BFD6A8F5940F9313666214157058BE8A7D91CEC52FCE76B667CE96589A8A251B6A452CC5C8224780720A781A44B624BFC6C83103142BF1016E292737701CE8C5F87D20F256E19DC052BA1254A676DF2E3F94C59E7F1B51FFF88691F5B403569748DB9E69F42CA9C5CEF8B9A8AAB81459427D35B61E44B19DD0E579B9C93FE03B12646A9F9F2F47E07AECF9099B8E673F208BBE8762FE033AC88BDC93A34CD4CBA1D5136FBF88C9255405C91F228E8F11131ECB8EB0FFF02FEF760A593300000, N'6.4.4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b', N'nguyengiahuy.1720@gmail.com', 0, N'ALelj1J6m9biv3leEQnqHjC7XUHYTSACdJNSqQ3GyCTCEeRc839NVWVj/ljYpGUB5Q==', N'b327c536-9b0d-4153-a0d6-9c04d1e23399', NULL, 0, 0, NULL, 1, 0, N'nguyengiahuy.1720@gmail.com', N'Nguyen Gia Huy')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc', N'aaa123@gmail.com', 0, N'AJrrULfJidHCanYoGkeMyMIit9eiwvubhu0MgoFvdBK6sZuLigYm7LxUuSAa8a4nmA==', N'f3544e35-4cf5-4d61-a93c-e56b569ea007', NULL, 0, 0, NULL, 1, 0, N'aaa123@gmail.com', N'daf punk')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'ac3e72b1-b329-4869-b2ff-50a036e7da97', N'amba@gmail.com', 0, N'AMy6ZZyoRBtuuC2irQe/WGYKKCS1Q5iltybfoyXXrAwCij7txSLx2uH7TJCFEI//2g==', N'30e33042-c129-4fc7-bcb6-3525f28e8622', NULL, 0, 0, NULL, 1, 0, N'amba@gmail.com', N'VEVEVE')
GO
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (4, N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (4, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (4, N'dd17028f-4d88-4e29-a160-27adac5bef30')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (5, N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (5, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (5, N'dd17028f-4d88-4e29-a160-27adac5bef30')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (6, N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (6, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (6, N'dd17028f-4d88-4e29-a160-27adac5bef30')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (7, N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (7, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (7, N'dd17028f-4d88-4e29-a160-27adac5bef30')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (12, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (13, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (14, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (15, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc')
INSERT [dbo].[Attendance] ([CourseId], [Attendee]) VALUES (1008, N'ac3e72b1-b329-4869-b2ff-50a036e7da97')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Development')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Business')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Marketing')
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (4, N'dd17028f-4d88-4e29-a160-27adac5bef30', N'hutech', CAST(N'2023-04-12T00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (5, N'dd17028f-4d88-4e29-a160-27adac5bef30', N'hutech', CAST(N'2023-12-12T00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (6, N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b', N'Hutech', CAST(N'2023-12-12T00:00:00.000' AS DateTime), 3, NULL)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (7, N'dd17028f-4d88-4e29-a160-27adac5bef30', N'Hutech', CAST(N'2023-12-12T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (12, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc', N'as', CAST(N'2023-12-01T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (13, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc', N'io', CAST(N'2023-04-08T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (14, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc', N'xcv', CAST(N'2023-05-06T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (15, N'9f97e828-bdf3-4bd8-ad2e-9dca1eb861cc', N'as', CAST(N'2023-04-08T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Course] ([Id], [LecturerId], [Place], [DateTime], [CategoryId], [IsCanceled]) VALUES (1008, N'ac3e72b1-b329-4869-b2ff-50a036e7da97', N'STJNHSFJNF', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
INSERT [dbo].[Following] ([FollowerId], [FolloweeId]) VALUES (N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b', N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Following] ([FollowerId], [FolloweeId]) VALUES (N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b', N'dd17028f-4d88-4e29-a160-27adac5bef30')
INSERT [dbo].[Following] ([FollowerId], [FolloweeId]) VALUES (N'ac3e72b1-b329-4869-b2ff-50a036e7da97', N'ac3e72b1-b329-4869-b2ff-50a036e7da97')
INSERT [dbo].[Following] ([FollowerId], [FolloweeId]) VALUES (N'dd17028f-4d88-4e29-a160-27adac5bef30', N'38de9c17-ecc4-4e9e-a525-fbd4c8b9396b')
INSERT [dbo].[Following] ([FollowerId], [FolloweeId]) VALUES (N'dd17028f-4d88-4e29-a160-27adac5bef30', N'dd17028f-4d88-4e29-a160-27adac5bef30')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseId]    Script Date: 3/28/2023 8:43:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseId] ON [dbo].[Attendance]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Attendance_dbo.Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_dbo.Attendance_dbo.Course_CourseId]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_AspNetUsers] FOREIGN KEY([LecturerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_AspNetUsers]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
USE [master]
GO
ALTER DATABASE [bigschooll] SET  READ_WRITE 
GO
