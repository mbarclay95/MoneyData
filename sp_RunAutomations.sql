USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_RunAutomations]    Script Date: 10/10/2018 9:37:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay	
-- Create date: 6/27/18
-- Description:	Runs all the automations
-- =============================================
CREATE PROCEDURE [dbo].[sp_RunAutomations]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @MINDATE DATE
	DECLARE @TEMPID INT
	DECLARE @AUTODATE DATE
	DECLARE @TEMPCAT INT
	DECLARE @TEMPSUBCAT INT
	DECLARE @TEMPAMOUNT DECIMAL(18,2)

	SET @MINDATE = (SELECT MIN(LastChecked) FROM dbo.Automate)

	IF @MINDATE < CAST(GETDATE() AS DATE)
		BEGIN
			WHILE (SELECT COUNT(*) FROM dbo.Automate WHERE LastChecked < CAST(GETDATE() AS DATE)) > 0
				BEGIN
					SELECT TOP 1 @TEMPID = ID, @AUTODATE = NextDueDate, @TEMPCAT = CategoryID, @TEMPSUBCAT = SubCategoryID, @TEMPAMOUNT = Amount FROM dbo.Automate WHERE LastChecked < CAST(GETDATE() AS DATE)
					IF @AUTODATE <= CAST(GETDATE() AS DATE)
						BEGIN
							EXEC dbo.sp_InsertEntry @Category = @TEMPCAT,       -- int
							                        @SubCategory = @TEMPSUBCAT,    -- int
							                        @Amount = @TEMPAMOUNT,      -- decimal(18, 2)
							                        @Date = @AUTODATE -- date
							UPDATE dbo.Automate
							SET LastRan = GETDATE(), LastChecked = GETDATE(), NextDueDate = DATEADD(MONTH, 1, NextDueDate)
							WHERE ID = @TEMPID
						END
					ELSE
						BEGIN
							UPDATE dbo.Automate
							SET LastChecked = GETDATE()
							WHERE ID = @TEMPID
						END	
				END	
		END
        
							
    

END
GO


