CREATE TABLE [dbo].[EmployeeDetails]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NickLastName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeeDetails] ADD CONSTRAINT [PK__Employee__3214EC2743DAE860] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
