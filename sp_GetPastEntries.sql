USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetPastEntries]    Script Date: 10/10/2018 9:35:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/21/2018
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetPastEntries]
	-- Add the parameters for the stored procedure here
	@INDICATOR INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @INDICATOR = 0
		SELECT * FROM CleanView ORDER BY MoneyDate DESC	
	ELSE	
		SELECT CategoryID, SubCategoryID, Amount, MoneyDate FROM dbo.MoneyData
END
GO


