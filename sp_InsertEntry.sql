USE [Money]
GO

/****** Object:  StoredProcedure [dbo].[sp_InsertEntry]    Script Date: 10/10/2018 9:36:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Michael Barclay
-- Create date: 6/20/2018
-- Description:	Insert an entry
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertEntry]
	-- Add the parameters for the stored procedure here
	@Category INT,
	@SubCategory INT,
	@Amount DECIMAL (18,2),
	@Date DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.MoneyData
    (
        Amount,
        CreatedDate,
        MoneyDate,
        CategoryID,
        SubCategoryID
    )
    VALUES
    (   @Amount,      -- Amount - decimal(18, 0)
        GETDATE(), -- CreatedDate - datetime
        @Date, -- MoneyDate - date
        @Category,         -- CategoryID - int
        @SubCategory          -- SubCategoryID - int
        )
END
GO


