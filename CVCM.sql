USE [master]
GO
/****** Object:  Database [tbcvcm]    Script Date: 8/10/2021 9:32:37 AM ******/
CREATE DATABASE [tbcvcm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tbcvcm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS03\MSSQL\DATA\sql\tbcvcm.mdf' , SIZE = 860160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tbcvcm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS03\MSSQL\DATA\sql\tbcvcm_log.ldf' , SIZE = 2695168KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tbcvcm] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tbcvcm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tbcvcm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tbcvcm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tbcvcm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tbcvcm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tbcvcm] SET ARITHABORT OFF 
GO
ALTER DATABASE [tbcvcm] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [tbcvcm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tbcvcm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tbcvcm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tbcvcm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tbcvcm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tbcvcm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tbcvcm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tbcvcm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tbcvcm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tbcvcm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tbcvcm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tbcvcm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tbcvcm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tbcvcm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tbcvcm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tbcvcm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tbcvcm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tbcvcm] SET  MULTI_USER 
GO
ALTER DATABASE [tbcvcm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tbcvcm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tbcvcm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tbcvcm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tbcvcm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tbcvcm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [tbcvcm] SET QUERY_STORE = OFF
GO
USE [tbcvcm]
GO
/****** Object:  Table [dbo].[tbCenter]    Script Date: 8/10/2021 9:32:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCenter](
	[CenterId] [bigint] IDENTITY(45500,1) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Phone] [numeric](10, 0) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[InchargeName] [varchar](50) NOT NULL,
	[Timings] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbCenter_1] PRIMARY KEY CLUSTERED 
(
	[CenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCitizen]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCitizen](
	[CitizenId] [numeric](12, 0) IDENTITY(85800,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[DateOfRegistration] [date] NOT NULL,
	[AadharNo] [numeric](12, 0) NOT NULL,
 CONSTRAINT [PK_tbCitizen] PRIMARY KEY CLUSTERED 
(
	[CitizenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDosage]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDosage](
	[DosageId] [bigint] IDENTITY(98600,1) NOT NULL,
	[CenterId] [bigint] NOT NULL,
	[CitizenId] [numeric](12, 0) NOT NULL,
	[MedicineId] [bigint] NOT NULL,
	[DosageNo] [varchar](50) NOT NULL,
	[DateOfVaccination1] [varchar](50) NULL,
	[Vaccination1givenby] [varchar](50) NULL,
	[Time1] [varchar](50) NULL,
	[NextDate] [varchar](50) NULL,
	[DateOfVaccination2] [varchar](50) NULL,
	[Time2] [varchar](50) NULL,
	[vaccination2givenby] [varchar](50) NULL,
 CONSTRAINT [PK_tbDosage] PRIMARY KEY CLUSTERED 
(
	[DosageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbMedicine]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbMedicine](
	[MedicineId] [bigint] IDENTITY(56200,1) NOT NULL,
	[MedicineName] [varchar](50) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[DateOfIssue] [date] NOT NULL,
	[DateOfExpiry] [date] NOT NULL,
	[Quantity] [real] NOT NULL,
 CONSTRAINT [PK_tbMedicine] PRIMARY KEY CLUSTERED 
(
	[MedicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.tbCitizen.Name, dbo.tbCitizen.FName, dbo.tbCitizen.Age, dbo.tbCitizen.Gender, dbo.tbDosage.DateOfVaccination1, dbo.tbDosage.Vaccination1givenby, dbo.tbDosage.Time1, dbo.tbMedicine.MedicineName, 
                         dbo.tbCenter.Address, dbo.tbDosage.DateOfVaccination2, dbo.tbDosage.Time2, dbo.tbDosage.vaccination2givenby
FROM            dbo.tbCenter INNER JOIN
                         dbo.tbDosage ON dbo.tbCenter.CenterId = dbo.tbDosage.CenterId INNER JOIN
                         dbo.tbCitizen ON dbo.tbDosage.CitizenId = dbo.tbCitizen.CitizenId INNER JOIN
                         dbo.tbMedicine ON dbo.tbDosage.MedicineId = dbo.tbMedicine.MedicineId
GO
/****** Object:  Table [dbo].[tbCertificate]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCertificate](
	[CertificateId] [bigint] IDENTITY(16201,1) NOT NULL,
	[CitizenId] [numeric](12, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Phone] [numeric](10, 0) NOT NULL,
	[AadharNo] [numeric](12, 0) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[DosageNo] [varchar](50) NOT NULL,
	[MedicineName] [varchar](50) NOT NULL,
	[IssueDate] [date] NOT NULL,
	[CertificateNo] [bigint] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbCertificate] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT        dbo.tbCertificate.CertificateId, dbo.tbCertificate.CertificateNo, dbo.tbCitizen.Name, dbo.tbCitizen.FName, dbo.tbCitizen.Age, dbo.tbCitizen.Gender, dbo.tbCitizen.Phone, dbo.tbCitizen.Address, dbo.tbCitizen.AadharNo, 
                         dbo.tbMedicine.MedicineName, dbo.tbDosage.DosageNo, dbo.tbCenter.Address AS Expr1
FROM            dbo.tbCitizen INNER JOIN
                         dbo.tbCertificate ON dbo.tbCitizen.CitizenId = dbo.tbCertificate.CitizenId INNER JOIN
                         dbo.tbDosage ON dbo.tbCitizen.CitizenId = dbo.tbDosage.CitizenId INNER JOIN
                         dbo.tbCenter ON dbo.tbDosage.CenterId = dbo.tbCenter.CenterId INNER JOIN
                         dbo.tbMedicine ON dbo.tbDosage.MedicineId = dbo.tbMedicine.MedicineId
GO
/****** Object:  Table [dbo].[tbFeedback]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFeedback](
	[FeedbackId] [bigint] IDENTITY(8518101,1) NOT NULL,
	[CitizenId] [numeric](12, 0) NOT NULL,
	[DOF] [date] NOT NULL,
	[Remarks] [varchar](50) NOT NULL,
	[ActionDetails] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbFeedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLogin]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLogin](
	[UserName] [varchar](10) NOT NULL,
	[Password] [varchar](16) NOT NULL,
 CONSTRAINT [PK_tblogin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbCertificate]  WITH CHECK ADD  CONSTRAINT [FK_tbCertificate_tbCertificate] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbCertificate] CHECK CONSTRAINT [FK_tbCertificate_tbCertificate]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCenter] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCenter]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCenter1] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCenter1]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCenter2] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCenter2]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCenter3] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCenter3]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCenter4] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCenter4]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCitizen] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCitizen]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCitizen1] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCitizen1]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCitizen2] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCitizen2]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbCitizen3] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbCitizen3]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbMedicine] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbMedicine] ([MedicineId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbMedicine]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbMedicine1] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbMedicine] ([MedicineId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbMedicine1]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbMedicine2] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbMedicine] ([MedicineId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbMedicine2]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbMedicine3] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbMedicine] ([MedicineId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbMedicine3]
GO
ALTER TABLE [dbo].[tbDosage]  WITH CHECK ADD  CONSTRAINT [FK_tbDosage_tbMedicine4] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbMedicine] ([MedicineId])
GO
ALTER TABLE [dbo].[tbDosage] CHECK CONSTRAINT [FK_tbDosage_tbMedicine4]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen1] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen1]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen2] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen2]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen3] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen3]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen4] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen4]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen5] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen5]
GO
ALTER TABLE [dbo].[tbFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tbFeedback_tbCitizen6] FOREIGN KEY([CitizenId])
REFERENCES [dbo].[tbCitizen] ([CitizenId])
GO
ALTER TABLE [dbo].[tbFeedback] CHECK CONSTRAINT [FK_tbFeedback_tbCitizen6]
GO
/****** Object:  StoredProcedure [dbo].[prcinsertcenter]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertcenter]
@City varchar(50),
@Address varchar(50),
@Phone numeric(10,0),
@Email varchar(50),
@InchargeName varchar(50),
@Timings varchar(50)
as
begin
insert into tbCenter values(
@City,
@Address ,
@Phone ,
@Email ,
@InchargeName ,
@Timings 
)
end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertcertificate]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertcertificate]
@AadharNo numeric(12,0),
@DosageNo varchar(50),
@MedicineName varchar(50),
@IssueDate date,
@CertificateNo bigint,
@Status varchar(50)
as
 begin 
 declare @CitizenId numeric(12,0),
 @Name varchar(50),@FName varchar(50),
 @Age int,
 @Gender varchar(50),
 @Phone numeric(10,0),
 @Address varchar(50)
 select @CitizenId =CitizenId,
 @Name=Name, 
 @FName=FName,
 @Age=Age,
 @Gender=Gender,
 @Phone=Phone,
 @AadharNo=AadharNo,
 @Address=Address
 from tbCitizen where AadharNo=@AadharNo
 if(not exists(select * from tbCertificate where CitizenId=@CitizenId and DosageNo =@DosageNo))
 insert into tbCertificate values(
@CitizenId ,
@Name,
@FName,
@Age,
@Gender,
@Phone,
@AadharNo,
@Address,
@DosageNo,
@MedicineName,
@IssueDate ,
@CertificateNo ,
@Status 
 )end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertcitizen]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertcitizen]
@Name varchar(50),
@FName varchar(50),
@Address varchar(50),
@Age int,
@Gender varchar(10),
@Phone varchar(50),
@Email varchar(50),
@DateOfRegistration date,
@AadharNo numeric(12,0)

as
begin
if(not exists (select * from tbCitizen where AadharNo = @aadharNo))
insert into tbCitizen values(
@Name ,
@FName ,
@Address ,
@Age,
@Gender,
@Phone,
@Email ,
@DateOfRegistration ,
@AadharNo 
)
end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertdosage]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertdosage]
@CenterId bigint,
@CitizenId bigint,
@MedicineId bigint,
@DosageNo varchar(50),
@DateOfVaccination1 date,
@Vaccination1givenby varchar(50),
@Time1 varchar(50),
@NextDate date,
@DateOfVaccination2 date,
@Time2 varchar(50),
@vaccination2givenby varchar(50)
as
begin
insert into tbDosage values(
@CenterId ,
@CitizenId,
@MedicineId ,
@DosageNo,
@DateOfVaccination1 ,
@Vaccination1givenby ,
@Time1 ,
@NextDate ,
@DateOfVaccination2 ,
@Time2,
@vaccination2givenby 
) 
end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertfeedback]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertfeedback]
@CitizenId bigint,
@DOF date,
@Remarks varchar(50),
@ActionDetails varchar(50),
@Status varchar(50)
as
begin
if(not exists (select * from tbFeedback where CitizenId=@CitizenId and Remarks = @Remarks))
insert into tbFeedback values
(
@CitizenId ,
@DOF ,
@Remarks ,
@ActionDetails ,
@Status 
)
end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertlogin]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prcinsertlogin]
@username varchar(10),
@password varchar(16)
as
begin
insert into tbLogin values(
@username,
@password)
end
GO
/****** Object:  StoredProcedure [dbo].[prcinsertmedicine]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcinsertmedicine]
@MedicineName varchar(50),
@CompanyName varchar(50),
@DateOfIssue date,
@DateOfExpiry date,
@Quantity real
as
begin
if(not exists (select * from tbMedicine where CompanyName= @CompanyName and MedicineName = @MedicineName))
insert into tbMedicine values
(@MedicineName ,
@CompanyName ,
@DateOfIssue ,
@DateOfExpiry ,
@Quantity )
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatecenter]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcupdatecenter]
@CenterId bigint,
@City  varchar(50),
@Address varchar(50),
@phone numeric(10,0),
@Email varchar(50),
@InchargeName varchar(50),
@Timings varchar(50)

as begin
update tbCenter set
City=@City,
Address = @Address,
phone = @phone ,
Email = @Email ,
InchargeName = @InchargeName ,
Timings = @Timings 
where 
CenterId = @CenterId
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatecertificate]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[prcupdatecertificate]
@CertificateId bigint,
@AadharNo numeric(12,0),
@DosageNo varchar(50),
@IssueDate date,
@CertificateNo bigint,
@Status varchar(50)
as
begin
declare @CitizenId numeric(12,0)
 
 select @CitizenId =CitizenId
 
 from tbCitizen where AadharNo=@AadharNo
if(not exists(select * from tbCertificate where  CertificateId<>@CertificateId and CitizenId=@CitizenId and DosageNo=@DosageNo))
update tbCertificate set
CitizenId=@CitizenId,


IssueDate = @IssueDate ,
CertificateNo = @CertificateNo ,
Status = @Status 
where CertificateId = @CertificateId
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatecitizen]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcupdatecitizen]
@CitizenId bigint,
@Name varchar(50),
@FName varchar(50),
@Address varchar(50),
@Age int,
@Gender varchar(10),
@Phone varchar(50),
@Email varchar(50),
@DateOfRegistration date,
@AadharNo numeric(12,0)

as begin
if(not exists (select * from tbCitizen where AadharNo = @AadharNo and CitizenId <> @CitizenId ))
update tbCitizen set
Name  = @Name ,
FName = @FName ,
Address = @Address ,
Age = @Age,
Gender = @Gender,
Phone = @Phone ,
Email = @Email ,
DateOfRegistration = @DateOfRegistration ,
AadharNo = @AadharNo 
where CitizenId = @CitizenId
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatedoasage]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcupdatedoasage]
@DosageId bigint,
@CenterId bigint,
@CitizenId bigint,
@MedicineId bigint,
@DosageNo varchar(50),
@DateOfVaccination1 date,
@Vaccination1givenby varchar(50),
@Time1 varchar(50),
@NextDate date,
@DateOfVaccination2 date,
@Time2 varchar(50),
@vaccination2givenby varchar(50)
as
begin
if(not exists (select * from tbDosage where MedicineId = @MedicineId and DosageId <> @DosageId and CenterId = @CenterId and
CitizenId = @CitizenId))
update tbDosage set
CenterId = @CenterId ,
CitizenId=@CitizenId ,
MedicineId = @MedicineId ,
DosageNo=@DosageNo,
DateOfVaccination1  = @DateOfVaccination1 ,
Vaccination1givenby =@Vaccination1givenby,
Time1 = @Time1 ,
NextDate = @NextDate ,
DateOfVaccination2 = @DateOfVaccination2 ,
Time2 = @Time2 ,
vaccination2givenby =@vaccination2givenby
where DosageId = @DosageId
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatefeedback]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcupdatefeedback]
@FeedbackId bigint,
@CitizenId bigint,
@DOF date,
@Remarks varchar(50),
@ActionDetails varchar(50),
@Status varchar(50)
as
begin
if(not exists (select * from tbFeedback where DOF = @DOF and Remarks = @Remarks and FeedbackId <>@FeedbackId))
update tbFeedback set
CitizenId = @CitizenId ,
DOF = @DOF ,
Remarks = @Remarks ,
ActionDetails = @ActionDetails ,
Status = @Status 
where FeedbackId = @FeedbackId
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatelogin]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prcupdatelogin]
@username varchar(10),
@password varchar(16)
as
begin
update tbLogin set
Password = @password
where
Username = @username
end
GO
/****** Object:  StoredProcedure [dbo].[prcupdatemedicine]    Script Date: 8/10/2021 9:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prcupdatemedicine]
@MedicineId bigint,
@MedicineName varchar(50),
@CompanyName varchar(50),
@DateOfIssue date,
@DateOfExpiry date,
@Quantity real

as begin
if(not exists (select * from tbMedicine where MedicineName = @MedicineName and CompanyName = @CompanyName and MedicineId <> @MedicineId))
update tbMedicine set
MedicineName = @MedicineName ,
CompanyName = @CompanyName ,
DateOfIssue = @DateOfIssue ,
DateOfExpiry = @DateOfExpiry ,
Quantity = @Quantity 
where MedicineId = @MedicineId
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[5] 2[25] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbCenter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbDosage"
            Begin Extent = 
               Top = 6
               Left = 473
               Bottom = 280
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbCitizen"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 271
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbMedicine"
            Begin Extent = 
               Top = 6
               Left = 710
               Bottom = 188
               Right = 883
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[31] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbCenter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbCertificate"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 201
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbCitizen"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 248
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbDosage"
            Begin Extent = 
               Top = 6
               Left = 681
               Bottom = 260
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbMedicine"
            Begin Extent = 
               Top = 221
               Left = 237
               Bottom = 351
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
USE [master]
GO
ALTER DATABASE [tbcvcm] SET  READ_WRITE 
GO
