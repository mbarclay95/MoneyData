USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetAutomations]    Script Date: 10/10/2018 9:35:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/27/2018
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAutomations]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT a.ID, c.Category, sc.SubCategory, a.Amount, a.NextDueDate, a.LastRan FROM dbo.Automate a 
	INNER JOIN dbo.Category c
	ON c.CategoryID = a.CategoryID
	INNER JOIN dbo.SubCategory sc
	ON sc.SubCategoryID = a.SubCategoryID
END
GO


