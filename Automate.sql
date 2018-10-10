USE [Money]
GO

/****** Object:  Table [dbo].[Automate]    Script Date: 10/10/2018 9:38:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Automate](
	[ID] [INT] IDENTITY(1,1) NOT NULL,
	[CategoryID] [INT] NULL,
	[SubCategoryID] [INT] NULL,
	[DayOfMonth] [INT] NULL,
	[NextDueDate] [DATE] NULL,
	[LastRan] [DATE] NULL,
	[LastChecked] [DATE] NULL,
	[Amount] [DECIMAL](18, 2) NULL,
 CONSTRAINT [PK_Automate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


