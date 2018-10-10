USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_RemoveCatOrSubCat]    Script Date: 10/10/2018 9:36:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 7/11/18
-- Description:	Removes either a category or subcategory based on the indicator
-- =============================================
CREATE PROCEDURE [dbo].[sp_RemoveCatOrSubCat]
	@ID INT,
	@Indicator INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Indicator = 0
		BEGIN
			DELETE dbo.Category
			WHERE CategoryID = @ID
			DELETE dbo.SubCategory
			WHERE CategoryID = @ID
		END	
	ELSE 
		BEGIN
			DELETE dbo.SubCategory
			WHERE SubCategoryID = @ID
		END	

END
GO


