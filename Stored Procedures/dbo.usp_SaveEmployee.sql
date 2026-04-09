SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* ===========================================
   STORED PROCEDURE: Insert / Update Employee
   =========================================== */
CREATE   PROCEDURE [dbo].[usp_SaveEmployee]
    @Name NVARCHAR(100),
    @LastName NVARCHAR(100),
    @CountryCode NVARCHAR(10) = NULL
AS
BEGIN
    DECLARE @CountryID INT;

    IF @CountryCode IS NOT NULL
        SELECT @CountryID = ID
        FROM dbo.CountryCode
        WHERE CountryCode = @CountryCode;

    IF EXISTS (SELECT 1 FROM dbo.EmployeeDetails WHERE Name = @Name)
    BEGIN
        UPDATE dbo.EmployeeDetails
        SET CountryID = @CountryID
        WHERE Name = @Name;
    END
    ELSE
    BEGIN
        INSERT INTO dbo.EmployeeDetails (Name,LastName, CountryID)
        VALUES (@Name,@LastName, @CountryID);
    END
END;
GO
