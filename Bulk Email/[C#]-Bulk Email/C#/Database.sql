CREATE DATABASE [BulkSMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BulkSMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BulkSMS.mdf' , SIZE = 3072KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BulkSMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BulkSMS_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BulkSMS] SET COMPATIBILITY_LEVEL = 110
GO
ALTER DATABASE [BulkSMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BulkSMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BulkSMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BulkSMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BulkSMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BulkSMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BulkSMS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BulkSMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BulkSMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BulkSMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BulkSMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BulkSMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BulkSMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BulkSMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BulkSMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BulkSMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BulkSMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BulkSMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BulkSMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BulkSMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BulkSMS] SET  READ_WRITE 
GO
ALTER DATABASE [BulkSMS] SET RECOVERY FULL 
GO
ALTER DATABASE [BulkSMS] SET  MULTI_USER 
GO
ALTER DATABASE [BulkSMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BulkSMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BulkSMS]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [BulkSMS] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO
USE BulkSMS
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/2/2012 8:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Guy', N'Gilbert', N'Production Technician - WC60', N'guy1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kevin', N'Brown', N'Marketing Assistant', N'kevin0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Roberto', N'Tamburello', N'Engineering Manager', N'roberto0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rob', N'Walters', N'Senior Tool Designer', N'rob0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rob', N'Walters', N'Senior Tool Designer', N'rob0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Thierry', N'D''Hers', N'Tool Designer', N'thierry0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Bradley', N'Marketing Manager', N'david0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Bradley', N'Marketing Manager', N'david0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'JoLynn', N'Dobney', N'Production Supervisor - WC60', N'jolynn0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ruth', N'Ellerbrock', N'Production Technician - WC10', N'ruth0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gail', N'Erickson', N'Design Engineer', N'gail0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Barry', N'Johnson', N'Production Technician - WC10', N'barry0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jossef', N'Goldberg', N'Design Engineer', N'jossef0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Terri', N'Duffy', N'Vice President of Engineering', N'terri0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sidney', N'Higa', N'Production Technician - WC10', N'sidney0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Taylor', N'Maxwell', N'Production Supervisor - WC50', N'taylor0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jeffrey', N'Ford', N'Production Technician - WC10', N'jeffrey0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jo', N'Brown', N'Production Supervisor - WC60', N'jo0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Doris', N'Hartwig', N'Production Technician - WC10', N'doris0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Campbell', N'Production Supervisor - WC60', N'john0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Diane', N'Glimp', N'Production Technician - WC10', N'diane0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Steven', N'Selikoff', N'Production Technician - WC30', N'steven0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Peter', N'Krebs', N'Production Control Manager', N'peter0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Stuart', N'Munson', N'Production Technician - WC45', N'stuart0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Greg', N'Alderson', N'Production Technician - WC45', N'greg0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Johnson', N'Production Technician - WC30', N'david1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Zheng', N'Mu', N'Production Supervisor - WC10', N'zheng0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ivo', N'Salmre', N'Production Technician - WC20', N'ivo0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Paul', N'Komosinski', N'Production Technician - WC40', N'paul0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ashvini', N'Sharma', N'Network Administrator', N'ashvini0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kendall', N'Keil', N'Production Technician - WC50', N'kendall0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Paula', N'Barreto de Mattos', N'Human Resources Manager', N'paula0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Alejandro', N'McGuel', N'Production Technician - WC40', N'alejandro0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Garrett', N'Young', N'Production Technician - WC30', N'garrett0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jian Shuo', N'Wang', N'Production Technician - WC30', N'jianshuo0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Susan', N'Eaton', N'Stocker', N'susan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Vamsi', N'Kuppa', N'Shipping and Receiving Clerk', N'vamsi0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Alice', N'Ciccu', N'Production Technician - WC50', N'alice0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Simon', N'Rapier', N'Production Technician - WC60', N'simon0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jinghao', N'Liu', N'Production Supervisor - WC50', N'jinghao0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Hines', N'Production Technician - WC20', N'michael0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Yvonne', N'McKay', N'Production Technician - WC45', N'yvonne0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Peng', N'Wu', N'Quality Assurance Supervisor', N'peng0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jean', N'Trenary', N'Information Services Manager', N'jean0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Russell', N'Hunter', N'Production Technician - WC50', N'russell0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'A. Scott', N'Wright', N'Master Scheduler', N'ascott0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Fred', N'Northup', N'Production Technician - WC40', N'fred0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sariya', N'Harnpadoungsataya', N'Marketing Specialist', N'sariya0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Willis', N'Johnson', N'Recruiter', N'willis0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jun', N'Cao', N'Production Technician - WC50', N'jun0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Christian', N'Kleinerman', N'Maintenance Supervisor', N'christian0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Susan', N'Metters', N'Production Technician - WC30', N'susan1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Reuben', N'D''sa', N'Production Supervisor - WC40', N'reuben0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kirk', N'Koenigsbauer', N'Production Technician - WC45', N'kirk0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Ortiz', N'Production Technician - WC60', N'david2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Tengiz', N'Kharatishvili', N'Control Specialist', N'tengiz0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Hanying', N'Feng', N'Production Technician - WC20', N'hanying0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kevin', N'Liu', N'Production Technician - WC40', N'kevin1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Annik', N'Stahl', N'Production Technician - WC60', N'annik0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Suroor', N'Fatima', N'Production Technician - WC50', N'suroor0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Deborah', N'Poe', N'Accounts Receivable Specialist', N'deborah0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jim', N'Scardelis', N'Production Technician - WC50', N'jim0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Carole', N'Poland', N'Production Technician - WC30', N'carole0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'George', N'Li', N'Production Technician - WC30', N'george0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gary', N'Yukish', N'Production Technician - WC40', N'gary0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Cristian', N'Petculescu', N'Production Supervisor - WC10', N'cristian0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Raymond', N'Sam', N'Production Technician - WC20', N'raymond0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Janaina', N'Bueno', N'Application Specialist', N'janaina0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Bob', N'Hohman', N'Production Technician - WC50', N'bob0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Shammi', N'Mohamed', N'Production Technician - WC40', N'shammi0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Linda', N'Moschell', N'Production Technician - WC50', N'linda0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mindy', N'Martin', N'Benefits Specialist', N'mindy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Wendy', N'Kahn', N'Finance Manager', N'wendy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kim', N'Ralls', N'Stocker', N'kim0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sandra', N'Reátegui Alayo', N'Production Technician - WC30', N'sandra0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kok-Ho', N'Loh', N'Production Supervisor - WC50', N'kok-ho0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Douglas', N'Hite', N'Production Technician - WC45', N'douglas0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'James', N'Kramer', N'Production Technician - WC60', N'james0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sean', N'Alexander', N'Quality Assurance Technician', N'sean0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Nitin', N'Mirchandani', N'Production Technician - WC20', N'nitin0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Diane', N'Margheim', N'Research and Development Engineer', N'diane1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rebecca', N'Laszlo', N'Production Technician - WC60', N'rebecca0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rajesh', N'Patel', N'Production Technician - WC40', N'rajesh0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Vidur', N'Luthra', N'Recruiter', N'vidur0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Evans', N'Production Technician - WC50', N'john1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Nancy', N'Anderson', N'Production Technician - WC60', N'nancy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Pilar', N'Ackerman', N'Shipping and Receiving Supervisor', N'pilar0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Yalovsky', N'Production Technician - WC30', N'david3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Hamilton', N'Production Supervisor - WC40', N'david4@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Laura', N'Steele', N'Production Technician - WC45', N'laura0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Margie', N'Shoop', N'Production Technician - WC60', N'margie0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Zainal', N'Arifin', N'Document Control Manager', N'zainal0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lorraine', N'Nay', N'Production Technician - WC40', N'lorraine0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Fadi', N'Fakhouri', N'Production Technician - WC20', N'fadi0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ryan', N'Cornelsen', N'Production Technician - WC40', N'ryan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Candy', N'Spoon', N'Accounts Receivable Specialist', N'candy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Nuan', N'Yu', N'Production Technician - WC50', N'nuan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'William', N'Vong', N'Scheduling Assistant', N'william0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'William', N'Vong', N'Scheduling Assistant', N'william0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Bjorn', N'Rettig', N'Production Technician - WC30', N'bjorn0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Scott', N'Gode', N'Production Technician - WC45', N'scott0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Rothkugel', N'Production Technician - WC40', N'michael1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lane', N'Sacksteder', N'Production Technician - WC20', N'lane0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Pete', N'Male', N'Production Technician - WC50', N'pete0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Dan', N'Bacon', N'Application Specialist', N'dan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Barber', N'Assistant to the Chief Financial Officer', N'david5@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lolan', N'Song', N'Production Technician - WC50', N'lolan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Paula', N'Nartker', N'Production Technician - WC40', N'paula1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mary', N'Gibson', N'Marketing Specialist', N'mary0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mindaugas', N'Krapauskas', N'Production Technician - WC50', N'mindaugas0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Eric', N'Gubbels', N'Production Supervisor - WC20', N'eric0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ken', N'Sánchez', N'Chief Executive Officer', N'ken0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jason', N'Watters', N'Production Technician - WC30', N'jason0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mark', N'Harrington', N'Quality Assurance Technician', N'mark0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Janeth', N'Esteves', N'Production Technician - WC45', N'janeth0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Marc', N'Ingle', N'Production Technician - WC30', N'marc0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gigi', N'Matthew', N'Research and Development Engineer', N'gigi0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Paul', N'Singh', N'Production Technician - WC20', N'paul1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Frank', N'Lee', N'Production Technician - WC40', N'frank0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'François', N'Ajenstat', N'Database Administrator', N'françois0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Diane', N'Tibbott', N'Production Technician - WC50', N'diane2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jill', N'Williams', N'Marketing Specialist', N'jill0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Angela', N'Barbariol', N'Production Technician - WC50', N'angela0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Matthias', N'Berndt', N'Shipping and Receiving Clerk', N'matthias0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Bryan', N'Baker', N'Production Technician - WC60', N'bryan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jeff', N'Hay', N'Production Supervisor - WC45', N'jeff0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Eugene', N'Zabokritski', N'Production Technician - WC30', N'eugene0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Barbara', N'Decker', N'Production Technician - WC20', N'barbara0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Chris', N'Preston', N'Production Technician - WC45', N'chris0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sean', N'Chai', N'Document Control Assistant', N'sean1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Dan', N'Wilson', N'Database Administrator', N'dan1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mark', N'McArthur', N'Production Technician - WC60', N'mark1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Bryan', N'Walton', N'Accounts Receivable Specialist', N'bryan1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Houman', N'Pournasseh', N'Production Technician - WC50', N'houman0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sairaj', N'Uddin', N'Scheduling Assistant', N'sairaj0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michiko', N'Osada', N'Production Technician - WC30', N'michiko0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Benjamin', N'Martin', N'Production Technician - WC30', N'benjamin0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Cynthia', N'Randall', N'Production Supervisor - WC30', N'cynthia0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kathie', N'Flood', N'Production Technician - WC45', N'kathie0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Britta', N'Simon', N'Production Technician - WC60', N'britta0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brian', N'Lloyd', N'Production Technician - WC40', N'brian0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Liu', N'Accounts Manager', N'david6@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Laura', N'Norman', N'Chief Financial Officer', N'laura1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Laura', N'Norman', N'Chief Financial Officer', N'laura1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Patten', N'Production Technician - WC50', N'michael2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Andy', N'Ruth', N'Production Technician - WC30', N'andy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Yuhong', N'Li', N'Production Supervisor - WC20', N'yuhong0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Robert', N'Rounthwaite', N'Production Technician - WC45', N'robert0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Andreas', N'Berglund', N'Quality Assurance Technician', N'andreas0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Reed', N'Koch', N'Production Technician - WC30', N'reed0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Linda', N'Randall', N'Production Technician - WC20', N'linda1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'James', N'Hamilton', N'Vice President of Production', N'james1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ramesh', N'Meyyappan', N'Application Specialist', N'ramesh0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Stephanie', N'Conroy', N'Network Manager', N'stephanie0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Samantha', N'Smith', N'Production Technician - WC20', N'samantha0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Tawana', N'Nusbaum', N'Production Technician - WC40', N'tawana0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Denise', N'Smith', N'Production Technician - WC50', N'denise0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Hao', N'Chen', N'Human Resources Administrative Assistant', N'hao0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Alex', N'Nayberg', N'Production Technician - WC45', N'alex0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Eugene', N'Kogan', N'Production Technician - WC60', N'eugene1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brandon', N'Heidepriem', N'Production Technician - WC60', N'brandon0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Dylan', N'Miller', N'Research and Development Manager', N'dylan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Shane', N'Kim', N'Production Supervisor - WC45', N'shane0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Chen', N'Production Technician - WC20', N'john2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Karen', N'Berge', N'Document Control Assistant', N'karen0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jose', N'Lugo', N'Production Technician - WC60', N'jose0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mandar', N'Samant', N'Production Technician - WC50', N'mandar0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mikael', N'Sandberg', N'Buyer', N'mikael0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sameer', N'Tejani', N'Production Technician - WC50', N'sameer0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Dragan', N'Tomic', N'Accounts Payable Specialist', N'dragan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Carol', N'Philips', N'Production Technician - WC30', N'carol0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rob', N'Caron', N'Production Technician - WC40', N'rob1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Don', N'Hall', N'Production Technician - WC50', N'don0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Alan', N'Brewer', N'Scheduling Assistant', N'alan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Lawrence', N'Production Technician - WC30', N'david7@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Baris', N'Cetinok', N'Production Technician - WC40', N'baris0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Ray', N'Production Supervisor - WC30', N'michael3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Steve', N'Masters', N'Production Technician - WC60', N'steve0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Suchitra', N'Mohan', N'Production Technician - WC60', N'suchitra0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Karen', N'Berg', N'Application Specialist', N'karen1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Terrence', N'Earls', N'Production Technician - WC20', N'terrence0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Barbara', N'Moreland', N'Accountant', N'barbara1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Chad', N'Niswonger', N'Production Technician - WC50', N'chad0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rostislav', N'Shabalin', N'Production Technician - WC30', N'rostislav0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Belinda', N'Newman', N'Production Technician - WC45', N'belinda0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Katie', N'McAskill-White', N'Production Supervisor - WC20', N'katie0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Russell', N'King', N'Production Technician - WC30', N'russell1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jack', N'Richins', N'Production Supervisor - WC30', N'jack0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Andrew', N'Hill', N'Production Supervisor - WC10', N'andrew0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Nicole', N'Holliday', N'Production Technician - WC40', N'nicole0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Frank', N'Miller', N'Production Technician - WC50', N'frank1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Peter', N'Connelly', N'Network Administrator', N'peter1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Anibal', N'Sousa', N'Production Technician - WC20', N'anibal0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ken', N'Myer', N'Production Technician - WC40', N'ken1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Grant', N'Culbertson', N'Human Resources Administrative Assistant', N'grant0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Entin', N'Production Technician - WC50', N'michael4@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lionel', N'Penuchot', N'Production Technician - WC45', N'lionel0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Thomas', N'Michaels', N'Production Technician - WC60', N'thomas0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jimmy', N'Bischoff', N'Stocker', N'jimmy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Vanderhyde', N'Production Technician - WC30', N'michael5@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lori', N'Kane', N'Production Supervisor - WC45', N'lori0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Arvind', N'Rao', N'Buyer', N'arvind0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Stefen', N'Hesse', N'Production Technician - WC20', N'stefen0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Hazem', N'Abolrous', N'Quality Assurance Manager', N'hazem0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Janet', N'Sheperdigian', N'Accounts Payable Specialist', N'janet0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Elizabeth', N'Keyser', N'Production Technician - WC50', N'elizabeth0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Terry', N'Eminhizer', N'Marketing Specialist', N'terry0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Frum', N'Production Technician - WC30', N'john3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Merav', N'Netz', N'Production Technician - WC30', N'merav0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brian', N'LaMee', N'Scheduling Assistant', N'brian1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kitti', N'Lertpiriyasuwat', N'Production Technician - WC50', N'kitti0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jay', N'Adams', N'Production Technician - WC60', N'jay0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jan', N'Miksovsky', N'Production Technician - WC30', N'jan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brenda', N'Diaz', N'Production Supervisor - WC40', N'brenda0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Andrew', N'Cencini', N'Production Technician - WC45', N'andrew1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Chris', N'Norred', N'Control Specialist', N'chris1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Chris', N'Okelberry', N'Production Technician - WC60', N'chris2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Shelley', N'Dyck', N'Production Technician - WC20', N'shelley0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gabe', N'Mares', N'Production Technician - WC40', N'gabe0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mike', N'Seamans', N'Accountant', N'mike0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Raheem', N'Research and Development Manager', N'michael6@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gary', N'Altman', N'Facilities Manager', N'gary1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Charles', N'Fitzgerald', N'Production Technician - WC60', N'charles0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ebru', N'Ersan', N'Production Technician - WC10', N'ebru0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sylvester', N'Valdez', N'Production Technician - WC20', N'sylvester0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brian', N'Goldstein', N'Production Technician - WC40', N'brian2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Linda', N'Meisner', N'Buyer', N'linda2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Betsy', N'Stadick', N'Production Technician - WC10', N'betsy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Magnus', N'Hedlund', N'Facilities Administrative Assistant', N'magnus0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Karan', N'Khanna', N'Production Technician - WC60', N'karan0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mary', N'Baker', N'Production Technician - WC10', N'mary1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kevin', N'Homer', N'Production Technician - WC10', N'kevin2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mihail', N'Frintu', N'Production Technician - WC40', N'mihail0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Bonnie', N'Kearney', N'Production Technician - WC10', N'bonnie0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Fukiko', N'Ogisu', N'Buyer', N'fukiko0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Hung-Fu', N'Ting', N'Production Technician - WC20', N'hung-fu0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Gordon', N'Hee', N'Buyer', N'gordon0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kimberly', N'Zimmerman', N'Production Technician - WC10', N'kimberly0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Kim', N'Abercrombie', N'Production Technician - WC60', N'kim1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sandeep', N'Kaliyath', N'Production Technician - WC40', N'sandeep0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Prasanna', N'Samarawickrama', N'Production Technician - WC20', N'prasanna0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Frank', N'Pellow', N'Buyer', N'frank2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Min', N'Su', N'Production Technician - WC20', N'min0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Eric', N'Brown', N'Production Technician - WC40', N'eric1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Eric', N'Kurjan', N'Buyer', N'eric2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Pat', N'Coleman', N'Janitor', N'pat0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Maciej', N'Dusza', N'Production Technician - WC60', N'maciej0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Erin', N'Hagens', N'Buyer', N'erin0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Patrick', N'Wedge', N'Production Technician - WC10', N'patrick0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Frank', N'Martinez', N'Production Technician - WC40', N'frank3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ed', N'Dudenhoefer', N'Production Technician - WC60', N'ed0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Christopher', N'Hill', N'Production Technician - WC10', N'christopher0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Patrick', N'Cook', N'Production Technician - WC40', N'patrick1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Krishna', N'Sunkammurali', N'Production Technician - WC20', N'krishna0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lori', N'Penor', N'Janitor', N'lori1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Danielle', N'Tiedt', N'Production Technician - WC10', N'danielle0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sootha', N'Charncherngkha', N'Quality Assurance Technician', N'sootha0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Zwilling', N'Production Technician - WC60', N'michael7@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Randy', N'Reeves', N'Production Technician - WC60', N'randy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Kane', N'Production Technician - WC10', N'john4@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jack', N'Creasey', N'Production Technician - WC40', N'jack1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Olinda', N'Turner', N'Production Technician - WC20', N'olinda0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Stuart', N'Macrae', N'Janitor', N'stuart1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jo', N'Berry', N'Janitor', N'jo1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ben', N'Miller', N'Buyer', N'ben0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Tom', N'Vande Velde', N'Production Technician - WC10', N'tom0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ovidiu', N'Cracium', N'Senior Tool Designer', N'ovidiu0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Annette', N'Hill', N'Purchasing Assistant', N'annette0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Janice', N'Galvin', N'Tool Designer', N'janice0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Reinout', N'Hillmann', N'Purchasing Assistant', N'reinout0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Sullivan', N'Senior Design Engineer', N'michael8@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Stephen', N'Jiang', N'North American Sales Manager', N'stephen0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Wanida', N'Benshoof', N'Marketing Assistant', N'wanida0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sharon', N'Salavaria', N'Design Engineer', N'sharon0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'John', N'Wood', N'Marketing Specialist', N'john5@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Mary', N'Dempsey', N'Marketing Assistant', N'mary2@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Brian', N'Welcker', N'Vice President of Sales', N'brian3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sheela', N'Word', N'Purchasing Manager', N'sheela0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sheela', N'Word', N'Purchasing Manager', N'sheela0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Sheela', N'Word', N'Purchasing Manager', N'sheela0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Michael', N'Blythe', N'Sales Representative', N'michael9@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Linda', N'Mitchell', N'Sales Representative', N'linda3@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jillian', N'Carson', N'Sales Representative', N'jillian0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Garrett', N'Vargas', N'Sales Representative', N'garrett1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Tsvi', N'Reiter', N'Sales Representative', N'tsvi0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Pamela', N'Ansman-Wolfe', N'Sales Representative', N'pamela0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Shu', N'Ito', N'Sales Representative', N'shu0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'José', N'Saraiva', N'Sales Representative', N'josé1@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'David', N'Campbell', N'Sales Representative', N'david8@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Amy', N'Alberts', N'European Sales Manager', N'amy0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Jae', N'Pak', N'Sales Representative', N'jae0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Ranjit', N'Varkey Chudukatil', N'Sales Representative', N'ranjit0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Tete', N'Mensa-Annan', N'Sales Representative', N'tete0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Syed', N'Abbas', N'Pacific Sales Manager', N'syed0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Rachel', N'Valdez', N'Sales Representative', N'rachel0@adventure-works.com')
GO
INSERT [dbo].[Contacts] ([FirstName], [LastName], [Title], [EmailAddress]) VALUES (N'Lynn', N'Tsoflias', N'Sales Representative', N'lynn0@adventure-works.com')
GO
CREATE PROCEDURE GetRecipients
AS
BEGIN
SELECT [EmailAddress], [FirstName] + ' ' + [LastName] + ' <' + [EmailAddress] + '>' AS Name
FROM Contacts
END
GO

