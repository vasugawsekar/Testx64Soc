CREATE TABLE [dbo].[CountryCode]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[CountryName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CountryCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CountryCode] ADD CONSTRAINT [PK__CountryC__3214EC27F131FC4F] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CountryCode_Code] ON [dbo].[CountryCode] ([CountryCode]) ON [PRIMARY]
GO
