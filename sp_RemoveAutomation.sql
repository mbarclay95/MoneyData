USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_RemoveAutomation]    Script Date: 10/10/2018 9:36:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/27/2018
-- Description:	removes an automation
-- =============================================
CREATE PROCEDURE [dbo].[sp_RemoveAutomation]
	-- Add the parameters for the stored procedure here
	@ID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE dbo.Automate
	WHERE id = @ID

END
GO


