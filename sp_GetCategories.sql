USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetCategories]    Script Date: 10/10/2018 9:35:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/18/18
-- Description:	gets the cateories
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetCategories]
	-- Add the parameters for the stored procedure here
	@select VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @select = 'Category'
		SELECT * FROM dbo.Category
	ELSE
		SELECT * FROM dbo.SubCategory

END
GO


