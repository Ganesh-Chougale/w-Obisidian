## 1. Table create script
```sql
USE [SRF_ERP]
GO

/****** Object:  Table [dbo].[MST_BRANCH_DEPT_MIN_MAX]    Script Date: 21-08-2026 12:20:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MST_BRANCH_DEPT_MIN_MAX](
	[MATERIAL_CODE] [int] NOT NULL,
	[BRANCH_CODE] [int] NOT NULL,
	[DEPT_CODE] [int] NOT NULL,
	[AMEND_NO] [int] NOT NULL,
	[TRN_DATE] [dbo].[UTYPE_Date] NULL,
	[MIN_QTY] [dbo].[UTYPE_Decimal1] NULL,
	[MAX_QTY] [dbo].[UTYPE_Decimal1] NULL,
	[STATUS_CODE] [int] NULL,
	[CRT_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[CRT_DATE_TIME] [datetime] NULL,
	[CHG_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[CHG_DATE_TIME] [datetime] NULL,
	[APPROVED_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
	[APPROVED_DATE_TIME] [datetime] NULL,
	[SYS_LOGIN] [dbo].[UTYPE_SHORT_Text1] NULL,
	[SYS_DATE_TIME] [datetime] NULL,
 CONSTRAINT [PK_MST_BRANCH_DEPT_MIN_MAX] PRIMARY KEY CLUSTERED 
(
	[MATERIAL_CODE] ASC,
	[BRANCH_CODE] ASC,
	[DEPT_CODE] ASC,
	[AMEND_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



```   

## 2. MenuId insert Script
```sql
USE [ERP_MASTERS]
GO

INSERT INTO [dbo].[MST_MENU]
           (
                [MENU_ID], [MENU_SHORT_NAME], [MENU_NAME], [MENU_DOC_NO], 
                [ALLOW_PAGING], [PAGE_RECORDS], [VIEW_DAYS], [PARENT_MENU_ID], 
                [APPROVAL_REQ], [APPROVAL_LEVEL], [CRT_BY], [STATUS_CODE], 
                [SYS_LOGIN], [SYS_DATE_TIME], [MODULE_ID]
		   )
     VALUES
           (
				40200, 'BRDEPMM', 'BRANCH DEPARTMENT WISE MIN MAX', 40200,  
                'TRUE', 60, 60, 401, 
                'TRUE', 0, 'DMP', 0, 
                'sa', '2026-07-31 13:17:23.713', 4
		   )
GO

```   

## 3. include entire stored procedure/s if has any