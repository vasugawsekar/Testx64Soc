SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[FunctionName]
    (
    @ID UNIQUEIDENTIFIER
    )
RETURNS NVARCHAR(MAX)
AS
    BEGIN
        RETURN JSON_OBJECT('id' : @ID,
                           'body' : 'adkjhfsdkjhfskfhskjfh')
    END;
GO
