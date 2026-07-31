```sql
USE [ERP_MASTERS]
GO

/****** Object:  Table [dbo].[MST_CITY]    Script Date: 06-01-2026 10:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MST_CITY](
	[CITY_CODE] [int] NOT NULL,
	[CITY_NAME] [dbo].[UTYPE_SHORT_Text3] NULL,
	[DISTRICT_NAME] [dbo].[UTYPE_SHORT_Text3] NULL,
	[STATE_NAME] [dbo].[UTYPE_SHORT_Text3] NULL,
	[NATION] [dbo].[UTYPE_SHORT_Text3] NULL,
	[DELETE_REASON] [dbo].[UTYPE_Text2] NULL,
	[CRT_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[CRT_DATE_TIME] [datetime] NULL,
	[APPROVED_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[APPROVED_DATE_TIME] [datetime] NULL,
	[STATUS_CODE] [int] NULL,
	[SYS_LOGIN] [dbo].[UTYPE_SHORT_Text1] NULL,
	[SYS_DATE_TIME] [datetime] NULL,
	[CHG_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[CHG_DATE_TIME] [datetime] NULL,
	[DISTANCE] [dbo].[UTYPE_Decimal2] NULL,
 CONSTRAINT [PK_MST_CITY] PRIMARY KEY CLUSTERED 
(
	[CITY_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RECORD CREATED BY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'CRT_BY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Created Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'CRT_DATE_TIME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Approved By' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'APPROVED_BY'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Approved Datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'APPROVED_DATE_TIME'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STATUS CODE LIVE 0, 1 DELETED, 101 ...... APPROVAL, 2 LOCK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'STATUS_CODE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Database System Login' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'SYS_LOGIN'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Database System Date Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MST_CITY', @level2type=N'COLUMN',@level2name=N'SYS_DATE_TIME'
GO
```   