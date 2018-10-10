USE [Money]
GO

/****** Object:  Table [dbo].[MoneyData]    Script Date: 10/10/2018 9:38:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MoneyData](
	[ID] [INT] IDENTITY(1,1) NOT NULL,
	[Amount] [DECIMAL](18, 2) NULL,
	[CreatedDate] [DATETIME] NULL,
	[MoneyDate] [DATE] NULL,
	[CategoryID] [INT] NULL,
	[SubCategoryID] [INT] NULL,
 CONSTRAINT [PK_MoneyData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


