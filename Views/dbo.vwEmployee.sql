SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* ===========================================
   VIEW: Employee + Country
   =========================================== */
CREATE   VIEW [dbo].[vwEmployee]
AS
SELECT
    e.ID,
    e.Name,
    c.CountryName,
    c.CountryCode
FROM dbo.EmployeeDetails e
LEFT JOIN dbo.CountryCode c
    ON e.CountryID = c.ID;
GO
