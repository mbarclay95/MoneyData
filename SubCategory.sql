USE [Money]
GO

/****** Object:  Table [dbo].[SubCategory]    Script Date: 10/10/2018 9:39:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [INT] IDENTITY(1,1) NOT NULL,
	[SubCategory] [VARCHAR](50) NULL,
	[CategoryID] [INT] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


