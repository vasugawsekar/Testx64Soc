IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES 
    WHERE TABLE_NAME = 'DeploymentLog'
)
BEGIN
    CREATE TABLE DeploymentLog (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Stage VARCHAR(50),
        LoggedAt DATETIME
    );
    PRINT 'Table DeploymentLog created.';
END
ELSE
BEGIN
    PRINT 'Table DeploymentLog already exists.';
END;
 
-- Insert current datetime as Post-deployment log
INSERT INTO DeploymentLog (Stage, LoggedAt)
VALUES ('Post-Deployment', GETDATE());
 
PRINT 'Post-deployment timestamp logged.';