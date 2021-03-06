
/****** Object:  Table [dbo].[Person]    Script Date: 5/16/2018 1:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Person_Id] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Company_Id] [int] NOT NULL,
	[Filter_Property_1] [nvarchar](max) NULL,
	[Filter_Property_2] [float] NULL,
	[Addtional_Property_1] [nvarchar](max) NULL,
	[Addtional_Property_2] [nvarchar](max) NULL,
	[Addtional_Property_3] [nvarchar](max) NULL,
	[Addtional_Property_4] [nvarchar](max) NULL,
	[Addtional_Property_5] [nvarchar](max) NULL,
	[Addtional_Property_6] [nvarchar](max) NULL,
	[Addtional_Property_7] [nvarchar](max) NULL,
	[Addtional_Property_8] [nvarchar](max) NULL,
	[Addtional_Property_9] [nvarchar](max) NULL,
	[Addtional_Property_10] [nvarchar](max) NULL,
	[Addtional_Property_11] [nvarchar](max) NULL,
	[Addtional_Property_12] [nvarchar](max) NULL,
	[Addtional_Property_13] [nvarchar](max) NULL,
	[Addtional_Property_14] [nvarchar](max) NULL,
	[Addtional_Property_15] [nvarchar](max) NULL,
	[Addtional_Property_16] [nvarchar](max) NULL,
	[Addtional_Property_17] [nvarchar](max) NULL,
	[Addtional_Property_18] [nvarchar](max) NULL,
	[Addtional_Property_19] [nvarchar](max) NULL,
	[Addtional_Property_20] [nvarchar](max) NULL,
	[Addtional_Property_21] [nvarchar](max) NULL,
	[Addtional_Property_22] [nvarchar](max) NULL,
	[Addtional_Property_23] [nvarchar](max) NULL,
	[Addtional_Property_24] [nvarchar](max) NULL,
	[Addtional_Property_25] [nvarchar](max) NULL,
	[Addtional_Property_26] [nvarchar](max) NULL,
	[Addtional_Property_27] [nvarchar](max) NULL,
	[Addtional_Property_28] [nvarchar](max) NULL,
	[Addtional_Property_29] [nvarchar](max) NULL,
	[Addtional_Property_30] [nvarchar](max) NULL,
	[Addtional_Property_31] [nvarchar](max) NULL,
	[Addtional_Property_32] [int] NULL,
	[Addtional_Property_33] [int] NULL,
	[Addtional_Property_34] [int] NULL,
	[Addtional_Property_35] [int] NULL,
	[Addtional_Property_36] [datetime] NULL,
	[Addtional_Property_37] [int] NULL,
	[Addtional_Property_38] [int] NULL,
	[Addtional_Property_39] [float] NULL,
	[Addtional_Property_40] [int] NULL,
	[Addtional_Property_41] [varchar](2000) NULL,
	[Addtional_Property_42] [varchar](125) NULL,
	[Addtional_Property_43] [varchar](50) NULL,
	[Addtional_Property_44] [int] NULL,
	[Addtional_Property_45] [varchar](25) NULL,
	[Addtional_Property_46] [int] NULL,
	[Addtional_Property_47] [uniqueidentifier] NOT NULL,
	[Addtional_Property_48] [bit] NULL,
	[Addtional_Property_49] [bit] NULL,
	[Addtional_Property_50] [varchar](125) NULL,
	[Addtional_Property_51] [float] NULL,
	[Addtional_Property_52] [bit] NULL,
	[Addtional_Property_53] [varchar](125) NULL,
	[Addtional_Property_54] [varchar](100) NULL,
	[Addtional_Property_55] [int] NULL,
	[Addtional_Property_56] [int] NULL,
	[Addtional_Property_57] [decimal](9, 6) NULL,
	[Addtional_Property_58] [decimal](9, 6) NULL,
	[Addtional_Property_59] [varchar](150) NULL,
	[Addtional_Property_60] [bit] NOT NULL,
	[Addtional_Property_61] [bit] NULL,
	[Addtional_Property_62] [int] NULL,
	[Addtional_Property_63] [int] NULL,
	[Addtional_Property_64] [int] NULL,
	[Addtional_Property_65] [int] NULL,
	[Addtional_Property_66] [bit] NOT NULL,
	[Addtional_Property_67] [int] NULL,
	[Addtional_Property_68] [int] NULL,
	[Addtional_Property_69] [int] NULL,
	[Addtional_Property_70] [int] NULL,
	[Addtional_Property_71] [uniqueidentifier] NULL,
	[Addtional_Property_72] [int] NULL,
	[Addtional_Property_73] [int] NULL,
	[Addtional_Property_74] [int] NULL,
	[Addtional_Property_75] [int] NULL,
	[Addtional_Property_76] [datetime] NULL,
	[Addtional_Property_77] [int] NULL,
	[Addtional_Property_78] [varchar](500) NULL,
	[Addtional_Property_79] [datetime] NULL,
	[Addtional_Property_80] [int] NULL,
	[Addtional_Property_81] [varchar](500) NULL,
	[Addtional_Property_82] [bit] NOT NULL,
	[Addtional_Property_83] [int] NULL,
	[Addtional_Property_84] [datetime] NULL,
	[Addtional_Property_85] [int] NULL,
	[Addtional_Property_86] [int] NULL,
	[Addtional_Property_87] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Person_WithMoreInfo]    Script Date: 5/16/2018 1:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Person_WithMoreInfo]
AS
SELECT P.*, newid() AS Unique_Id FROM Person P
GO
/****** Object:  UserDefinedFunction [dbo].[Person_GetForCompany]    Script Date: 5/16/2018 1:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Person_GetForCompany]
(
	@Company_Id INT
)
RETURNS TABLE RETURN
(
	SELECT *
	FROM Person_WithMoreInfo
	WHERE Company_Id = @Company_Id
)
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/16/2018 1:24:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Company_Id] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT ((2)) FOR [Addtional_Property_35]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT (newid()) FOR [Addtional_Property_47]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT ((1)) FOR [Addtional_Property_60]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT ((0)) FOR [Addtional_Property_66]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT (getutcdate()) FOR [Addtional_Property_76]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT (getutcdate()) FOR [Addtional_Property_79]
GO
ALTER TABLE [dbo].[Person] ADD  DEFAULT ((0)) FOR [Addtional_Property_82]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [Person_FK_Company_Id] FOREIGN KEY([Company_Id])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [Person_FK_Company_Id]
GO
