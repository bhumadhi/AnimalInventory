drop table [Animal];
drop table [AnimalType];
drop table [Classification];
drop table [Employees];
drop table [Location];
drop table [Registration]
drop table [Source];

USE [Test]
GO

/****** Object:  Table [dbo].[AnimalType]    Script Date: 10/11/2019 12:14:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AnimalType](
	[AnimalTypeId] [int] NOT NULL,
	[AnimalTypeDesc] [varchar](300) NULL,
	[Origin] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnimalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Test]
GO

/****** Object:  Table [dbo].[Classification]    Script Date: 10/11/2019 12:14:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Classification](
	[Classificationid] [int] NOT NULL,
	[GenusName] [varchar](50) NULL,
	[SpecificName] [varchar](50) NULL,
	[EatingType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Classificationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Test]
GO


USE [Test]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 10/11/2019 12:15:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[EmployeePosition] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Test]
GO

/****** Object:  Table [dbo].[Location]    Script Date: 10/11/2019 12:15:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Location](
	[LocId] [int] NOT NULL,
	[LocDesc] [varchar](50) NULL
PRIMARY KEY CLUSTERED 
(
	[LocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Test]
GO

/****** Object:  Table [dbo].[Registration]    Script Date: 10/11/2019 12:15:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Registration](
	[RegId] [int] NOT NULL,
	[RegDate] [datetime] NULL
PRIMARY KEY CLUSTERED 
(
	[RegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [Test]
GO

/****** Object:  Table [dbo].[Source]    Script Date: 10/11/2019 12:15:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Source](
	[SourceId] [int] NOT NULL,
	[SourceName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
USE [Test]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 10/10/2019 11:25:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Animal](
	[AnimalId] [int] primary key,
	EmployeeId int not null,
	[LocId] [int] NOT NULL,
	AnimalTypeId [int] NOT NULL,
	[RegId] [int] NOT NULL,
	[ClassificationId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
	[Commonname] [varchar] (50) NUll,
	[Sex] [nchar](1) NULL,
	[BirthDate] [datetime] NULL,
	[DeadYN] [nchar](1) NULL,
	[TransferDate] [datetime] NULL,
	[DeathDate] [datetime] NULL,
	constraint fk_AniType foreign key(AnimalTypeId) references AnimalType(AnimalTypeId),
	constraint fk_Class foreign key(ClassificationId) references Classification(ClassificationId),
	constraint fk_Emp foreign key(EmployeeId) references Employees(EmployeeId),
	constraint fk_Loc foreign key(LocId) references Location(LocId),
	constraint fk_Reg foreign key(RegId) references Registration(RegId),
	constraint fk_Src foreign key(Sourceid) references Source(Sourceid) --
) ON [PRIMARY]

GO


insert into animaltype values(1,'Mammal','China');
insert into animaltype values(2,'Bird','USA');
insert into animaltype values(3,'Reptile','USA');
insert into animaltype values(4,'Insect','India');

insert into classification values(1,'GN1','SN1','Omnivores');
insert into classification values(2,'GN2','SN2','Carnivores');
insert into classification values(3,'GN3','SN3','Herbivores');
insert into classification values(4,'GN4','SN4','Carnivores');

insert into employees values(1,'Emp1','Zookepper1');
insert into employees values(2,'Emp2','Zookepper2');
insert into employees values(3,'Emp3','Zookepper3');
insert into employees values(4,'Emp4','Zookepper4');

insert into location values(1,'East1');
insert into location values(2,'West1');
insert into location values(3,'North1');
insert into location values(4,'South1');

insert into registration values(1,'2018/01/01');
insert into registration values(2,'2018/02/01');
insert into registration values(3,'2018/03/01');
insert into registration values(4,'2018/04/01');
insert into registration values(5,'2018/05/01');
insert into registration values(6,'2018/06/01');
insert into registration values(7,'2018/07/01');
insert into registration values(8,'2018/08/01');

insert into source values(1,'Source1');
insert into source values(2,'Source2');
insert into source values(3,'Source3');
insert into source values(4,'Source4');

insert into animal values (1,1,1,1,1,1,1,'Tiger','M','2018/01/01','Y',null,'2018/02/02');
insert into animal values (2,1,1,1,1,1,1,'Tiger','F','2018/01/02',null,null,null);
insert into animal values (3,1,1,1,1,1,1,'Tiger','M','2018/01/03',null,null,null);
insert into animal values (4,1,1,1,1,1,1,'Tiger','F','2018/01/04',null,null,null);
insert into animal values (5,1,1,1,1,1,1,'Tiger','M','2018/01/05',null,null,null);
insert into animal values (6,1,1,1,1,1,1,'Tiger','F','2018/01/06',null,null,null);
insert into animal values (7,1,1,1,1,1,1,'Tiger','M','2018/01/07',null,null,null);
insert into animal values (8,1,1,1,1,1,1,'Tiger','F','2018/01/08',null,null,null);
insert into animal values (9,1,1,1,1,1,1,'Tiger','M','2018/01/09',null,null,null);
insert into animal values (10,1,1,1,1,1,1,'Tiger','F','2018/01/10',null,null,null);
insert into animal values (11,2,2,2,2,2,2,'Eagle','M','2018/01/11',null,null,null);
insert into animal values (12,2,2,2,2,2,2,'Eagle','F','2018/01/12',null,null,null);
insert into animal values (13,2,2,2,2,2,2,'Eagle','M','2018/01/13',null,null,null);
insert into animal values (14,2,2,2,2,2,2,'Eagle','M','2018/01/14',null,null,null);
insert into animal values (15,2,2,2,2,2,2,'Eagle','F','2018/01/15',null,null,null);
insert into animal values (16,2,2,2,2,2,2,'Eagle','M','2018/01/16',null,null,null);
insert into animal values (17,2,2,2,2,2,2,'Eagle','F','2018/01/17',null,null,null);
insert into animal values (18,2,2,2,2,2,2,'Eagle','M','2018/01/18',null,null,null);
insert into animal values (19,2,2,2,2,2,2,'Eagle','F','2018/01/19',null,null,null);
insert into animal values (20,2,2,2,2,2,2,'Tiger','M','2018/01/20',null,null,null);
insert into animal values (21,3,3,3,3,3,3,'Tiger','F','2018/01/21',null,null,null);
insert into animal values (22,3,3,3,3,3,3,'Tiger','M','2018/01/22',null,null,null);
insert into animal values (23,3,3,3,3,3,3,'Tiger','F','2018/01/23',null,null,null);
insert into animal values (24,3,3,3,3,3,3,'Tiger','M','2018/01/24',null,null,null);
insert into animal values (25,3,3,3,3,3,3,'Tiger','F','2018/01/25',null,null,null);
insert into animal values (26,3,3,3,3,3,3,'Tiger','M','2018/01/26',null,null,null);
insert into animal values (27,3,3,3,3,3,3,'Tiger','M','2018/01/27',null,null,null);
insert into animal values (28,3,3,3,3,3,3,'Tiger','F','2018/01/28',null,null,null);
insert into animal values (29,3,3,3,3,3,3,'Tiger','M','2018/01/29',null,null,null);
insert into animal values (30,3,3,3,3,3,3,'Eagle','F','2018/01/30',null,null,null);
insert into animal values (31,4,4,4,4,4,4,'Eagle','M','2018/01/31',null,null,null);
insert into animal values (32,4,4,4,4,4,4,'Eagle','F','2018/01/32',null,null,null);
insert into animal values (33,4,4,4,4,4,4,'Eagle','M','2018/01/33',null,null,null);
insert into animal values (34,4,4,4,4,4,4,'Eagle','F','2018/01/34',null,null,null);
insert into animal values (35,4,4,4,4,4,4,'Eagle','M','2018/01/35',null,null,null);
insert into animal values (36,4,4,4,4,4,4,'Eagle','F','2018/01/36',null,null,null);
insert into animal values (37,4,4,4,4,4,4,'Eagle','M','2018/01/37',null,null,null);
insert into animal values (38,4,4,4,4,4,4,'Eagle','F','2018/01/38',null,null,null);
insert into animal values (39,4,4,4,4,4,4,'Tiger','M','2018/01/39',null,null,null);
insert into animal values (40,4,4,4,4,4,4,'Tiger','M','2018/01/40',null,null,null);
insert into animal values (41,1,1,1,1,1,1,'Tiger','F','2018/01/41',null,null,null);
insert into animal values (42,1,1,1,1,1,1,'Tiger','M','2018/01/42',null,null,null);
insert into animal values (43,1,1,1,1,1,1,'Tiger','F','2018/01/43',null,null,null);
insert into animal values (44,1,1,1,1,1,1,'Tiger','M','2018/01/44',null,null,null);
insert into animal values (45,1,1,1,1,1,1,'Tiger','F','2018/01/45',null,null,null);
insert into animal values (46,1,1,1,1,1,1,'Tiger','M','2018/01/46',null,null,null);
insert into animal values (47,1,1,1,1,1,1,'Tiger','F','2018/01/47',null,null,null);
insert into animal values (48,2,2,2,2,2,2,'Tiger','M','2018/01/48',null,null,null);
insert into animal values (49,2,2,2,2,2,2,'Tiger','F','2018/02/01',null,null,null);
insert into animal values (50,2,2,2,2,2,2,'Tiger','M','2018/02/02',null,null,null);
insert into animal values (51,1,1,1,1,1,1,'Tiger','M','2018/02/03',null,null,null);
insert into animal values (52,1,1,1,1,1,1,'Tiger','F','2018/02/04',null,null,null);
insert into animal values (53,1,1,1,1,1,1,'Tiger','M','2018/02/05',null,null,null);
insert into animal values (54,1,1,1,1,1,1,'Tiger','F','2018/02/06',null,null,null);
insert into animal values (55,1,1,1,1,1,1,'Tiger','M','2018/02/07',null,null,null);
insert into animal values (56,1,1,1,1,1,1,'Tiger','F','2018/02/08',null,null,null);
insert into animal values (57,1,1,1,1,1,1,'Tiger','M','2018/02/09',null,null,null);
insert into animal values (58,1,1,1,1,1,1,'Tiger','F','2018/02/10',null,null,null);
insert into animal values (59,1,1,1,1,1,1,'Tiger','M','2018/02/11',null,null,null);
insert into animal values (60,1,1,1,1,1,1,'Tiger','F','2018/02/12',null,null,null);
insert into animal values (61,2,2,2,2,2,2,'Eagle','M','2018/02/13',null,null,null);
insert into animal values (62,2,2,2,2,2,2,'Eagle','F','2018/02/14',null,null,null);
insert into animal values (63,2,2,2,2,2,2,'Eagle','M','2018/02/15',null,null,null);
insert into animal values (64,2,2,2,2,2,2,'Eagle','M','2018/02/16',null,null,null);
insert into animal values (65,2,2,2,2,2,2,'Eagle','F','2018/02/17',null,null,null);
insert into animal values (66,2,2,2,2,2,2,'Eagle','M','2018/02/18',null,null,null);
insert into animal values (67,2,2,2,2,2,2,'Eagle','F','2018/02/19',null,null,null);
insert into animal values (68,2,2,2,2,2,2,'Eagle','M','2018/02/20',null,null,null);
insert into animal values (69,2,2,2,2,2,2,'Eagle','F','2018/02/21',null,null,null);
insert into animal values (70,2,2,2,2,2,2,'Tiger','M','2018/02/22',null,null,null);
insert into animal values (71,3,3,3,3,3,3,'Tiger','F','2018/02/23',null,null,null);
insert into animal values (72,3,3,3,3,3,3,'Tiger','M','2018/02/24',null,null,null);
insert into animal values (73,3,3,3,3,3,3,'Tiger','F','2018/02/25',null,null,null);
insert into animal values (74,3,3,3,3,3,3,'Tiger','M','2018/02/26',null,null,null);
insert into animal values (75,3,3,3,3,3,3,'Tiger','F','2018/02/27',null,null,null);
insert into animal values (76,3,3,3,3,3,3,'Tiger','M','2018/02/28',null,null,null);
insert into animal values (77,3,3,3,3,3,3,'Tiger','M','2018/02/29',null,null,null);
insert into animal values (78,3,3,3,3,3,3,'Tiger','F','2018/02/30',null,null,null);
insert into animal values (79,3,3,3,3,3,3,'Tiger','M','2018/03/01',null,null,null);
insert into animal values (80,3,3,3,3,3,3,'Eagle','F','2018/03/02',null,null,null);
insert into animal values (81,4,4,4,4,4,4,'Eagle','M','2018/03/03',null,null,null);
insert into animal values (82,4,4,4,4,4,4,'Eagle','F','2018/03/04',null,null,null);
insert into animal values (83,4,4,4,4,4,4,'Eagle','M','2018/03/05',null,null,null);
insert into animal values (84,4,4,4,4,4,4,'Eagle','F','2018/03/06',null,null,null);
insert into animal values (85,4,4,4,4,4,4,'Eagle','M','2018/03/07',null,null,null);
insert into animal values (86,4,4,4,4,4,4,'Eagle','F','2018/03/08',null,null,null);
insert into animal values (87,4,4,4,4,4,4,'Eagle','M','2018/03/09',null,null,null);
insert into animal values (88,4,4,4,4,4,4,'Eagle','F','2018/03/10',null,null,null);
insert into animal values (89,4,4,4,4,4,4,'Tiger','M','2018/03/11',null,null,null);
insert into animal values (90,4,4,4,4,4,4,'Tiger','M','2018/03/12',null,null,null);
insert into animal values (91,1,1,1,1,1,1,'Tiger','F','2018/03/13',null,null,null);
insert into animal values (92,1,1,1,1,1,1,'Tiger','M','2018/03/14',null,null,null);
insert into animal values (93,1,1,1,1,1,1,'Tiger','F','2018/03/15',null,null,null);
insert into animal values (94,1,1,1,1,1,1,'Tiger','M','2018/03/16',null,null,null);
insert into animal values (95,1,1,1,1,1,1,'Tiger','F','2018/03/17',null,null,null);
insert into animal values (96,1,1,1,1,1,1,'Tiger','M','2018/03/18',null,null,null);
insert into animal values (97,1,1,1,1,1,1,'Tiger','F','2018/03/19',null,null,null);
insert into animal values (98,2,2,2,2,2,2,'Tiger','M','2018/03/20',null,null,null);
insert into animal values (99,2,2,2,2,2,2,'Tiger','F','2018/03/21',null,null,null);
insert into animal values (100,2,2,2,2,2,2,'Tiger','M','2018/03/22',null,null,null);
insert into animal values (101,1,1,1,4,1,1,'Tiger','M','2018/01/01',null,null,null);
insert into animal values (102,1,1,1,5,1,1,'Tiger','F','2018/01/02',null,null,null);
insert into animal values (103,1,1,1,6,1,1,'Tiger','M','2018/01/03',null,null,null);
insert into animal values (104,1,1,1,7,1,1,'Tiger','F','2018/01/04',null,null,null);
insert into animal values (105,1,1,1,8,1,1,'Tiger','M','2018/01/05',null,null,null);
insert into animal values (106,1,1,1,9,1,1,'Tiger','F','2018/01/06',null,null,null);
insert into animal values (107,1,1,1,1,1,1,'Tiger','M','2018/01/07',null,null,null);
insert into animal values (108,1,1,1,2,1,1,'Tiger','F','2018/01/08',null,null,null);
insert into animal values (109,1,1,1,3,1,1,'Tiger','M','2018/01/09',null,null,null);
insert into animal values (110,1,1,1,4,1,1,'Tiger','F','2018/01/10',null,null,null);
insert into animal values (111,2,2,2,5,2,2,'Eagle','M','2018/01/11',null,null,null);
insert into animal values (112,2,2,2,6,2,2,'Eagle','F','2018/01/12',null,null,null);
insert into animal values (113,2,2,2,7,2,2,'Eagle','M','2018/01/13',null,null,null);
insert into animal values (114,2,2,2,8,2,2,'Eagle','M','2018/01/14',null,null,null);
insert into animal values (115,2,2,2,9,2,2,'Eagle','F','2018/01/15',null,null,null);
insert into animal values (116,2,2,2,1,2,2,'Eagle','M','2018/01/16',null,null,null);
insert into animal values (117,2,2,2,2,2,2,'Eagle','F','2018/01/17',null,null,null);
insert into animal values (118,2,2,2,3,2,2,'Eagle','M','2018/01/18',null,null,null);
insert into animal values (119,2,2,2,4,2,2,'Eagle','F','2018/01/19',null,null,null);
insert into animal values (120,2,2,2,5,2,2,'Tiger','M','2018/01/20',null,null,null);
insert into animal values (121,3,3,3,6,3,3,'Tiger','F','2018/01/21',null,null,null);
insert into animal values (122,3,3,3,7,3,3,'Tiger','M','2018/01/22',null,null,null);
insert into animal values (123,3,3,3,8,3,3,'Tiger','F','2018/01/23',null,null,null);
insert into animal values (124,3,3,3,9,3,3,'Tiger','M','2018/01/24',null,null,null);
insert into animal values (125,3,3,3,1,3,3,'Tiger','F','2018/01/25',null,null,null);
insert into animal values (126,3,3,3,2,3,3,'Tiger','M','2018/01/26',null,null,null);
insert into animal values (127,3,3,3,3,3,3,'Tiger','M','2018/01/27',null,null,null);
insert into animal values (128,3,3,3,4,3,3,'Tiger','F','2018/01/28',null,null,null);
insert into animal values (129,3,3,3,5,3,3,'Tiger','M','2018/01/29',null,null,null);
insert into animal values (130,3,3,3,6,3,3,'Eagle','F','2018/01/30',null,null,null);
insert into animal values (131,4,4,4,7,4,4,'Eagle','M','2018/01/31',null,null,null);
insert into animal values (132,4,4,4,8,4,4,'Eagle','F','2018/01/32',null,null,null);
insert into animal values (133,4,4,4,9,4,4,'Eagle','M','2018/01/33',null,null,null);
insert into animal values (134,4,4,4,1,4,4,'Eagle','F','2018/01/34',null,null,null);
insert into animal values (135,4,4,4,2,4,4,'Eagle','M','2018/01/35',null,null,null);
insert into animal values (136,4,4,4,3,4,4,'Eagle','F','2018/01/36',null,null,null);
insert into animal values (137,4,4,4,4,4,4,'Eagle','M','2018/01/37',null,null,null);
insert into animal values (138,4,4,4,5,4,4,'Eagle','F','2018/01/38',null,null,null);
insert into animal values (139,4,4,4,6,4,4,'Tiger','M','2018/01/39',null,null,null);
insert into animal values (140,4,4,4,7,4,4,'Tiger','M','2018/01/40',null,null,null);
insert into animal values (141,1,1,1,8,1,1,'Tiger','F','2018/01/41',null,null,null);
insert into animal values (142,1,1,1,9,1,1,'Tiger','M','2018/01/42',null,null,null);
insert into animal values (143,1,1,1,1,1,1,'Tiger','F','2018/01/43',null,null,null);
insert into animal values (144,1,1,1,2,1,1,'Tiger','M','2018/01/44',null,null,null);
insert into animal values (145,1,1,1,3,1,1,'Tiger','F','2018/01/45',null,null,null);
insert into animal values (146,1,1,1,4,1,1,'Tiger','M','2018/01/46',null,null,null);
insert into animal values (147,1,1,1,5,1,1,'Tiger','F','2018/01/47',null,null,null);
insert into animal values (148,2,2,2,6,2,2,'Tiger','M','2018/01/48',null,null,null);
insert into animal values (149,2,2,2,7,2,2,'Tiger','F','2018/02/01',null,null,null);
insert into animal values (150,2,2,2,8,2,2,'Tiger','M','2018/02/02',null,null,null);
insert into animal values (151,1,1,1,9,1,1,'Tiger','M','2018/02/03',null,null,null);
insert into animal values (152,1,1,1,1,1,1,'Tiger','F','2018/02/04',null,null,null);
insert into animal values (153,1,1,1,2,1,1,'Tiger','M','2018/02/05',null,null,null);
insert into animal values (154,1,1,1,3,1,1,'Tiger','F','2018/02/06',null,null,null);
insert into animal values (155,1,1,1,4,1,1,'Tiger','M','2018/02/07',null,null,null);
insert into animal values (156,1,1,1,5,1,1,'Tiger','F','2018/02/08',null,null,null);
insert into animal values (157,1,1,1,6,1,1,'Tiger','M','2018/02/09',null,null,null);
insert into animal values (158,1,1,1,7,1,1,'Tiger','F','2018/02/10',null,null,null);
insert into animal values (159,1,1,1,8,1,1,'Tiger','M','2018/02/11',null,null,null);
insert into animal values (160,1,1,1,9,1,1,'Tiger','F','2018/02/12',null,null,null);
insert into animal values (161,2,2,2,1,2,2,'Eagle','M','2018/02/13',null,null,null);
insert into animal values (162,2,2,2,2,2,2,'Eagle','F','2018/02/14',null,null,null);
insert into animal values (163,2,2,2,3,2,2,'Eagle','M','2018/02/15',null,null,null);
insert into animal values (164,2,2,2,4,2,2,'Eagle','M','2018/02/16',null,null,null);
insert into animal values (165,2,2,2,5,2,2,'Eagle','F','2018/02/17',null,null,null);
insert into animal values (166,2,2,2,6,2,2,'Eagle','M','2018/02/18',null,null,null);
insert into animal values (167,2,2,2,7,2,2,'Eagle','F','2018/02/19',null,null,null);
insert into animal values (168,2,2,2,8,2,2,'Eagle','M','2018/02/20',null,null,null);
insert into animal values (169,2,2,2,9,2,2,'Eagle','F','2018/02/21',null,null,null);
insert into animal values (170,2,2,2,1,2,2,'Tiger','M','2018/02/22',null,null,null);
insert into animal values (171,3,3,3,2,3,3,'Tiger','F','2018/02/23',null,null,null);
insert into animal values (172,3,3,3,3,3,3,'Tiger','M','2018/02/24',null,null,null);
insert into animal values (173,3,3,3,4,3,3,'Tiger','F','2018/02/25',null,null,null);
insert into animal values (174,3,3,3,5,3,3,'Tiger','M','2018/02/26',null,null,null);
insert into animal values (175,3,3,3,6,3,3,'Tiger','F','2018/02/27',null,null,null);
insert into animal values (176,3,3,3,7,3,3,'Tiger','M','2018/02/28',null,null,null);
insert into animal values (177,3,3,3,8,3,3,'Tiger','M','2018/02/29',null,null,null);
insert into animal values (178,3,3,3,9,3,3,'Tiger','F','2018/02/30',null,null,null);
insert into animal values (179,3,3,3,1,3,3,'Tiger','M','2018/03/01',null,null,null);
insert into animal values (180,3,3,3,2,3,3,'Eagle','F','2018/03/02',null,null,null);
insert into animal values (181,4,4,4,3,4,4,'Eagle','M','2018/03/03',null,null,null);
insert into animal values (182,4,4,4,4,4,4,'Eagle','F','2018/03/04',null,null,null);
insert into animal values (183,4,4,4,5,4,4,'Eagle','M','2018/03/05',null,null,null);
insert into animal values (184,4,4,4,6,4,4,'Eagle','F','2018/03/06',null,null,null);
insert into animal values (185,4,4,4,7,4,4,'Eagle','M','2018/03/07',null,null,null);
insert into animal values (186,4,4,4,8,4,4,'Eagle','F','2018/03/08',null,null,null);
insert into animal values (187,4,4,4,9,4,4,'Eagle','M','2018/03/09',null,null,null);
insert into animal values (188,4,4,4,1,4,4,'Eagle','F','2018/03/10',null,null,null);
insert into animal values (189,4,4,4,2,4,4,'Tiger','M','2018/03/11',null,null,null);
insert into animal values (190,4,4,4,3,4,4,'Tiger','M','2018/03/12',null,null,null);
insert into animal values (191,1,1,1,4,1,1,'Tiger','F','2018/03/13',null,null,null);
insert into animal values (192,1,1,1,5,1,1,'Tiger','M','2018/03/14',null,null,null);
insert into animal values (193,1,1,1,6,1,1,'Tiger','F','2018/03/15',null,null,null);
insert into animal values (194,1,1,1,7,1,1,'Tiger','M','2018/03/16',null,null,null);
insert into animal values (195,1,1,1,8,1,1,'Tiger','F','2018/03/17',null,null,null);
insert into animal values (196,1,1,1,9,1,1,'Tiger','M','2018/03/18',null,null,null);
insert into animal values (197,1,1,1,1,1,1,'Tiger','F','2018/03/19',null,null,null);
insert into animal values (198,2,2,2,2,2,2,'Tiger','M','2018/03/20',null,null,null);
insert into animal values (199,2,2,2,3,2,2,'Tiger','F','2018/03/21',null,null,null);
insert into animal values (200,2,2,2,4,2,2,'Tiger','M','2018/03/22',null,null,null);



with monthly_inventory (month, total_animal) as 
(
select month, sum(total_reg) over(order by month) as total_animal from 
(
select convert(varchar(7),regdate,111) as month, sum(1) as total_reg from animal a inner join registration b on a.regid=b.regid where getdate()>=b.regdate and isnull(deadyn,' ') <> 'Y' group by convert(varchar(7),regdate,111) 
)a
)

select month, total_animal,lag(total_animal,1) over(order by total_animal) as total_prev_month,
cast(
round(
(
(total_animal -lag(total_animal,1) over(order by total_animal))*1.0
/(lag(total_animal,1) over(order by total_animal))
)*100
,2) as float)as per_change  from monthly_inventory;




select convert(varchar(7),b.regdate,126) as month, 
c.employeename ,d.SourceName,e.EatingType,f.LocDesc,g.AnimalTypeDesc,g.origin,
sum(1) as total_reg
from animal a 
inner join 
registration b on a.regid=b.regid 
inner join
employees c
on 
a.employeeid=c.employeeid
inner join
source d
on 
a.sourceid=d.sourceid
inner join
classification e
on 
a.classificationid=e.classificationid
inner join
location f
on 
a.locid=f.locid
inner join
animaltype g
on 
a.animaltypeid=g.animaltypeid
where getdate()>=b.regdate and isnull(deadyn,' ') <> 'Y' 
group by convert(varchar(7),b.regdate,126) ,c.employeename ,d.SourceName,e.EatingType,f.LocDesc,g.AnimalTypeDesc,g.origin order by 1;