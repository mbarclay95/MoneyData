USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_AddCatOrSubCat]    Script Date: 10/10/2018 9:33:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay	
-- Create date: 7/11/2018
-- Description:	Adds a new Category or subcategory based on the categoryID
-- =============================================
CREATE PROCEDURE [dbo].[sp_AddCatOrSubCat]
	@Name VARCHAR(255),
	@CategoryID INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @CategoryID = 0
		INSERT INTO dbo.Category
		(
		    Category
		)
		VALUES
		(   @Name -- Category - varchar(150)
		    )
	ELSE	
		INSERT INTO dbo.SubCategory
		(
		    SubCategory,
		    CategoryID
		)
		VALUES
		(   @Name, -- SubCategory - varchar(150)
		    @CategoryID   -- CategoryID - int
		    )

END
GO


