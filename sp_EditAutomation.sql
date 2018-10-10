USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_EditAutomation]    Script Date: 10/10/2018 9:33:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/27/2018
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_EditAutomation]
	-- Add the parameters for the stored procedure here
	@ID INT,
	@Day INT,
	@Amount DECIMAL(18,2),
	@Date DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Date < CAST(GETDATE() AS DATE)
		SET @Date = DATEADD(MONTH, 1, @Date)

    UPDATE dbo.Automate
	SET DayOfMonth = @Day, Amount = @Amount, NextDueDate = @Date
	WHERE ID = @ID

	

END
GO


