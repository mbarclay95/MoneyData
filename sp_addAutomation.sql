USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_addAutomation]    Script Date: 10/10/2018 9:32:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_addAutomation]
	-- Add the parameters for the stored procedure here
	@Category INT,
	@SubCategory INT,
	@Day INT,
	@Date DATE,
	@Amount DECIMAL(18,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	IF @Date < CAST(GETDATE() AS DATE)
		SET @Date = DATEADD(MONTH, 1, @Date)
	INSERT INTO dbo.Automate
	(
	    CategoryID,
	    SubCategoryID,
	    DayOfMonth,
	    NextDueDate,
	    LastRan,
	    LastChecked,
		Amount
	)
	VALUES
	(   @Category,         -- CategoryID - int
	    @SubCategory,         -- SubCategoryID - int
	    @Day,         -- DayOfMonth - int
	    @Date, -- NextDueDate - date
	    NULL, -- LastRan - date
	    DATEADD(DAY, -1, GETDATE()),  -- LastChecked - date
		@Amount
	    )
END
GO


