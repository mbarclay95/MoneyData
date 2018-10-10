USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_EditCatOrSubCat]    Script Date: 10/10/2018 9:34:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 7/11/2018
-- Description:	Edits categories or subcategories based on the indicator
-- =============================================
CREATE PROCEDURE [dbo].[sp_EditCatOrSubCat]
	@ID INT,
	@Name VARCHAR(255),
	@Indicator INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	IF @Indicator = 0
		UPDATE dbo.Category
		SET Category = @Name
		WHERE CategoryID = @ID
	ELSE
		UPDATE dbo.SubCategory
		SET SubCategory = @Name
		WHERE SubCategoryID = @ID

END
GO


