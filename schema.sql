USE [RegistroFerreteria_DB]
GO
/****** Object:  Table [dbo].[ProductInfo_Tab]    Script Date: 2/9/2022 03:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInfo_Tab](
	[ProductID] [int] NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[Specification] [nvarchar](100) NULL,
	[Unit] [nvarchar](100) NULL,
	[Color] [nvarchar](100) NULL,
	[Insertdate] [datetime] NULL,
	[Opening] [float] NULL,
	[Status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
