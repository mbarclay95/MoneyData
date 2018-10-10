USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_RemoveEntry]    Script Date: 10/10/2018 9:36:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 7/9/2018
-- Description:	removes an entry
-- =============================================
CREATE PROCEDURE [dbo].[sp_RemoveEntry]
	-- Add the parameters for the stored procedure here
	@ID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE dbo.MoneyData
	WHERE ID = @ID

END
GO


