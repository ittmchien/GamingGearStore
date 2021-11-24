USE [master]
GO
/****** Object:  Database [GamingGear]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE DATABASE [GamingGear]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GamingGear', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GamingGear.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GamingGear_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GamingGear_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GamingGear] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GamingGear].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GamingGear] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GamingGear] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GamingGear] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GamingGear] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GamingGear] SET ARITHABORT OFF 
GO
ALTER DATABASE [GamingGear] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GamingGear] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GamingGear] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GamingGear] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GamingGear] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GamingGear] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GamingGear] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GamingGear] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GamingGear] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GamingGear] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GamingGear] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GamingGear] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GamingGear] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GamingGear] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GamingGear] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GamingGear] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GamingGear] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GamingGear] SET RECOVERY FULL 
GO
ALTER DATABASE [GamingGear] SET  MULTI_USER 
GO
ALTER DATABASE [GamingGear] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GamingGear] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GamingGear] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GamingGear] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GamingGear] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GamingGear', N'ON'
GO
ALTER DATABASE [GamingGear] SET QUERY_STORE = OFF
GO
USE [GamingGear]
GO
/****** Object:  User [chien]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE USER [chien] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/12/2020 6:06:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/12/2020 6:06:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/12/2020 6:06:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/12/2020 6:06:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/12/2020 6:06:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/12/2020 6:06:29 PM ******/
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 09/12/2020 6:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](50) NULL,
	[MaSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
	[TenSP] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 09/12/2020 6:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [nvarchar](50) NOT NULL,
	[TinhTrang] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 09/12/2020 6:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[MaNSX] [nvarchar](50) NOT NULL,
	[TinhTrang] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/12/2020 6:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[MaLoaiSP] [nvarchar](50) NULL,
	[MaNSX] [nvarchar](50) NULL,
	[TenSP] [nvarchar](max) NULL,
	[MoTa] [ntext] NULL,
	[Hinh1] [nvarchar](max) NULL,
	[Hinh2] [nvarchar](max) NULL,
	[Hinh3] [nvarchar](max) NULL,
	[Hinh4] [nvarchar](max) NULL,
	[Gia] [int] NOT NULL,
	[SoLuongDaBan] [int] NOT NULL,
	[LuotXem] [int] NOT NULL,
	[TinhTrang] [nchar](10) NOT NULL,
	[ChiTiet] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202012080716376_InitialCreate', N'GamingGearStore.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB45EA245DB0E6823A2DF656D012ED0895284DA2B204C37ED91EF693F617762851375E74B115DB29060CB178F89DC3C38FE42179D8FFFEF977FCF6C1F78C7B1CC56E4026E6C168DF3430B103C725CB8999D0C58BD7E6DB37DF7F373E73FC07E3732E77C4E4A0268927E61DA5E1B165C5F61DF6513CF25D3B0AE260414776E05BC809ACC3FDFD5FAC83030B038409588631FE9810EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C613F33DF2C1B6F71845331A447894D5308D13CF4560CD0C7B0BD34084041451B0F5F8538C67340AC87216C207E4DD3E8618E416C88B316FC37129DEB539FB87AC3956593187B29398067E4FC08323EE1F4BACBE9297CDC27FE0C133F0347D64AD4EBD38312F1C9C7EFA1878E00051E1F1D48B98F0C4BC2C549CC4E115A6A3BCE228833C8F00EECF20FA3AAA22EE199DEBED157C3A1CEDB3FFF68C69E2D124C21382131A216FCFB849E69E6BFF861F6F83AF984C8E0EE68BA3D72F5F21E7E8D5CFF8E865B5A5D05690AB7D804F375110E2086CC38BA2FDA661D5EB5962C5A25AA54EE615E012D0CF342ED1C3074C96F40E06CDE16BD338771FB0937FE1E4FA445C184950894609FCBC4A3C0FCD3D5C945B8D3AD9FF1BB41EBE7C3588D62B74EF2ED3AE17F4C3C089605C7DC45E5A1ADFB96136BC6AFDFD858B9D4781CF7ED7F995957E99054964B3C6045A915B142D31AD5B37B64AF276A234831A9ED639EAEE539B592AD35B29CA1AB4CA48C8556C7A34E4F63EADDECE8C3B0943E8BC945ACC234D84532F58230161CF10E44A0A1D74A51081A67DCB33E2998F5C6F8029B183168848166EE4E3A295EF02202022BD6DBE41710C3382F32B8AEF1A4C873F07307D86ED2402A2CE28F2C327D7767317107C95F873C6FFCDE91AAC6B6EFF0CCE910D63ED8CB05A6BE37D08ECAF4142CF88738A28FE44ED1C90FDBC75FDEE0083987362DB388ECF81CCD899061070E78017841E1DF6866393D4B64392A9875C5F1D9308D3E9975CB48C4BD412526CA21153C5274DA67E08962EE9666A2EAA3735936835958BF535958175B3944BEA0D4D055AEDCCA4068BF8D21E1A3EE44B61773FE65B6FF1D6CD051537A6D1C87B4C7004D398738328C511297BA0CBBCB18D6021ED3EA6F4C9D7A654D367E42543AB5A6934A493C0F0A32185DDFDD1909A099FEF5D8745251D3642B930C0779257EFB1DAC79C60D9A68743AD999B56BE993940375C4EE238B0DD7414288EC0F80146DD7E88E18CF6D38CAC35E28908340C88EEB2250FBE40DB4C9154D7E4147B9862E3C4CE8E08A728B69123BB111AE4F4302C5F51158695272375E37E927402D371C42A21B6098A61A4BA84CAC3C225B61B22AFD54B42CD8E4B186B7BA1432C39C521264C61AB27BA28571F8430030A3D42A7B479686C5518D74C444DD4AAEBF3B610B6EC77E97C62239C6C899D35BCE4F1DB9310B3D9631B2067B34BBA18A03DD4DB0641F95EA52B01C48DCBAE1154D8316908CA43AA8D10B4EEB12D10B4EE926747D06C8BDAB5FF85FDEAAED1B3BE51DEFCB2DEE8AE2D70B3E68F1DA366167B421D0A357024D3F374CE0AF103556CCEC04EBE3F8B79A82B528481CF30AD1FD994F1AE320EB59A414412350196446B01E5D781129034A07A18979FE5355AC7A3881EB0F9B95B232C9FFB05D80A0764ECEAB56845507F792A92B3D3EEA36859C10689E49D360B151C0521C4C9ABDEF00E4ED19DCBCA8EE9120BF789862B0DE39DD1E0A096C855E3A4BC31837B29A766BB975401599F906C2D2F09E193C64B796306F712E768BB931441418FB0602D17D597F081065B7ED251AC3645D9D8CA32A6F887B1A549AD1A5FA23074C9B2926AC5BF18B32CCF6AFA62D63FF9C8CF302C3B56E42015D6169A6810A125164A4135587AEE46313D4514CD113BE7993ABE24A65C5B35D37FAEB2BA7CCA9D98AF03B934FB3BABA1B9C4AFADB77240C271CEA1953E8B6AD2BA0A0EA8AB1B2CFD0D7928529CDE4F032FF1893EC8D2D7CEEEF0AAF5B32F32C2D812EC978228C96352A85B777FA7CE9107C6801D55C431AB77961E42E7F23C0AAD3A5D1799EA51F283AA2A8AEEF06A6B9DA70B687A7798182FF6EFAF5684A7195F3C49A50AC03FF5C4A8E439486095B2EEA8F554942A66BDA43BA2906F5285148A7A5859CD2AA919592D58094FE351B544770D721E49155D2EED8EACC828A9422B8A57C056D82C96754755249D548115C5DDB1CB0C147122DDE1154CBB8B596B09CB36BBEBAD611A8CA799158759022B77FA55A0CAE79E58FCD65E02E3DF779251DA1DDF5A8CCACE39D6639406433F03D56EC4EB1350E335BE1EB376CD5D9BE49BAEF9F578FD78FBA4EC90367DA248A1BDD8FC099BBC31DF70B53FB2917660998869E46E8405FE31A6D81F3181D1EC0F6FEAB9984DE7B9C02522EE02C7344BED300FF70F0E85373ABBF35EC68A63C7536C58758F66EA7DB6812C2D728F22FB0E4572CEC41A6F4A4A50E938FA8238F86162FE95D63A4E4F36D85FE9E73DE322FE44DC3F1228B88D126CFC2DE7800E9363DFE1554761E8DFCFE2B94477975FFCFE25ABBA675C47309C8E8D7DC1D1AB747FFD11452F6BB2AA6B58B3F2D38AE73BDA6AEF1594A8C26859FD79C2DCA5833C4DC8ADFCC1470F3FF6354DF9FC602D44C51383A1F00671A1EE09C12A58DAE7030EFCA4E9F3817E8D553F2758C534ED530297F407131F12749F86F29A5B5C87149BA64D4C49A99F5B13B1D7CACADCF6DA24E56BAF35D0E59CEC1E7083E65DAF17A23CB37CE6C1964E45BAF260D8DBE4FD93E728EF4A5A7219B46F371B799309C80D974BDF54DEF10E64CA29327FB69F5DBC69AEE94E81773C45B35F0EF18E918D2FF3DBCF14DE34D97407C43B4EB65EF9C03BC6B56DAD9F5B665AE72574EBD9BD72A292E63647758ADC96BD9B1DB9C3F67F1E0009B288327B74A94E176B4A756D51588AE895EAF3D444C5D2C091F44A12CD6AFBB5952FF88D8DE532CD6A35D99D4DBAF9FCDFA89BCB34EBD6E44C6E23EF5899B5A8CA056F99C79A52A99E539E71AD252D69ED6D316BE3D5FC734A2B1EC429B5D1A3B95D7E3E59C483B864C8A1D3236B58BE2886B5B3F26F36C2FA1DBBCB1282FD0B8E04DBB555B390B9208B205FBC058B7211E184E61253E4C0927A125177816C0AC5EC003A7D359E1EEAB16B9039762EC87542C3844293B13FF76A075E2C0868D29FA646D76D1E5F87EC573C4413C04C971DDC5F937789EB3985DDE78A33210D048B2EF8712FEB4BCA8E7D978F05D255403A0271F71541D12DF6430FC0E26B3243F77815DB807E1FF012D98FE509A00EA4BD23EA6E1F9FBA6819213FE618657DF8091C76FC8737FF03278AD6EEBA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'48ac5814-e185-49aa-8e2e-d12ebe000bfd', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6aca535c-c408-4c03-a618-db1386f023c7', N'48ac5814-e185-49aa-8e2e-d12ebe000bfd')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6aca535c-c408-4c03-a618-db1386f023c7', N'gaminggear@gmail.com', 0, N'AMVyRq//xWV8QfSw5MgjZ4FUnVuqo7FsocLY2dbKx+D8lkUZy8i32QBtSgKPZN04WQ==', N'fc244b4a-bcd6-4008-b07d-e8487e8c1e0a', NULL, 0, 0, NULL, 0, 0, N'gaminggear@gmail.com')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TinhTrang]) VALUES (N'CPU', N'0         ')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TinhTrang]) VALUES (N'GPU', N'0         ')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TinhTrang]) VALUES (N'MAINBOARD', N'0         ')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TinhTrang]) VALUES (N'RAM', N'0         ')
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TinhTrang]) VALUES (N'SSD', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'AMD', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'ASROCK', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'ASUS', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'CORSAIR', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'GIGABYTE', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'GSKILL', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'INTEL', N'0         ')
GO
INSERT [dbo].[NSX] ([MaNSX], [TinhTrang]) VALUES (N'MSI', N'0         ')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASROCKX570PG4', N'MAINBOARD', N'ASROCK', N'Mainboard ASRock X570 Phantom Gaming 4', N'- Chuẩn mainboard: ATX- Socket: AM4 , Chipset: X570- Hỗ trợ RAM: DDR4 , tối đa 128GB- Cổng cắm lưu trữ: 1 x M.2 SATA; 1 x M.2 SATA/NVMe; 8 x SATA 3 6Gb/s- Cổng xuất hình: 1 x DisplayPort; 1 x HDMI', N'ASROCKX570PG41.png', N'ASROCKX570PG42.png', N'ASROCKX570PG43.png', N'ASROCKX570PG44.png', 4469000, 0, 0, N'0         ', N'<p>Giới thiệu mainboard ASRock X570 Phantom Gaming 4 X570 Phantom Gaming 4 l&agrave; một trong những chiếc mainboard AM4 cao cấp của ASRock, được thiết kế để tối ưu ri&ecirc;ng cho c&aacute;c bộ CPU Ryzen thế hệ thứ 3 vừa được AMD cho ra mắt. So với c&aacute;c d&ograve;ng mainboard AM4 trước đ&acirc;y của ASRock, X570 Phantom Gaming 4 được cải thiện rất nhiều về hệ thống tản nhiệt v&agrave; bộ cấp nguồn để đem lại hiệu năng tối ưu nhất cho kiến tr&uacute;c Zen 2 của AMD. Thiết kế Kh&aacute;c với c&aacute;c d&ograve;ng mainboard AM4 trước đ&acirc;y, kể cả l&agrave; X470, X570 Phantom Gaming 4 được thay đổi thiết kế kh&aacute; nhiều, về khả năng cấp nguồn, tản nhiệt cho tới t&iacute;nh năng của chipset. To&agrave;n bộ c&aacute;c linh kiện như mosfet, tụ, cuộn cảm đều l&agrave; loại tốt nhất v&agrave; được gia c&ocirc;ng một c&aacute;ch kĩ lưỡng nhằm đem lại hiệu năng ổn định v&agrave; tối ưu nhất cho c&aacute;c bộ CPU cao cấp. Kh&ocirc;ng những vậy, thiết kế mạch của X570 Phantom Gaming 4 cũng được l&agrave;m mới ho&agrave;n to&agrave;n, dựa tr&ecirc;n thiết kế mạch của c&aacute;c d&ograve;ng mainboard server để đem lại t&iacute;n hiệu kết nối ổn định hơn. C&aacute;c khe cắm PCIe cũng được gia c&ocirc;ng cứng c&aacute;p hơn, nhất l&agrave; với một chiếc mainboard c&oacute; thể hỗ trợ một l&uacute;c nhiều card m&agrave;n h&igrave;nh như X570 Phantom Gaming 4. X570 Phantom Gaming 4 Tản nhiệt Với đầy đủ c&aacute;c ch&acirc;n cắm 4pin (PWM) v&agrave; c&aacute;c cảm biến nhiệt độ ở khắp c&aacute;c khu vực quan trọng tr&ecirc;n mainboard, gi&uacute;p người sử dụng c&oacute; thể điều khiển hệ thống tản nhiệt một c&aacute;ch dễ d&agrave;ng v&agrave; ch&iacute;nh x&aacute;c, gi&uacute;p tối ưu hiệu năng hoạt động. X570 Phantom Gaming 4 Một điều đặc biệt tr&ecirc;n c&aacute;c mainboard sử dụng chipset X570 l&agrave; sự trở lại của quạt tản nhiệt cho chipset. Điều n&agrave;y cho ph&eacute;p chipset X570 c&oacute; thể hoạt động ở hiệu năng cao hơn, hỗ trợ tốt nhất cho khe cắm PCIe 4.0. Kết nối Sở hữu bộ chipset X570, đem lại cho X570 Phantom Gaming 4 khả năng kết nối xuất sắc. Với bộ xử l&yacute; mạng Intel I211AT vừa tối ưu cho trải nghiệm chơi game vừa gi&uacute;p tốc độ truyền tải dữ liệu.</p>
')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASROCKX570T', N'MAINBOARD', N'ASROCK', N'Mainboard ASRock X570 Taichi', NULL, N'ASROCKX570T1.png', N'ASROCKX570T2.png', N'ASROCKX570T3.png', N'ASROCKX570T4.png', 8599000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASROCKZ390PRO4', N'MAINBOARD', N'ASROCK', N'Mainboard ASRock Z390 Pro4', N'- Chuẩn mainboard: ATX
- Socket: LGA 1151-v2 , Chipset: Z390
- Hỗ trợ RAM: DDR4 , tối đa 64GB
- Cổng cắm lưu trữ: 2 x M.2 SATA/NVMe; 6 x SATA 3 6Gb/s; Hỗ trợ Intel Optane
- Cổng xuất hình: 1 x DVI-D; 1 x HDMI; 1 x VGA/D-sub', N'ASROCKZ390PRO41.png', N'ASROCKZ390PRO42.png', N'ASROCKZ390PRO43.png', N'ASROCKZ390PRO44.png', 3190000, 0, 0, N'0         ', N'Giới thiệu mainboard ASRock Z390 Pro4
Z390 Pro4 là một trong những mẫu mainboard sử dụng socket 1151-v2 mới nhất của ASRock, hỗ trợ các dòng CPU Intel cao cấp thế hệ 8 và 9 với khả năng hỗ trợ ép xung tốt và các tính năng cao cấp của bộ chipset Z390.

Nói thêm về bộ cấp nguồn, ASRock Z390 Pro4 được sử dụng hoàn toàn bằng linh kiện cao cấp, như cuộn cảm có khả năng chịu tải với cường độ tới 50A, dàn cấp nguồn lên tới 10 "phase" và thiết kế bo mạch tối ưu với một lớp sợi thủy tinh được đặt giữa các lớp mạch nhằm hạn chế tối đa khoảng không cho hơi ẩm lọt vào. Tất cả kết hợp lại, đem tới cho người sử dụng một chiếc mainboard có khả năng hỗ trợ ép xung ổn định.

ASRock Z390 Pro4

Hiệu năng
ASRock Z390 Pro4 sử dụng thiết kế đặc biệt với 4 lớp mạch riêng biệt giúp tối ưu hiệu năng của bộ nhớ, hỗ trợ khả năng ép xung lên tới 4300MHz.

ASRock Z390 Pro4

Về lưu trữ, Z390 Pro4 được trang bị sẵn 2 chân cắm M.2 với tốc độ tối đa lên tới 32Gb/s, sẵn sàng đem lại cho người sử dụng tốc độ truy xuất dữ liệu tối đa nhất.

ASRock Z390 Pro4 ASRock Z390 Pro4

Đồng thời, Z390 Pro4 còn hỗ trợ bộ nhớ Intel Optane, giúp tối ưu tốc độ truy xuất dữ liệu trên các ổ cứng sử dụng chuẩn SATA thông thường bằng cách di chuyển dữ liệu thường được sử dụng sang phân vùng của Intel Optane.

ASRock Z390 Pro4

Bộ xử lý mạng
ASRock Z390 Pro4 sử dụng bộ xử lý mạng I219V  của Intel có tốc độ lên tới 1Gb/s và độ trễ cực kì thấp, đem lại thời gian phản hồi nhanh nhất cho game thủ.

ASRock Z390 Pro4

Ngoài việc sử dụng bộ xử lý mạng tích hợp sẵn, người dùng còn có thể sử dụng bộ kết nối WiFi thông qua chuẩn cắm M.2, hỗ trợ kết nối WiFI 802.11ac.')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASROCKZ390SL', N'MAINBOARD', N'ASROCK', N'Mainboard ASRock Z390 Steel Legend', NULL, N'ASROCKZ390SL1.png', N'ASROCKZ390SL2.png', N'ASROCKZ390SL3.png', N'ASROCKZ390SL4.png', 3850000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSCVIIIF', N'MAINBOARD', N'ASUS', N'Mainboard ASUS Rog Crosshair VIII Formula', N'- Chuẩn mainboard: ATX
- Socket: AM4 , Chipset: X570
- Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
- Lưu trữ: 8 x SATA 3 6Gb/s, 2 x M.2 SATA/NVMe
- Cổng xuất hình: Không có', N'ASUSCVIIIF1.png', N'ASUSCVIIIF2.png', N'ASUSCVIIIF3.png', N'ASUSCVIIIF4.png', 21719000, 0, 0, N'0         ', N'Giới thiệu mainboard ASUS ROG Crosshair VIII Formular
Crosshair VIII Formular là một trong những chiếc mainboard AM4 cao cấp của ASUS, được thiết kế để tối ưu riêng cho các bộ CPU Ryzen thế hệ thứ 3 vừa được AMD cho ra mắt. So với các dòng mainboard AM4 trước đây của ASUS, Crosshair VIII Formular được cải thiện rất nhiều về hệ thống tản nhiệt và bộ cấp nguồn để đem lại hiệu năng tối ưu nhất cho kiến trúc Zen 2 của AMD.

Thiết kế
Khác với các dòng mainboard AM4 trước đây, kể cả là X470, Crosshair VIII Formular được thay đổi thiết kế khá nhiều, về khả năng cấp nguồn, tản nhiệt cho tới tính năng của chipset. Toàn bộ các linh kiện như mosfet, tụ, cuộn cảm đều là loại tốt nhất và được gia công một cách kĩ lưỡng nhằm đem lại hiệu năng ổn định và tối ưu nhất cho các bộ CPU cao cấp.

ASUS Rog Crosshair VIII Formular

Không những vậy, thiết kế mạch của Crosshair VIII Formular cũng được làm mới hoàn toàn, dựa trên thiết kế mạch của các dòng mainboard server để đem lại tín hiệu kết nối ổn định hơn. Các khe cắm PCIe cũng được gia công cứng cáp hơn, nhất là với một chiếc mainboard có thể hỗ trợ một lúc nhiều card màn hình như Crosshair VIII Formular.

Tản nhiệt
Với đầy đủ các chân cắm 4pin (PWM) và các cảm biến nhiệt độ ở khắp các khu vực quan trọng trên mainboard, giúp người sử dụng có thể điều khiển hệ thống tản nhiệt một cách dễ dàng và chính xác, giúp tối ưu hiệu năng hoạt động.

ASUS Rog Crosshair VIII Formular

Một điều đặc biệt trên các mainboard sử dụng chipset X570 là sự trở lại của quạt tản nhiệt cho chipset. Điều này cho phép chipset X570 có thể hoạt động ở hiệu năng cao hơn, hỗ trợ tốt nhất cho khe cắm PCIe 4.0.

Kết nối
Sở hữu bộ chipset X570, đem lại cho Crosshair VIII Formular khả năng kết nối xuất sắc. Với 2 bộ xử lý mạng Intel I211AT và AQC111C vừa tối ưu cho trải nghiệm chơi game vừa giúp tốc độ truyền tải dữ liệu. Đối với kết nối không dây, Crosshair VIII Formular sử dụng chuẩn WiFi 802.11ax và Bluetooth 5.0, đem lại sự ổn định tối đa.')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSCVIIIH', N'MAINBOARD', N'ASUS', N'Mainboard ASUS ROG Crosshair VIII Hero (Wi-Fi)', N'- Chuẩn mainboard: ATX
- Socket: AM4 , Chipset: X570
- Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
- Lưu trữ: 8 x SATA 3 6Gb/s, 2 x M.2 SATA/NVMe
- Cổng xuất hình: Không có', N'ASUSCVIIIH1.png', N'ASUSCVIIIH2.png', N'ASUSCVIIIH3.png', N'ASUSCVIIIH4.png', 11959000, 0, 0, N'0         ', N'Giới thiệu bo mạch chủ ASUS ROG Crosshair VIII Hero
Với sự hỗ trợ cho CPU AMD Ryzen™ thế hệ thứ 3, Realtek ® 2.5 Gbps LAN và PCIe 4.0 trên bo mạch cùng với thiết kế kim loại được nâng cấp và được trang bị các tính năng ROG nổi tiếng, ASUS ROG Crosshair VIII Hero là nền tảng hoàn hảo cho hệ thống máy tính AMD Ryzen của bạn.

ASUS-ROG-Crosshair-VIII-Hero

Thiết kế
ASUS ROG Crosshair VIII Hero sở hữu một thiết kế với bố cục giúp tối ưu năng lượng và tất cả các đầu làm mát bạn cần để xử lý sức mạnh phi thường của bộ xử lý AMD Ryzen mới nhất mà không cần điều chỉnh hiệu suất nhiệt.

ASUS-ROG-Crosshair-VIII-Hero-1

Hiệu suất
ASUS ROG Crosshair VIII Hero cung cấp cho bạn các công cụ mạnh mẽ giúp tối ưu hóa hệ thống của bạn nhanh chóng và dễ dàng. Đối với những người thích kiểm soát chi tiết, BIOS UEFI có vô số tùy chọn nâng cao được sắp xếp thành các danh mục trực quan cung cấp khả năng điều chỉnh mọi khía cạnh của hệ thống của bạn.

ASUS-ROG-Crosshair-VIII-Hero-2

Kết nối
ASUS ROG Crosshair VIII Hero cung cấp kết nối tiên tiến để đảm bảo trải nghiệm chơi game liền mạch. Với mạng cực nhanh mới nhất, bao gồm Ethernet kép với một cổng 2.5G, ROG Crosshair VIII Hero loại bỏ tất cả các tình trang giật lag để chơi trực tuyến và LAN, giảm thiểu độ trễ và cung cấp trải nghiệm mượt mà hơn. Ngoài ra, M.2 hỗ trợ công nghệ AMD StoreMI để tối đa hóa tốc độ ổ SSD của bạn để có thời gian tải nhanh hơn và âm thanh trên bo mạch tối cao cung cấp âm thanh tuyệt vời, trong khi tiết kiệm khe cắm PCIe.

ASUS-ROG-Crosshair-VIII-Hero-3

Tùy biến
ASUS ROG Crosshair VIII Hero cung cấp một loạt phần mềm trực quan cho phép dễ dàng kiểm soát phần cứng tối ưu việc chơi game của bạn và đảm bảo khả năng tương thích thành phần liền mạch. Từ ánh sáng RGB, kết nối mạng và âm thanh đến tối ưu hóa lưu trữ và hơn thế nữa, ROG cung cấp cho bạn sức mạnh để cá nhân hóa hệ thống của bạn theo cách bạn muốn.')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSMXIH', N'MAINBOARD', N'ASUS', N'Mainboard ASUS ROG MAXIMUS XI Hero (WI-FI)', N'- Chuẩn mainboard: ATX
- Socket: 1200 , Chipset: Z490
- Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
- Lưu trữ: 1 x M.2 NVMe, Hỗ trợ Intel Optane, 2 x M.2 SATA/NVMe, 6 x SATA 3 6Gb/s
- Cổng xuất hình: 1 x HDMI', N'ASUSMXIH1.png', N'ASUSMXIH2.png', N'ASUSMXIH3.png', N'ASUSMXIH4.png', 8231000, 0, 0, N'0         ', N'Phần cứng cải tiến
Bo mạch chủ ASUS ROG MAXIMUS XII HERO (WI-FI) với khả năng làm mát toàn diện và tính năng cấp điện cải tiến nhằm cung cấp năng lượng cho các vi xử lý đa nhân cùng tính năng hỗ trợ lưu trữ và bộ nhớ nhanh hơn, sẽ mang đến cho bạn tất cả mọi thứ cần thiết để phát huy tối đa sức mạnh của các linh kiện trong giàn máy của bạn nhằm đạt được hiệu năng chơi game tốt nhất.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)
Hiệu năng chơi game
ASUS ROG MAXIMUS XII HERO (WI-FI) được trang bị các tính năng tốt nhất để tăng cường trải nghiệm chơi game của game thủ như khả năng tản nhiệt, khả năng lưu trữ, khả năng kết nối, chất lượng âm thanh. Việc bạn đăng nhập vào game nhanh hơn, độ trễ thấp hơn, âm thanh rõ nét hơn sẽ giúp bạn dành chiến thắng dễ dàng hơn.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)-1
Thiết kế tùy biến
Với thiết kế bao gồm hàng loạt đường nét hoa văn hiện đại đi kèm với khả năng tùy biến cao, ASUS ROG MAXIMUS XII HERO (WI-FI) giúp bạn lắp ráp và cá nhân hóa giàn máy chơi game cực kỳ dễ dàng nhờ danh sách kiểm chuẩn toàn diện và hệ sinh thái các linh kiện đa dạng nhất trong ngành.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)-2
Điều chỉnh hiệu suất
Bo mạch chủ ASUS ROG MAXIMUS XII HERO (WI-FI) trang bị các trình điều khiển firmware và tiện ích phần mềm được thiết kế dành cho tất cả các mức độ kỹ năng, thực hiện cài đặt, hiệu chỉnh và bảo trì hệ thống đơn giản. Với các tùy chọn từ ép xung, tản nhiệt cho đến quản lý mạng và các đặc điểm âm thanh, bạn có thể cấu hình giàn máy chơi game theo cách mà bạn muốn.')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSMXIIH', N'MAINBOARD', N'ASUS', N'Mainboard ASUS Z490 ROG MAXIMUS XII HERO (WI-FI)', N'- Chuẩn mainboard: ATX
- Socket: 1200 , Chipset: Z490
- Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
- Lưu trữ: 1 x M.2 NVMe, Hỗ trợ Intel Optane, 2 x M.2 SATA/NVMe, 6 x SATA 3 6Gb/s
- Cổng xuất hình: 1 x HDMI', N'ASUSMXIIH1.png', N'ASUSMXIIH2.png', N'ASUSMXIIH3.png', N'ASUSMXIIH4.png', 10580000, 0, 0, N'0         ', N'Phần cứng cải tiến
Bo mạch chủ ASUS ROG MAXIMUS XII HERO (WI-FI) với khả năng làm mát toàn diện và tính năng cấp điện cải tiến nhằm cung cấp năng lượng cho các vi xử lý đa nhân cùng tính năng hỗ trợ lưu trữ và bộ nhớ nhanh hơn, sẽ mang đến cho bạn tất cả mọi thứ cần thiết để phát huy tối đa sức mạnh của các linh kiện trong giàn máy của bạn nhằm đạt được hiệu năng chơi game tốt nhất.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)
Hiệu năng chơi game
ASUS ROG MAXIMUS XII HERO (WI-FI) được trang bị các tính năng tốt nhất để tăng cường trải nghiệm chơi game của game thủ như khả năng tản nhiệt, khả năng lưu trữ, khả năng kết nối, chất lượng âm thanh. Việc bạn đăng nhập vào game nhanh hơn, độ trễ thấp hơn, âm thanh rõ nét hơn sẽ giúp bạn dành chiến thắng dễ dàng hơn.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)-1
Thiết kế tùy biến
Với thiết kế bao gồm hàng loạt đường nét hoa văn hiện đại đi kèm với khả năng tùy biến cao, ASUS ROG MAXIMUS XII HERO (WI-FI) giúp bạn lắp ráp và cá nhân hóa giàn máy chơi game cực kỳ dễ dàng nhờ danh sách kiểm chuẩn toàn diện và hệ sinh thái các linh kiện đa dạng nhất trong ngành.

ASUS-ROG-MAXIMUS-XII-HERO-(WI-FI)-2
Điều chỉnh hiệu suất
Bo mạch chủ ASUS ROG MAXIMUS XII HERO (WI-FI) trang bị các trình điều khiển firmware và tiện ích phần mềm được thiết kế dành cho tất cả các mức độ kỹ năng, thực hiện cài đặt, hiệu chỉnh và bảo trì hệ thống đơn giản. Với các tùy chọn từ ép xung, tản nhiệt cho đến quản lý mạng và các đặc điểm âm thanh, bạn có thể cấu hình giàn máy chơi game theo cách mà bạn muốn.')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSRTX2080S8GB', N'GPU', N'ASUS', N'ASUS GeForce RTX 2080 Super 8GB GDDR6 ROG Strix Advanced', NULL, N'ASUSRTX2080S8GB1.png', N'ASUSRTX2080S8GB2.png', N'ASUSRTX2080S8GB3.png', N'ASUSRTX2080S8GB4.png', 24990000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSRTX2080SOC8GB', N'GPU', N'ASUS', N'ASUS Rog Strix GeForce RTX 2080 Super OC 8GB GDDR6', NULL, N'ASUSRTX2080SOC8GB1.png', N'ASUSRTX2080SOC8GB2.png', N'ASUSRTX2080SOC8GB3.png', N'ASUSRTX2080SOC8GB4.png', 26470000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSRTX2080TI11GB', N'GPU', N'ASUS', N'ASUS GeForce RTX 2080Ti 11GB GDDR6 ROG Strix OC', NULL, N'ASUSRTX2080TI11GB1.png', N'ASUSRTX2080TI11GB2.png', N'ASUSRTX2080TI11GB3.png', N'ASUSRTX2080TI11GB4.png', 43300000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSX570FG', N'MAINBOARD', N'ASUS', N'Mainboard ASUS ROG Strix X570-F Gaming', NULL, N'ASUSX570FG1.png', N'ASUSX570FG2.png', N'ASUSX570FG3.png', N'ASUSX570FG4.png', 7990000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSX570PCSM', N'MAINBOARD', N'ASUS', N'Mainboard ASUS PRIME X570-P/CSM', NULL, N'ASUSX570PCSM1.png', N'ASUSX570PCSM2.png', N'ASUSX570PCSM3.png', N'ASUSX570PCSM4.png', 6039000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSZ390PG', N'MAINBOARD', N'ASUS', N'Mainboard ASUS TUF Z390-PLUS GAMING', NULL, N'ASUSZ390PG1.png', N'ASUSZ390PG2.png', N'ASUSZ390PG3.png', N'ASUSZ390PG4.png', 4350000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'ASUSZ490AG', N'MAINBOARD', N'ASUS', N'Mainboard ASUS Rog Strix Z490-A Gaming', NULL, N'ASUSZ490AG1.png', N'ASUSZ490AG2.png', N'ASUSZ490AG3.png', N'ASUSZ490AG4.png', 6730000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'CORSAIRVLPX2X8GB2400', N'RAM', N'CORSAIR', N'RAM CORSAIR Vengeance LPX (2x8GB) DDR4 2400MHz', NULL, N'CORSAIRVLPX2X8GB24001.png', N'CORSAIRVLPX2X8GB24002.png', N'CORSAIRVLPX2X8GB24003.png', N'CORSAIRVLPX2X8GB24004.png', 3690000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'CORSAIRVLPX2X8GB2666', N'RAM', N'CORSAIR', N'RAM CORSAIR Vengeance LPX (2x8GB) DDR4 2666MHz', NULL, N'CORSAIRVLPX2X8GB26661.png', N'CORSAIRVLPX2X8GB26662.png', N'CORSAIRVLPX2X8GB26663.png', N'CORSAIRVLPX2X8GB26664.png', 2390000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'CORSAIRVRGBPRO2X16GB3000', N'RAM', N'CORSAIR', N'RAM CORSAIR Vengeance RGB Pro (2x16GB) DDR4 3000MHz', NULL, N'CORSAIRVRGBPRO2X16GB30001.png', N'CORSAIRVRGBPRO2X16GB30002.png', N'CORSAIRVRGBPRO2X16GB30003.png', N'CORSAIRVRGBPRO2X16GB30004.png', 4490000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'CORSAIRVRGBPRO2X8GB3000', N'RAM', N'CORSAIR', N'RAM CORSAIR Vengeance RGB Pro (2x8GB) DDR4 3000MHz', NULL, N'CORSAIRVRGBPRO2X8GB30001.png', N'CORSAIRVRGBPRO2X8GB30002.png', N'CORSAIRVRGBPRO2X8GB30003.png', N'CORSAIRVRGBPRO2X8GB30004.png', 2590000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGARTX20708GB', N'GPU', N'GIGABYTE', N'GIGABYTE GeForce RTX 2070 8GB GDDR6 WindForce', NULL, N'GIGARTX20708GB1.png', N'GIGARTX20708GB2.png', N'GIGARTX20708GB3.png', N'GIGARTX20708GB4.png', 14990000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGARTX2080TI11GB', N'GPU', N'GIGABYTE', N'GIGABYTE GeForce RTX 2080Ti 11GB GDDR6 AORUS Xtreme', NULL, N'GIGARTX2080TI11GB1.png', N'GIGARTX2080TI11GB2.png', N'GIGARTX2080TI11GB3.png', N'GIGARTX2080TI11GB4.png', 37950000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAX299UD4PRO', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE X299 UD4 Pro', NULL, N'GIGAX299UD4PRO1.png', N'GIGAX299UD4PRO2.png', N'GIGAX299UD4PRO3.png', N'GIGAX299UD4PRO4.png', 5990000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAX299XAM', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE X299X Aorus Master', NULL, N'GIGAX299XAM1.png', N'GIGAX299XAM2.png', N'GIGAX299XAM3.png', N'GIGAX299XAM4.png', 11450000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAX570APRO', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE X570 AORUS PRO', NULL, N'GIGAX570APRO1.png', N'GIGAX570APRO2.png', N'GIGAX570APRO3.png', N'GIGAX570APRO4.png', 6900000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAX570AU', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE X570 AORUS ULTRA', NULL, N'GIGAX570AU1.png', N'GIGAX570AU2.png', N'GIGAX570AU3.png', N'GIGAX570AU4.png', 8690000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ370HD3', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z370-HD3', NULL, N'GIGAZ370HD31.png', N'GIGAZ370HD32.png', N'GIGAZ370HD33.png', N'GIGAZ370HD34.png', 3690000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ370MD3H', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z370M-D3H', NULL, N'GIGAZ370MD3H1.png', N'GIGAZ370MD3H2.png', N'GIGAZ370MD3H3.png', N'GIGAZ370MD3H4.png', 3390000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ390AE', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z390 AORUS ELITE', NULL, N'GIGAZ390AE1.png', N'GIGAZ390AE2.png', N'GIGAZ390AE3.png', N'GIGAZ390AE4.png', 5075000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ390APW', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z390 AORUS PRO WIFI', NULL, N'GIGAZ390APW1.png', N'GIGAZ390APW2.png', N'GIGAZ390APW3.png', N'GIGAZ390APW4.png', 5600000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ390GX', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z390 GAMING', NULL, N'GIGAZ390GX1.png', N'GIGAZ390GX2.png', N'GIGAZ390GX3.png', N'GIGAZ390GX4.png', 4175000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GIGAZ390UD', N'MAINBOARD', N'GIGABYTE', N'Mainboard GIGABYTE Z390 UD', NULL, N'GIGAZ390UD1.png', N'GIGAZ390UD2.png', N'GIGAZ390UD3.png', N'GIGAZ390UD4.png', 3450000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLFX2X8GB2400', N'RAM', N'GSKILL', N'RAM G.SKILL Flare X (2x8GB) DDR4 2400MHz', NULL, N'GSKILLFX2X8GB24001.png', N'GSKILLFX2X8GB24002.png', N'GSKILLFX2X8GB24003.png', N'GSKILLFX2X8GB24004.png', 3490000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLRJV2X8GB2400', N'RAM', N'GSKILL', N'RAM G.SKILL RipJaws V (2x8GB) DDR4 2400MHz', NULL, N'GSKILLRJV2X8GB24001.png', N'GSKILLRJV2X8GB24002.png', N'GSKILLRJV2X8GB24003.png', N'GSKILLRJV2X8GB24004.png', 3490000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZ2X16GB3200', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z (2x16GB) DDR4 3200MHz', NULL, N'GSKILLTZ2X16GB32001.png', N'GSKILLTZ2X16GB32002.png', N'GSKILLTZ2X16GB32003.png', N'GSKILLTZ2X16GB32004.png', 4390000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZ2X8GB3200', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z (2x8GB) DDR4 3200MHz', NULL, N'GSKILLTZ2X8GB32001.png', N'GSKILLTZ2X8GB32002.png', N'GSKILLTZ2X8GB32003.png', N'GSKILLTZ2X8GB32004.png', 2590000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZRGB2X16GB3000', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z RGB (2x16GB) DDR4 3000MHz', NULL, N'GSKILLTZRGB2X16GB30001.png', N'GSKILLTZRGB2X16GB30002.png', N'GSKILLTZRGB2X16GB30003.png', N'GSKILLTZRGB2X16GB30004.png', 4690000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZRGB2X8GB3000', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z RGB (2x8GB) DDR4 3000MHz', NULL, N'GSKILLTZRGB2X8GB30001.png', N'GSKILLTZRGB2X8GB30002.png', N'GSKILLTZRGB2X8GB30003.png', N'GSKILLTZRGB2X8GB30004.png', 3290000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZRGRGB2X8GB3000', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z Royal Gold RGB (2x8GB) DDR4 3000MHz', NULL, N'GSKILLTZRGRGB2X8GB30001.png', N'GSKILLTZRGRGB2X8GB30002.png', N'GSKILLTZRGRGB2X8GB30003.png', N'GSKILLTZRGRGB2X8GB30004.png', 3890000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZRRGB2X8GB3000', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z Royal RGB (2x8GB) DDR4 3000MHz', NULL, N'GSKILLTZRRGB2X8GB30001.png', N'GSKILLTZRRGB2X8GB30002.png', N'GSKILLTZRRGB2X8GB30003.png', N'GSKILLTZRRGB2X8GB30004.png', 3790000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'GSKILLTZRRGB2X8GB3200', N'RAM', N'GSKILL', N'RAM G.SKILL Trident Z Royal RGB (2x8GB) DDR4 3200MHz', NULL, N'GSKILLTZRRGB2X8GB32001.png', N'GSKILLTZRRGB2X8GB32002.png', N'GSKILLTZRRGB2X8GB32003.png', N'GSKILLTZRRGB2X8GB32004.png', 4590000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I510400', N'CPU', N'INTEL', N'CPU INTEL Core i5-10400', NULL, N'I5104001.png', N'I5104002.png', N'I5104003.png', N'I5104004.png', 4990000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I510500', N'CPU', N'INTEL', N'CPU INTEL Core i5-10500', NULL, N'I5105001.png', N'I5105002.png', N'I5105003.png', N'I5105004.png', 5690000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I510600', N'CPU', N'INTEL', N'CPU INTEL Core i5-10600', NULL, N'I5106001.png', N'I5106002.png', N'I5106003.png', N'I5106004.png', 6290000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I710700', N'CPU', N'INTEL', N'CPU INTEL Core i7-10700', NULL, N'I7107001.png', N'I7107002.png', N'I7107003.png', N'I7107004.png', 9390000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I710700K', N'CPU', N'INTEL', N'CPU INTEL Core i7-10700K', NULL, N'I710700K1.png', N'I710700K2.png', N'I710700K3.png', N'I710700K4.png', 10890000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'I910900K', N'CPU', N'INTEL', N'CPU INTEL Core i9-10900K', NULL, N'I910900K1.png', N'I910900K2.png', N'I910900K3.png', N'I910900K4.png', 14600000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'MSIRTX2070S8GB', N'GPU', N'MSI', N'MSI GeForce RTX 2070 Super 8GB GDDR6 GAMING X TRIO', NULL, N'MSIRTX2070S8GB1.png', N'MSIRTX2070S8GB2.png', N'MSIRTX2070S8GB3.png', N'MSIRTX2070S8GB4.png', 16780000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'MSIRTX20808GB', N'GPU', N'MSI', N'MSI GeForce RTX 2080 8GB GDDR6 Gaming X TRIO', NULL, N'MSIRTX20808GB1.png', N'MSIRTX20808GB2.png', N'MSIRTX20808GB3.png', N'MSIRTX20808GB4.png', 25800000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'MSIX570C', N'MAINBOARD', N'MSI', N'Mainboard MSI Prestige X570 Creation', NULL, N'MSIX570C1.png', N'MSIX570C2.png', N'MSIX570C3.png', N'MSIX570C4.png', 14750000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'MSIX570G', N'MAINBOARD', N'MSI', N'Mainboard MSI MEG X570 Godlike', NULL, N'MSIX570G1.png', N'MSIX570G2.png', N'MSIX570G3.png', N'MSIX570G4.png', 21999000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'MSIX570GEDGE', N'MAINBOARD', N'MSI', N'Mainboard MSI MPG X570 Gaming EDGE Wi-fi', NULL, N'MSIX570GEDGE1.png', N'MSIX570GEDGE2.png', N'MSIX570GEDGE3.png', N'MSIX570GEDGE4.png', 6650000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R53400G', N'CPU', N'AMD', N'CPU AMD Ryzen 5 3400G', NULL, N'R53400G1.png', N'R53400G2.png', N'R53400G3.png', N'R53400G4.png', 3900000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R53500', N'CPU', N'AMD', N'CPU AMD Ryzen 5 3500', NULL, N'R535001.png', N'R535002.png', N'R535003.png', N'R535004.png', 3090000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R53500X', N'CPU', N'AMD', N'CPU AMD Ryzen 5 3500X', NULL, N'R53500X1.png', N'R53500X2.png', N'R53500X3.png', N'R53500X4.png', 3790000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R53600', N'CPU', N'AMD', N'CPU AMD Ryzen 5 3600', NULL, N'R536001.png', N'R536002.png', N'R536003.png', N'R536004.png', 5000000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R53600X', N'CPU', N'AMD', N'CPU AMD Ryzen 5 3600X', NULL, N'R53600X1.png', N'R53600X2.png', N'R53600X3.png', N'R53600X4.png', 5600000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R73700X', N'CPU', N'AMD', N'CPU AMD Ryzen 7 3700X', NULL, N'R73700X1.png', N'R73700X2.png', N'R73700X3.png', N'R73700X4.png', 8300000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R73800X', N'CPU', N'AMD', N'CPU AMD Ryzen 7 3800X', NULL, N'R73800X1.png', N'R73800X2.png', N'R73800X3.png', N'R73800X4.png', 9300000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R93900X', N'CPU', N'AMD', N'CPU AMD Ryzen 9 3900X', NULL, N'R93900X1.png', N'R93900X2.png', N'R93900X3.png', N'R93900X4.png', 12400000, 0, 0, N'0         ', NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotXem], [TinhTrang], [ChiTiet]) VALUES (N'R93950X', N'CPU', N'AMD', N'CPU AMD Ryzen 9 3950X', NULL, N'R93950X1.png', N'R93950X2.png', N'R93950X3.png', N'R93950X4.png', 19600000, 0, 0, N'0         ', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09/12/2020 6:06:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoaiSP] ADD  CONSTRAINT [DF_LoaiSP_MaLoaiSP]  DEFAULT ((0)) FOR [MaLoaiSP]
GO
ALTER TABLE [dbo].[NSX] ADD  CONSTRAINT [DF_NSX_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [TinhTrang]
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
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [fk_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [fk_MaSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_MaLoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_MaLoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_MaNSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NSX] ([MaNSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_MaNSX]
GO
USE [master]
GO
ALTER DATABASE [GamingGear] SET  READ_WRITE 
GO
