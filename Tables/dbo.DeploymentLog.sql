CREATE TABLE [dbo].[DeploymentLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Stage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoggedAt] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeploymentLog] ADD CONSTRAINT [PK__Deployme__3214EC079D15FB4F] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
