USE [21291001_ETL];
GO

INSERT INTO clean_leads_dirty (
    account_id, lead_owner, first_name, last_name, company,
    phone_1, phone_2, email_1, email_2, website, source, deal_stage, notes
)
SELECT
    NULLIF(LTRIM(RTRIM([Account_Id])), ''),
    LTRIM(RTRIM([Lead_Owner])),
    NULLIF(LTRIM(RTRIM([First_Name])), ''),
    NULLIF(LTRIM(RTRIM([Last_Name])), ''),
    LTRIM(RTRIM([Company])),
    LTRIM(RTRIM([Phone_1])),
    NULLIF(LTRIM(RTRIM([Phone_2])), ''),
    LOWER(NULLIF(LTRIM(RTRIM([Email_1])), '')),
    LOWER(NULLIF(LTRIM(RTRIM([Email_2])), '')),
    LTRIM(RTRIM([Website])),
    NULLIF(LTRIM(RTRIM([Source])), ''),
    LTRIM(RTRIM([Deal_Stage])),
    NULLIF(LTRIM(RTRIM([Notes])), '')
FROM [dbo].[raw_leads_dirty]
WHERE NULLIF(LTRIM(RTRIM([Account_Id])), '') IS NOT NULL;