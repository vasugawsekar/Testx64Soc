SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* ===========================================
   SCALAR FUNCTION: Employee Initials
   =========================================== */
CREATE   FUNCTION [dbo].[fn_EmployeeInitials]
(
    @Name NVARCHAR(100)
)
RETURNS NVARCHAR(10)
AS
BEGIN
    DECLARE @Result NVARCHAR(10) = '';
    DECLARE @i INT = 1;

    SET @Name = LTRIM(RTRIM(ISNULL(@Name,'')));

    WHILE @i <= LEN(@Name)
    BEGIN
        IF @i = 1 OR SUBSTRING(@Name, @i - 1, 1) = ' '
            SET @Result += UPPER(SUBSTRING(@Name, @i, 1));
        SET @i += 1;
    END;

    RETURN @Result;
END;
GO
