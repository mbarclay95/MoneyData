USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_EditEntry]    Script Date: 10/10/2018 9:34:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 7/9/2018
-- Description:	updates and editted entry
-- =============================================
CREATE PROCEDURE [dbo].[sp_EditEntry]
	-- Add the parameters for the stored procedure here
	@ID INT,
	@Amount DECIMAL(18,2),
	@Date DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE dbo.MoneyData
   SET Amount = @Amount, MoneyDate = @Date
   WHERE ID = @ID

END
GO


