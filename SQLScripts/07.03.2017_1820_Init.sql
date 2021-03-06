USE [ncels]
GO
/****** Object:  User [prismUser]    Script Date: 10.03.2017 2:23:54 ******/
CREATE USER [prismUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT AUTHORITY\NETWORK SERVICE]    Script Date: 10.03.2017 2:23:54 ******/
CREATE USER [NT AUTHORITY\NETWORK SERVICE] FOR LOGIN [NT AUTHORITY\NETWORK SERVICE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [i1cuser]    Script Date: 10.03.2017 2:23:54 ******/
CREATE USER [i1cuser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'prismUser'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'NT AUTHORITY\NETWORK SERVICE'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'i1cuser'
GO
sys.sp_addrolemember @rolename = N'db_accessadmin', @membername = N'i1cuser'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'i1cuser'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'i1cuser'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [DbSync]    Script Date: 10.03.2017 2:23:54 ******/
CREATE SCHEMA [DbSync]
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[TmcCode] [uniqueidentifier] NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[Producer] [nvarchar](450) NULL,
	[ProducerExpirationDate] [date] NULL,
	[PartyNumber] [nvarchar](450) NULL,
	[ShelfNumber] [nvarchar](450) NULL,
	[CupboardNumber] [nvarchar](450) NULL,
	[WarehouseNumber] [uniqueidentifier] NULL,
	[DateOfReceiving] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[TmcCode] [uniqueidentifier] NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[PowerOfAttorneyId_1C] [uniqueidentifier] NULL,
	[PowerOfAttorneyNumber_1C] [nvarchar](450) NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[OrganizationName] [nvarchar](4000) NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[DepartmentName] [nvarchar](4000) NULL,
	[OwnerEmployeeId] [uniqueidentifier] NULL,
	[OwnerEmployeeFio] [nvarchar](450) NULL,
	[ExploitatioinDatetime] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[ExpertiseApplicationId] [uniqueidentifier] NULL,
	[ExpertiseApplicationNumber] [nvarchar](450) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_lims_ApplicationElements_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_lims_ApplicationElements_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[TmcCode] [uniqueidentifier] NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[Kind] [nvarchar](450) NULL,
	[KindCode] [uniqueidentifier] NULL,
	[Paking] [nvarchar](450) NULL,
	[PakingCode] [uniqueidentifier] NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[refApplication] [uniqueidentifier] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_lims_Applications_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_lims_Applications_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [uniqueidentifier] NULL,
	[ContractId] [uniqueidentifier] NULL,
	[ContractNumber] [nvarchar](450) NULL,
	[ContractDate] [date] NULL,
	[LastDeliveryDate] [date] NULL,
	[ProviderId] [uniqueidentifier] NULL,
	[Provider] [nvarchar](450) NULL,
	[ProviderBin] [nvarchar](450) NULL,
	[FrpersonId] [uniqueidentifier] NULL,
	[FrpersonFio] [nvarchar](450) NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[FullDelivery] [bit] NULL,
	[PowerOfAttorneyId_1C] [uniqueidentifier] NULL,
	[PowerOfAttorneyNumber_1C] [nvarchar](450) NULL,
	[PowerOfAttorneyDatetime_1C] [datetime] NULL,
	[FilePath] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateDatetime] [datetime] NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_primary_ApplicationElements_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_primary_ApplicationElements_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[DosageForm] [nvarchar](4000) NULL,
	[DosageCode] [uniqueidentifier] NULL,
	[Packing] [nvarchar](4000) NULL,
	[PackingCode] [uniqueidentifier] NULL,
	[Type] [nvarchar](4000) NULL,
	[TypeCode] [uniqueidentifier] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[Producer] [nvarchar](4000) NULL,
	[ProducerCode] [uniqueidentifier] NULL,
	[ProducerCountry] [nvarchar](4000) NULL,
	[ProducerCountryCode] [uniqueidentifier] NULL,
	[ProducerType] [nvarchar](4000) NULL,
	[ProducerTypeCode] [uniqueidentifier] NULL,
	[Representative] [nvarchar](4000) NULL,
	[RepresentativeCode] [uniqueidentifier] NULL,
	[ContractNumber] [nvarchar](4000) NULL,
	[ContractBeginDate] [datetime] NULL,
	[ContractEndDate] [datetime] NULL,
	[RepresentativeAddress] [nvarchar](4000) NULL,
	[RepresentativePhone] [nvarchar](4000) NULL,
	[Payer] [nvarchar](4000) NULL,
	[PayerAddress] [nvarchar](4000) NULL,
	[PayerBank] [nvarchar](4000) NULL,
	[PayerAccount] [nvarchar](4000) NULL,
	[PayerBIK] [nvarchar](4000) NULL,
	[PayerRNN] [nvarchar](4000) NULL,
	[PayerBIN] [nvarchar](4000) NULL,
	[PayerIIN] [nvarchar](4000) NULL,
	[PayerСurrency] [nvarchar](4000) NULL,
	[PayerСurrencyCode] [uniqueidentifier] NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[refPrimaryApplication] [uniqueidentifier] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_primary_Applications_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_primary_Applications_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[Number] [nvarchar](450) NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[Note] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_trl_DirectionElements_BulkType]    Script Date: 10.03.2017 2:23:54 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_trl_DirectionElements_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [uniqueidentifier] NULL,
	[Number] [nvarchar](4000) NULL,
	[Name] [nvarchar](512) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[refDirection] [uniqueidentifier] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DbSync].[sync_fr_I1c_trl_DirectionsToPay_BulkType]    Script Date: 10.03.2017 2:23:55 ******/
CREATE TYPE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_BulkType] AS TABLE(
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [uniqueidentifier] NULL,
	[Number] [nvarchar](4000) NULL,
	[Producer] [nvarchar](4000) NULL,
	[ProducerCode] [uniqueidentifier] NULL,
	[Payer] [nvarchar](4000) NULL,
	[PayerCode] [uniqueidentifier] NULL,
	[Translator] [nvarchar](4000) NULL,
	[TraslatorCode] [uniqueidentifier] NULL,
	[Status] [nvarchar](4000) NULL,
	[StatusCode] [uniqueidentifier] NULL,
	[InvoiceCode_1C] [nvarchar](512) NULL,
	[InvoiceNumber_1C] [nvarchar](512) NULL,
	[InvoiceDatetime_1C] [datetime] NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedFunction [dbo].[autopropertyId]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[autopropertyId] 
(
	@p1 uniqueidentifier,
	@p2 nvarchar(200)
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @p3 nvarchar(MAX)
	SET @p3 = ''
	
	SELECT @p3 = @p3 + CONVERT(nvarchar(MAX), links.OwnerId) + ', ' FROM LinkDocuments as links
	WHERE links.DocumentId = @p1 and links.PropertyName = @p2
	
	if (LEN(@p3) > 1)
		SET @p3 = LEFT(@p3, LEN(@p3) - 1)
	
	RETURN @p3
END





GO
/****** Object:  UserDefinedFunction [dbo].[autopropertyValue]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[autopropertyValue] 
(
	@p1 uniqueidentifier,
	@p2 nvarchar(200)
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @p3 nvarchar(MAX)
	SET @p3 = ''
	
	SELECT @p3 = @p3 + (SELECT docs.DisplayName FROM Documents as docs WHERE docs.Id = links.OwnerId) + ', ' FROM LinkDocuments as links
	WHERE links.DocumentId = @p1 and links.PropertyName = @p2
	
	if (LEN(@p3) > 1)
		SET @p3 = LEFT(@p3, LEN(@p3) - 1)
	
	RETURN @p3
END





GO
/****** Object:  UserDefinedFunction [dbo].[DisplayNameEmployee]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Дмитрий Овсейкин
-- Create date: 13.06.2014
-- Description:	Имя Employe c департаментом
-- =============================================
CREATE FUNCTION [dbo].[DisplayNameEmployee]
(
	-- Add the parameters for the function here
	@id nvarchar(max)
)
RETURNS nvarchar(450)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result nvarchar(450)

	-- Add the T-SQL statements to compute the return value here
	SELECT 	@result = cast( (case when d.ShortName is null then e.ShortName +  '(' + otdel.ShortName + ')' else e.ShortName +  '(' + d.ShortName+ ' - '+ otdel.ShortName + ')'end ) as nvarchar(450)) 
  FROM [Employees] as e 
  left join Units as p on e.PositionId = p.Id
  left join Units as otdel on otdel.Id = p.ParentId
  left join Units as d on d.Id = otdel.ParentId
  where e.Id = cast(@id as uniqueidentifier)
	-- Return the result of the function
	if (@result is null or @result = '')
		RETURN (SELECT DisplayName FROM Employees Where Id = cast(@id as uniqueidentifier))
	RETURN @result

END





GO
/****** Object:  UserDefinedFunction [dbo].[DisplayNameEx]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
create FUNCTION [dbo].[DisplayNameEx] 
(
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @p3 nvarchar(MAX)
	SET @p3 = ''
	
	SELECT @p3 = @p3 + (SELECT docs.DisplayName + ' ' + docs.ExecutorsValue FROM Documents as docs WHERE docs.Id = links.OwnerId) + ', ' FROM LinkDocuments as links
	WHERE links.DocumentId = @p1 and links.PropertyName = @p2
	
	if (LEN(@p3) > 1)
		SET @p3 = LEFT(@p3, LEN(@p3) - 1)
	
	RETURN @p3
END





GO
/****** Object:  UserDefinedFunction [dbo].[GetCours]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dmitriy Ovseikin
-- Create date: 19.02.2013
-- Description:	Функиция расчитывающая курс 
-- =============================================
create FUNCTION [dbo].[GetCours]
(
	-- Add the parameters for the function here
	@dateStart date,
	@dateEnd date,
	@period int,
	@year int 
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @YearStart int = Year(@dateStart)
	DECLARE @YearEnd int = Year(@dateEnd)
	DECLARE @MonthStart int = Month(@dateStart)
	DECLARE @MonthEnd int = Month(@dateEnd)
	DECLARE @CurrentYear int 
	set @CurrentYear = @year - @YearStart
	IF (@YearEnd < @year)
	return 0
	if (@YearEnd = @year and @MonthEnd < 9 and @period=1)
	return 0
	if (@CurrentYear=0 and @period=0)
	return 1
	if (@CurrentYear=0 and @period=1)
	return 2
	if (@period=0)
	return @CurrentYear
	if (@period=1)
	return (@CurrentYear +1)
	-- Return the result of the function
	RETURN @CurrentYear

END





GO
/****** Object:  UserDefinedFunction [dbo].[GetDepsInDep]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetDepsInDep]
( 
 -- Add the parameters for the function here
 @id uniqueidentifier
)
RETURNS @table TABLE 
(
 Id uniqueidentifier
)
AS

BEGIN

 if ((select ep.PermissionValue from EmployeePermissions as ep where ep.EmployeeId = @id and ep.PermissionKey = 'IsAllStructureDashboard') = 'all')
 begin
  
  ;WITH tableR (parent, idElement)
  AS
  (
  
   SELECT e.ParentId, e.Id
   FROM Units AS e   
   WHERE ParentId = (select OrganizationId from Employees where Id = @id) and Type = 1
   UNION ALL
  
   SELECT e.ParentId, e.Id
   FROM Units AS e 
   INNER JOIN tableR AS d
    ON e.ParentId = d.idElement
    where Type = 1
  )

  INSERT INTO @table (Id)
   select idElement from tableR
 end
 else
 begin
  set @id = (select parentid from units where EmployeeId = @id)

  INSERT INTO @table (Id) VALUES (@id);

  ;with n(Id, ParentId, Type) as (
  select Id, ParentId, Type from Units
  where ParentId=@id
  union all
  select nplus1.Id, nplus1.ParentId, nplus1.Type
   from 
  Units as nplus1 inner join n on nplus1.ParentId=n.Id
  )
  INSERT INTO @table (Id)
  select n.Id
  from n
  where Type = 1
 end
 RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetEmployeesInDep]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetEmployeesInDep]
( 
 -- Add the parameters for the function here
 @id uniqueidentifier,
 @param nvarchar(8)
)
RETURNS @table TABLE 
(
 Id uniqueidentifier
)
AS

BEGIN
 
if ((select ep.PermissionValue from EmployeePermissions as ep where ep.EmployeeId = @id and ep.PermissionKey = 'IsAllStructureDashboard') = 'all')
 begin
  INSERT INTO @table (Id)
   select Id from Employees
   where OrganizationId = (select OrganizationId from Employees where Employees.Id = @id)
 end
 else
 begin
  if (@param = 'false')
  begin
   INSERT INTO @table (Id)
   select @id
  end
  else
  begin
   set @id = (select parentid from units where EmployeeId = @id)
 
   ;with n(Id, ParentId, Type, EmployeeId) as (
   select Id, ParentId, Type, EmployeeId from Units
   where ParentId=@id
   union all
   select nplus1.Id, nplus1.ParentId, nplus1.Type, nplus1.EmployeeId
    from 
   Units as nplus1 inner join n on nplus1.ParentId=n.Id
   )
   INSERT INTO @table (Id)
   select n.EmployeeId from n
   where Type = 2 and n.EmployeeId is not null
  end
 end
 RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[insert] 
(
	@text nvarchar(MAX),
	@p1 nvarchar(MAX)
)
RETURNS nvarchar(MAX)
AS
BEGIN
	
	if (@text is NULL or @text = '')
		SET @text = @p1
	ELSE
		SET @text = @text + ', ' + CONVERT(NVARCHAR(MAX), @p1)
	
	RETURN @text
END






GO
/****** Object:  UserDefinedFunction [dbo].[islockedout]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[islockedout]
(
	@p1 nvarchar(MAX)
)
RETURNS bit
AS
BEGIN
	return
	(Select [dbo].[aspnet_Membership].IsLockedOut FROM [dbo].[aspnet_Membership]
		WHERE [dbo].[aspnet_Membership].UserId = 
			(SELECT [dbo].[aspnet_Users].UserId FROM [dbo].[aspnet_Users]
				WHERE [dbo].[aspnet_Users].UserName = @p1))

END





GO
/****** Object:  UserDefinedFunction [dbo].[lastlogindate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[lastlogindate]
(
	@p1 nvarchar(MAX)
)
RETURNS datetime
AS
BEGIN
	return
	(Select DATEADD(hour, 6, [dbo].[aspnet_Membership].LastLoginDate) FROM [dbo].[aspnet_Membership]
		WHERE [dbo].[aspnet_Membership].UserId = 
			(SELECT [dbo].[aspnet_Users].UserId FROM [dbo].[aspnet_Users]
				WHERE [dbo].[aspnet_Users].UserName = @p1))

END





GO
/****** Object:  UserDefinedFunction [dbo].[minus]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <06.07.2011>
-- Description:	<Функция Разность A-B>
-- =============================================
CREATE FUNCTION [dbo].[minus] 
(	
    @pA NVARCHAR(MAX),
    @pB NVARCHAR(MAX)
)
RETURNS @RtnValue TABLE 
(
	Value NVARCHAR(MAX)
)
AS
BEGIN
	DECLARE @A TABLE 
	(
		Value NVARCHAR(MAX)
	)
	DECLARE @B TABLE 
	(
		Value NVARCHAR(MAX)
	) 
	
	INSERT INTO @A(Value)
	SELECT Value FROM [dbo].[split](@pA,', ')
	INSERT INTO @B(Value)
	SELECT Value FROM [dbo].[split](@pB,', ')
	
	INSERT INTO @RtnValue (Value)
		SELECT Value FROM @A WHERE Value NOT IN (SELECT Value FROM @B)
	
	RETURN
END





GO
/****** Object:  UserDefinedFunction [dbo].[RecursionActivityParent]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[RecursionActivityParent]
(
	-- Add the parameters for the function here
	@Id uniqueidentifier
)
RETURNS bit
AS
BEGIN
declare @parentId uniqueidentifier
declare @isMainLine bit
declare @ResponsibleId uniqueidentifier
declare @AutorId uniqueidentifier
	-- Declare the return variable here
	select  @parentId = a.ParentId, @isMainLine = a.IsMainLine,@ResponsibleId = a.ResponsibleId, @AutorId = a.AuthorId   from Activities as a where a.Id = @Id

	if (@parentId is null)
		return @isMainLine
	 
	return dbo.RecursionActivityParent(@parentId)
END




GO
/****** Object:  UserDefinedFunction [dbo].[replacefirst]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[replacefirst] 
(
	@text nvarchar(MAX),
	@p1 nvarchar(MAX)
)
RETURNS nvarchar(MAX)
AS
BEGIN
	DECLARE @newtext nvarchar(MAX)
	DECLARE @oldtext nvarchar(MAX)
	SET @oldtext = @text
	
	SET @newtext = STUFF(@text, CHARINDEX(@p1 + ', ', @text), LEN(@p1 + ', '), '')
	if (@newtext = @oldtext)
	BEGIN
		SET @newtext = STUFF(@text, CHARINDEX(', ' + @p1, @text), LEN(', ' + @p1), '')
		if (@newtext = @oldtext)
			SET @newtext = STUFF(@text, CHARINDEX(@p1, @text), LEN(@p1), '')
	END
	
	RETURN @newtext
END





GO
/****** Object:  UserDefinedFunction [dbo].[split]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <06.07.2011>
-- Description:	<Функция парсера строки>
-- =============================================
CREATE FUNCTION [dbo].[split] 
(    
    @RowData NVARCHAR(MAX),
    @Delimeter NVARCHAR(MAX)
)
RETURNS @RtnValue TABLE 
(
	Value NVARCHAR(MAX)
) 
AS
BEGIN
	if (len(@RowData) > 0)
	BEGIN
		DECLARE @Iterator INT
		SET @Iterator = 1

		DECLARE @FoundIndex INT
		SET @FoundIndex = CHARINDEX(@Delimeter,@RowData)

		WHILE (@FoundIndex>0)
		BEGIN
			INSERT INTO @RtnValue (Value)
			SELECT 
				Value = LTRIM(RTRIM(SUBSTRING(@RowData, 1, @FoundIndex - 1)))

			SET @RowData = SUBSTRING(@RowData,
					@FoundIndex + DATALENGTH(@Delimeter) / 2,
					LEN(@RowData))

			SET @Iterator = @Iterator + 1
			SET @FoundIndex = CHARINDEX(@Delimeter, @RowData)
		END
	    
		INSERT INTO @RtnValue (Value)
		SELECT Value = LTRIM(RTRIM(@RowData))
	END
	RETURN
END







GO
/****** Object:  UserDefinedFunction [dbo].[split2]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <06.07.2011>
-- Description:	<Функция парсера строки>
-- =============================================
CREATE FUNCTION [dbo].[split2] 
(    
    @RowData NVARCHAR(MAX),
    @Delimeter NVARCHAR(MAX)
)
RETURNS @RtnValue TABLE 
(
	ID INT IDENTITY(1,1),
	Value NVARCHAR(MAX)
) 
AS
BEGIN
		DECLARE @index INT
		SET @index = 0

	if (len(@RowData) > 0)
	BEGIN
		DECLARE @Iterator INT
		SET @Iterator = 1

		DECLARE @FoundIndex INT
		SET @FoundIndex = CHARINDEX(@Delimeter,@RowData)

		WHILE (@FoundIndex>0)
		BEGIN
			INSERT INTO @RtnValue (Value)
			SELECT 
				Value = LTRIM(RTRIM(SUBSTRING(@RowData, 1, @FoundIndex - 1)))

			SET @RowData = SUBSTRING(@RowData,
					@FoundIndex + DATALENGTH(@Delimeter) / 2,
					LEN(@RowData))

			SET @Iterator = @Iterator + 1
			SET @FoundIndex = CHARINDEX(@Delimeter, @RowData)
		END
	    
		INSERT INTO @RtnValue (Value)
		SELECT Value = LTRIM(RTRIM(@RowData))
	END
	RETURN
END






GO
/****** Object:  UserDefinedFunction [dbo].[split21]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <06.07.2011>
-- Description:	<Функция парсера строки>
-- =============================================
CREATE FUNCTION [dbo].[split21] 
(    
    @RowData NVARCHAR(MAX),
    @Delimeter NVARCHAR(MAX)
)
RETURNS @RtnValue TABLE 
(
	ID INT IDENTITY(1,1),
	Value NVARCHAR(MAX)
) 
AS
BEGIN
		DECLARE @index INT
		SET @index = 0

	if (len(@RowData) > 0)
	BEGIN
		DECLARE @Iterator INT
		SET @Iterator = 1

		DECLARE @FoundIndex INT
		SET @FoundIndex = CHARINDEX(@Delimeter,@RowData)

		WHILE (@FoundIndex>0)
		BEGIN
			INSERT INTO @RtnValue (Value)
			SELECT 
				Value = LTRIM(RTRIM(SUBSTRING(@RowData, 1, @FoundIndex - 1)))

			SET @RowData = SUBSTRING(@RowData,
					@FoundIndex + DATALENGTH(@Delimeter) / 2,
					LEN(@RowData))

			SET @Iterator = @Iterator + 1
			SET @FoundIndex = CHARINDEX(@Delimeter, @RowData)
		END
	    
		INSERT INTO @RtnValue (Value)
		SELECT Value = LTRIM(RTRIM(@RowData))
	END
	RETURN
END






GO
/****** Object:  UserDefinedFunction [dbo].[split3]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <06.07.2011>
-- Description:	<Функция парсера строки>
-- =============================================
create FUNCTION [dbo].[split3] 
(    
    @RowData NVARCHAR(MAX),
    @Delimeter NVARCHAR(MAX)
)
RETURNS nvarchar(MAX)

AS
BEGIN
		DECLARE @index INT
		SET @index = 0

		declare @str NVARCHAR(MAX)
		set @str = ''

	if (len(@RowData) > 0)
	BEGIN
		DECLARE @Iterator INT
		SET @Iterator = 1

		DECLARE @FoundIndex INT
		SET @FoundIndex = CHARINDEX(@Delimeter,@RowData)

		WHILE (@FoundIndex>0)
		BEGIN
			set @str = @str + (SELECT Value = SUBSTRING(LTRIM(RTRIM(SUBSTRING(@RowData, 1, @FoundIndex - 1))),1,1))

			SET @RowData = SUBSTRING(@RowData,
					@FoundIndex + DATALENGTH(@Delimeter) / 2,
					LEN(@RowData))

			SET @Iterator = @Iterator + 1
			SET @FoundIndex = CHARINDEX(@Delimeter, @RowData)
		END
	    
		set @str = @str + 	(SELECT Value = SUBSTRING(LTRIM(RTRIM(@RowData)),1,1))
	END
	RETURN @str
END






GO
/****** Object:  UserDefinedFunction [dbo].[trim]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[trim] 
(
	@text nvarchar(MAX),
	@p1 int
)
RETURNS nvarchar(MAX)
AS
BEGIN
	RETURN LEFT(@text, LEN(@text) - @p1 + 1)
END





GO
/****** Object:  Table [dbo].[AccessDocuments]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessDocuments](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AccessDocuments_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[ObjectId] [uniqueidentifier] NOT NULL,
	[PropertyName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_AccessDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessTasks]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTasks](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AccessTasks_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[ObjectId] [uniqueidentifier] NOT NULL,
	[PropertyName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_AccessTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Activities]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[Id] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](4000) NULL,
	[Type] [int] NULL,
	[AuthorId] [nvarchar](4000) NULL,
	[AuthorValue] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NULL,
	[ExecutionDate] [datetime] NULL,
	[ExecutorsId] [nvarchar](4000) NULL,
	[ExecutorsValue] [nvarchar](4000) NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[DocumentValue] [nvarchar](4000) NULL,
	[IsParrent] [bit] NOT NULL CONSTRAINT [DF_Activities_IsParrent]  DEFAULT ((0)),
	[ParentId] [uniqueidentifier] NULL,
	[ParentTask] [uniqueidentifier] NULL,
	[ResponsibleId] [nvarchar](4000) NULL,
	[ResponsibleValue] [nvarchar](4000) NULL,
	[IsNotActive] [bit] NOT NULL CONSTRAINT [DF_Activities_IsNotActive]  DEFAULT ((0)),
	[IsCurrent] [bit] NOT NULL CONSTRAINT [DF_Activities_IsCurrent]  DEFAULT ((0)),
	[ModifiedUser] [nvarchar](4000) NULL,
	[IsMainLine] [bit] NOT NULL CONSTRAINT [DF_Activities_IsMainLine]  DEFAULT ((0)),
	[Ip] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[TypeEx] [int] NOT NULL CONSTRAINT [DF_Activities_TypeEx]  DEFAULT ((0)),
	[Branch] [int] NOT NULL CONSTRAINT [DF_Activities_Branch]  DEFAULT ((0)),
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Archives]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[ConnectionString] [nvarchar](4000) NULL,
	[DbName] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[Owner] [nvarchar](4000) NULL,
	[Path] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Archives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](512) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](256) NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](256) NULL,
	[MobilePIN] [nvarchar](32) NULL,
	[Email] [nvarchar](512) NULL,
	[LoweredEmail] [nvarchar](512) NULL,
	[PasswordQuestion] [nvarchar](512) NULL,
	[PasswordAnswer] [nvarchar](256) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](512) NULL,
	[LoweredPath] [nvarchar](512) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](512) NULL,
	[LoweredRoleName] [nvarchar](512) NULL,
	[Description] [nvarchar](512) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](512) NULL,
	[LoweredUserName] [nvarchar](512) NULL,
	[MobileAlias] [nvarchar](32) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](512) NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](2048) NULL,
	[ApplicationPath] [nvarchar](512) NULL,
	[ApplicationVirtualPath] [nvarchar](512) NULL,
	[MachineName] [nvarchar](512) NULL,
	[RequestUrl] [nvarchar](2048) NULL,
	[ExceptionType] [nvarchar](512) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Changes]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Changes](
	[Id] [uniqueidentifier] NOT NULL,
	[RegisterProjectId] [uniqueidentifier] NULL,
	[Name] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[Conditions] [nvarchar](500) NULL,
 CONSTRAINT [PK_Changes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[AuthorId] [uniqueidentifier] NOT NULL,
	[AuthorValue] [nvarchar](4000) NOT NULL,
	[refObjectId] [uniqueidentifier] NOT NULL,
	[refParentComment] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compositions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compositions](
	[Id] [uniqueidentifier] NOT NULL,
	[MaterialTypeDicId] [uniqueidentifier] NULL,
	[MaterialNameDicId] [uniqueidentifier] NULL,
	[MaterialName] [nvarchar](500) NULL,
	[Count] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Compositions_Count]  DEFAULT ((0)),
	[NormativeDocument] [nvarchar](500) NULL,
	[CountryDicId] [uniqueidentifier] NULL,
	[City] [nvarchar](500) NULL,
	[Street] [nvarchar](500) NULL,
	[House] [nvarchar](500) NULL,
	[IsControl] [bit] NOT NULL CONSTRAINT [DF_Compositions_IsControl]  DEFAULT ((0)),
	[IsPoison] [bit] NOT NULL CONSTRAINT [DF_Compositions_IsPoison]  DEFAULT ((0)),
	[MaterialGainDicId] [uniqueidentifier] NULL,
	[MaterialGain] [nvarchar](500) NULL,
	[MaterialOriginDicId] [uniqueidentifier] NULL,
	[ObjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Compositions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[Id] [uniqueidentifier] NOT NULL,
	[ManufacturerOrganizationId] [uniqueidentifier] NULL,
	[ApplicantOrganizationId] [uniqueidentifier] NULL,
	[DoverennostTypeDicId] [uniqueidentifier] NULL,
	[DoverennostNumber] [nvarchar](500) NULL,
	[DoverennostCreatedDate] [date] NULL,
	[DoverennostExpiryDate] [date] NULL,
	[HolderOrganizationId] [uniqueidentifier] NULL,
	[PayerOrganizationId] [uniqueidentifier] NULL,
	[Number] [nvarchar](500) NULL,
	[Status] [int] NOT NULL CONSTRAINT [DF_Contracts_Status]  DEFAULT ((0)),
	[CreatedDate] [date] NULL,
	[ContractId] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[ContractDate] [date] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[IsExpired] [bit] NULL,
	[IsSite] [bit] NULL,
	[IsHasDoverennostNumber] [bit] NOT NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
	[PayerTranslationOrganizationId] [uniqueidentifier] NULL,
	[WithManufacturer] [bit] NOT NULL,
	[StatusId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIC_IcdDeseases]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIC_IcdDeseases](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CodeICD] [nvarchar](512) NULL,
	[DiseaseOfICD] [nvarchar](max) NULL,
	[SysnonimAndRareDesease] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIC_OrphanDrugs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIC_OrphanDrugs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreateDatetime] [datetime] NOT NULL CONSTRAINT [DF_DIC_OrphanDrugs_CreateDatetime]  DEFAULT (getdate())
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dictionaries]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionaries](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Dictionaries_Id]  DEFAULT (newid()),
	[Code] [nvarchar](4000) NULL,
	[Name] [nvarchar](4000) NULL,
	[Type] [nvarchar](4000) NULL,
	[ExpireDate] [nvarchar](4000) NULL,
	[Year] [nvarchar](4000) NULL,
	[Note] [nvarchar](4000) NULL,
	[DepartmentsId] [nvarchar](4000) NULL,
	[DepartmentsValue] [nvarchar](4000) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[DisplayName] [nvarchar](4000) NULL,
	[EmployeesValue] [nvarchar](4000) NULL,
	[EmployeesId] [nvarchar](4000) NULL,
	[NameKz] [nvarchar](4000) NULL,
	[IsGuide] [bit] NOT NULL CONSTRAINT [DF_Dictionaries_IsGuide]  DEFAULT ((0)),
	[OrganizationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Dictionaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documents]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Documents_IsDeleted]  DEFAULT ((0)),
	[IsAdministrativeUse] [bit] NOT NULL CONSTRAINT [DF_Documents_IsAdministrativeUse]  DEFAULT ((0)),
	[IsAwaitingResponse] [bit] NOT NULL CONSTRAINT [DF_Documents_IsAwaitingResponse]  DEFAULT ((0)),
	[IsTradeSecret] [bit] NOT NULL CONSTRAINT [DF_Documents_IsTradeSecret]  DEFAULT ((0)),
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[AwaitingResponseDate] [datetime] NULL,
	[DocumentDate] [datetime] NULL,
	[OutgoingDate] [datetime] NULL,
	[ProtocolDate] [datetime] NULL,
	[MonitoringDate] [datetime] NULL,
	[ApplicantType] [int] NOT NULL CONSTRAINT [DF_Documents_ApplicantType]  DEFAULT ((0)),
	[DocumentType] [int] NOT NULL CONSTRAINT [DF_Documents_DocumentType]  DEFAULT ((0)),
	[MonitoringType] [int] NOT NULL CONSTRAINT [DF_Documents_MonitoringType]  DEFAULT ((0)),
	[PriorityType] [int] NOT NULL CONSTRAINT [DF_Documents_PriorityType]  DEFAULT ((0)),
	[StateType] [int] NOT NULL CONSTRAINT [DF_Documents_StateType]  DEFAULT ((0)),
	[AppendixCount] [int] NOT NULL CONSTRAINT [DF_Documents_AppendixCount]  DEFAULT ((0)),
	[CopiesCount] [int] NOT NULL CONSTRAINT [DF_Documents_CopiesCount]  DEFAULT ((0)),
	[PageCount] [int] NOT NULL CONSTRAINT [DF_Documents_PageCount]  DEFAULT ((0)),
	[RepeatCount] [int] NOT NULL CONSTRAINT [DF_Documents_RepeatCount]  DEFAULT ((0)),
	[ApplicantAddress] [nvarchar](512) NULL,
	[ApplicantEmail] [nvarchar](4000) NULL,
	[ApplicantName] [nvarchar](512) NULL,
	[ApplicantPhone] [nvarchar](512) NULL,
	[BlankNumber] [nvarchar](512) NULL,
	[CorrespondentsInfo] [nvarchar](512) NULL,
	[Number] [nvarchar](512) NULL,
	[OutgoingNumber] [nvarchar](512) NULL,
	[SortingNumber] [nvarchar](512) NULL,
	[SortingOutgoingNumber] [nvarchar](512) NULL,
	[Note] [nvarchar](4000) NULL,
	[Summary] [nvarchar](4000) NULL,
	[AdministrativeTypeDictionaryId] [nvarchar](4000) NULL,
	[AdministrativeTypeDictionaryValue] [nvarchar](4000) NULL,
	[ApplicantCategoryDictionaryId] [nvarchar](4000) NULL,
	[ApplicantCategoryDictionaryValue] [nvarchar](4000) NULL,
	[CauseCitizenDictionaryId] [nvarchar](4000) NULL,
	[CauseCitizenDictionaryValue] [nvarchar](4000) NULL,
	[CitizenCategoryDictionaryId] [nvarchar](4000) NULL,
	[CitizenCategoryDictionaryValue] [nvarchar](4000) NULL,
	[CitizenResultDictionaryId] [nvarchar](4000) NULL,
	[CitizenResultDictionaryValue] [nvarchar](4000) NULL,
	[CitizenTypeDictionaryId] [nvarchar](4000) NULL,
	[CitizenTypeDictionaryValue] [nvarchar](4000) NULL,
	[DocumentKindDictionaryId] [nvarchar](4000) NULL,
	[DocumentKindDictionaryValue] [nvarchar](4000) NULL,
	[FormDeliveryDictionaryId] [nvarchar](4000) NULL,
	[FormDeliveryDictionaryValue] [nvarchar](4000) NULL,
	[FormSendingDictionaryId] [nvarchar](4000) NULL,
	[FormSendingDictionaryValue] [nvarchar](4000) NULL,
	[KatoDictionaryId] [nvarchar](4000) NULL,
	[KatoDictionaryValue] [nvarchar](4000) NULL,
	[LanguageDictionaryId] [nvarchar](4000) NULL,
	[LanguageDictionaryValue] [nvarchar](4000) NULL,
	[NomenclatureDictionaryId] [nvarchar](4000) NULL,
	[NomenclatureDictionaryValue] [nvarchar](4000) NULL,
	[QuestionDesignDictionaryId] [nvarchar](4000) NULL,
	[QuestionDesignDictionaryValue] [nvarchar](4000) NULL,
	[SigningFormDictionaryId] [nvarchar](4000) NULL,
	[SigningFormDictionaryValue] [nvarchar](4000) NULL,
	[CompleteDocumentsId] [nvarchar](4000) NULL,
	[EditDocumentsId] [nvarchar](4000) NULL,
	[RepealDocumentsId] [nvarchar](4000) NULL,
	[RepeaterId] [uniqueidentifier] NULL,
	[AttachmentId] [uniqueidentifier] NULL,
	[ResolutionId] [uniqueidentifier] NULL,
	[AgreementsId] [nvarchar](4000) NULL,
	[AgreementsValue] [nvarchar](4000) NULL,
	[ExecutorsId] [nvarchar](4000) NULL,
	[ExecutorsValue] [nvarchar](4000) NULL,
	[ReadersId] [nvarchar](4000) NULL,
	[ReadersValue] [nvarchar](4000) NULL,
	[RecipientsId] [nvarchar](4000) NULL,
	[RecipientsValue] [nvarchar](4000) NULL,
	[RegistratorId] [nvarchar](4000) NULL,
	[RegistratorValue] [nvarchar](4000) NULL,
	[ResponsibleId] [nvarchar](510) NULL,
	[ResponsibleValue] [nvarchar](4000) NULL,
	[SignerId] [nvarchar](4000) NULL,
	[SignerValue] [nvarchar](4000) NULL,
	[CorrespondentsId] [nvarchar](4000) NULL,
	[CorrespondentsValue] [nvarchar](4000) NULL,
	[MonitoringAuthorId] [nvarchar](4000) NULL,
	[MonitoringAuthorValue] [nvarchar](4000) NULL,
	[MonitoringNote] [nvarchar](4000) NULL,
	[AnswersId] [nvarchar](4000) NULL,
	[AnswersValue] [nvarchar](4000) NULL,
	[CompleteDocumentsValue] [nvarchar](4000) NULL,
	[EditDocumentsValue] [nvarchar](4000) NULL,
	[RepealDocumentsValue] [nvarchar](4000) NULL,
	[DisplayName] [nvarchar](4000) NULL,
	[AutoAnswersId] [nvarchar](4000) NULL,
	[AutoAnswersValue] [nvarchar](4000) NULL,
	[AutoAnswersTempId] [nvarchar](4000) NULL,
	[AutoAnswersTempValue] [nvarchar](4000) NULL,
	[AutoCompleteDocumentsValue] [nvarchar](4000) NULL,
	[AutoEditDocumentsValue] [nvarchar](4000) NULL,
	[AutoRepealDocumentsValue] [nvarchar](4000) NULL,
	[SortNumber] [int] NOT NULL CONSTRAINT [DF_Documents_SortNumber]  DEFAULT ((0)),
	[AutoCompleteDocumentsId] [nvarchar](4000) NULL,
	[AutoEditDocumentsId] [nvarchar](4000) NULL,
	[AutoRepealDocumentsId] [nvarchar](4000) NULL,
	[FactExecutionDate] [datetime] NULL,
	[FirstExecutionDate] [datetime] NULL,
	[ExecutionDate] [datetime] NULL,
	[TemplateId] [uniqueidentifier] NULL,
	[Counters] [nvarchar](4000) NULL,
	[DocumentDictionaryTypeId] [nvarchar](4000) NULL,
	[DocumentDictionaryTypeValue] [nvarchar](4000) NULL,
	[ResolutionValue] [nvarchar](4000) NULL,
	[OutgoingType] [int] NOT NULL CONSTRAINT [DF_Documents_OutgoingType]  DEFAULT ((0)),
	[SourceId] [nvarchar](4000) NULL,
	[SourceValue] [nvarchar](4000) NULL,
	[DestinationId] [nvarchar](4000) NULL,
	[DestinationValue] [nvarchar](4000) NULL,
	[MainTaskId] [uniqueidentifier] NULL,
	[MainDocumentId] [uniqueidentifier] NULL,
	[OwnerId] [nvarchar](4000) NULL,
	[OwnerValue] [nvarchar](4000) NULL,
	[Country] [nvarchar](4000) NULL,
	[Area] [nvarchar](4000) NULL,
	[Postcode] [nvarchar](4000) NULL,
	[Phone] [nvarchar](4000) NULL,
	[Department] [nvarchar](4000) NULL,
	[City] [nvarchar](4000) NULL,
	[Address] [nvarchar](4000) NULL,
	[NumberBill] [nvarchar](4000) NULL,
	[Email] [nvarchar](4000) NULL,
	[SuperMainDocumentId] [uniqueidentifier] NULL,
	[ModifiedUser] [nvarchar](4000) NULL,
	[IsNotification] [bit] NOT NULL,
	[NotificationCount] [int] NOT NULL CONSTRAINT [DF_Documents_NotificationCount]  DEFAULT ((0)),
	[DateDispatch] [datetime] NULL,
	[DispatchNote] [nvarchar](4000) NULL,
	[Digest] [nvarchar](4000) NULL,
	[IsAttachments] [bit] NOT NULL CONSTRAINT [DF_Documents_IsAttachments]  DEFAULT ((0)),
	[Text] [nvarchar](4000) NULL,
	[Recipient] [nvarchar](4000) NULL,
	[QrCode] [image] NULL,
	[IsArchive] [bit] NOT NULL CONSTRAINT [DF_Documents_IsArchive]  DEFAULT ((0)),
	[InventoryId] [int] NULL,
	[FulfilledDate] [datetime] NULL,
	[Year] [int] NOT NULL CONSTRAINT [DF_Documents_Year]  DEFAULT ((0)),
	[Month] [int] NOT NULL CONSTRAINT [DF_Documents_Month]  DEFAULT ((0)),
	[Day] [int] NOT NULL CONSTRAINT [DF_Documents_Day]  DEFAULT ((0)),
	[AutoAwaitingResponseDate] [date] NULL,
	[AutoDocumentDate] [date] NULL,
	[AutoOutgoingDate] [date] NULL,
	[AutoProtocolDate] [date] NULL,
	[AutoMonitoringDate] [date] NULL,
	[AutoFactExecutionDate] [date] NULL,
	[AutoFirstExecutionDate] [date] NULL,
	[AutoExecutionDate] [date] NULL,
	[CreatedUserId] [nvarchar](900) NULL,
	[CreatedUserValue] [nvarchar](900) NULL,
	[Book] [nvarchar](900) NULL,
	[Deed] [nvarchar](900) NULL,
	[Ip] [nvarchar](100) NULL,
	[Akt] [nvarchar](900) NULL,
	[ProjectType] [int] NOT NULL CONSTRAINT [DF_Documents_ProjectType]  DEFAULT ((0)),
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[AttachPath] [nvarchar](300) NULL,
	[RegionValue] [nvarchar](4000) NULL,
	[RegionId] [nvarchar](4000) NULL,
	[PriceSum] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeePermissions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePermissions](
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[PermissionKey] [nvarchar](4000) NULL,
	[PermissionValue] [nvarchar](4000) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_EmployeePermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[LastName] [nvarchar](4000) NULL,
	[FirstName] [nvarchar](4000) NULL,
	[MiddleName] [nvarchar](4000) NULL,
	[FullName] [nvarchar](4000) NULL,
	[ShortName] [nvarchar](4000) NULL,
	[PositionId] [uniqueidentifier] NULL,
	[Sex] [int] NOT NULL CONSTRAINT [DF_Employees_Sex]  DEFAULT ((0)),
	[Email] [nvarchar](510) NULL,
	[Phone] [nvarchar](510) NULL,
	[Login] [nvarchar](255) NULL,
	[DisplayName] [nvarchar](4000) NULL,
	[IsLockedOut]  AS ([dbo].[islockedout]([Login])),
	[LastLoginDate]  AS ([dbo].[lastlogindate]([Login])),
	[DeputyId] [nvarchar](4000) NULL,
	[DeputyValue] [nvarchar](4000) NULL,
	[AssistantsId] [nvarchar](4000) NULL,
	[AssistantsValue] [nvarchar](4000) NULL,
	[Cabinet] [nvarchar](4000) NULL,
	[Photo] [image] NULL,
	[TimeAgreement] [int] NOT NULL CONSTRAINT [DF_Employees_TimeAgreement]  DEFAULT ((120)),
	[Number] [nvarchar](4000) NULL,
	[Birthday] [date] NULL,
	[Birthplace] [nvarchar](4000) NULL,
	[UlNumber] [nvarchar](4000) NULL,
	[UlDate] [date] NULL,
	[UlOwner] [nvarchar](4000) NULL,
	[Iin] [nvarchar](4000) NULL,
	[PlaceLive] [nvarchar](4000) NULL,
	[PlaceRegistration] [nvarchar](4000) NULL,
	[PhoneHome] [nvarchar](4000) NULL,
	[PhoneMobile] [nvarchar](4000) NULL,
	[FamilyStatus] [int] NOT NULL CONSTRAINT [DF_Employees_FamilyStatus]  DEFAULT ((0)),
	[Families] [nvarchar](4000) NULL,
	[Education] [nvarchar](4000) NULL,
	[ExperienceTotal] [int] NOT NULL CONSTRAINT [DF_Employees_TotalExperience]  DEFAULT ((0)),
	[ExperienceSpec] [int] NOT NULL CONSTRAINT [DF_Employees_ExperienceSpec]  DEFAULT ((0)),
	[IsDegree] [bit] NOT NULL CONSTRAINT [DF_Employees_IsDegree]  DEFAULT ((0)),
	[DegreeDate] [date] NULL,
	[DegreeSpec] [nvarchar](4000) NULL,
	[MilitaryType] [int] NOT NULL CONSTRAINT [DF_Employees_MilitaryType]  DEFAULT ((0)),
	[MilitaryCategory] [nvarchar](4000) NULL,
	[MilitarySostav] [nvarchar](4000) NULL,
	[MilitaryRank] [nvarchar](4000) NULL,
	[MilitaryVus] [nvarchar](4000) NULL,
	[MilitaryLocation] [nvarchar](4000) NULL,
	[MilitaryLastDate] [date] NULL,
	[DateFile] [date] NULL,
	[EducationNumber] [nvarchar](4000) NULL,
	[EducationDate] [date] NULL,
	[EducationSpec] [nvarchar](4000) NULL,
	[EducationQual] [nvarchar](4000) NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[NationalityId] [nvarchar](4000) NULL,
	[NationalityValue] [nvarchar](4000) NULL,
	[DegreeName] [nvarchar](4000) NULL,
	[IsAcademic] [bit] NOT NULL CONSTRAINT [DF_Employees_IsDegree1]  DEFAULT ((0)),
	[AcademicDate] [date] NULL,
	[AcademicSpec] [nvarchar](4000) NULL,
	[AcademicName] [nvarchar](4000) NULL,
	[Education2] [nvarchar](4000) NULL,
	[EducationNumber2] [nvarchar](4000) NULL,
	[EducationDate2] [date] NULL,
	[EducationSpec2] [nvarchar](4000) NULL,
	[EducationQual2] [nvarchar](4000) NULL,
	[Education3] [nvarchar](4000) NULL,
	[EducationNumber3] [nvarchar](4000) NULL,
	[EducationDate3] [date] NULL,
	[EducationSpec3] [nvarchar](4000) NULL,
	[EducationQual3] [nvarchar](4000) NULL,
	[TerminationDate] [date] NULL,
	[MilitaryRankId] [nvarchar](4000) NULL,
	[MilitarySostavId] [nvarchar](4000) NULL,
	[AcademicNameId] [nvarchar](4000) NULL,
	[DegreeNameId] [nvarchar](4000) NULL,
	[CauseLayoffsId] [nvarchar](4000) NULL,
	[CauseLayoffsValue] [nvarchar](4000) NULL,
	[QualificationCategoryId] [nvarchar](4000) NULL,
	[QualificationCategoryValue] [nvarchar](4000) NULL,
	[IsGuide] [bit] NOT NULL CONSTRAINT [DF_Employees_IsGuide]  DEFAULT ((0)),
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[Id] [uniqueidentifier] NOT NULL,
	[EmployeeId] [nvarchar](900) NULL,
	[EmployeeValue] [nvarchar](900) NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[Organization] [nvarchar](4000) NULL,
	[Country] [nvarchar](4000) NULL,
	[Position] [nvarchar](4000) NULL,
	[Note] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExtensionExecutions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtensionExecutions](
	[Id] [uniqueidentifier] NOT NULL,
	[ExecutionDate] [date] NOT NULL,
	[Text] [nvarchar](2048) NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[AutorId] [nvarchar](900) NULL,
	[AutorValue] [nvarchar](900) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ExtensionExecutions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[History]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[OperationId] [nvarchar](4000) NULL,
	[TableName] [nvarchar](4000) NULL,
	[ColumnName] [nvarchar](4000) NULL,
	[ObjectId] [uniqueidentifier] NOT NULL,
	[Record] [nvarchar](4000) NULL,
	[OldValue] [nvarchar](4000) NULL,
	[NewValue] [nvarchar](4000) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[UserName] [nvarchar](4000) NULL,
	[Ip] [nvarchar](4000) NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Holidays]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holidays](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](900) NULL,
	[EmployeeValue] [nvarchar](900) NULL,
	[HolidayTypeDictionaryId] [nvarchar](900) NULL,
	[HolidayTypeDictionaryValue] [nvarchar](900) NULL,
	[PeriodStart] [date] NULL,
	[PeriodEnd] [date] NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[DocumentId] [nvarchar](900) NULL,
	[DocumentValue] [nvarchar](900) NULL,
	[Note] [nvarchar](900) NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_lims_ApplicationEAdmissions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_lims_ApplicationEAdmissions](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_I1c_lims_ApplicationEAdmissions_Id]  DEFAULT (newid()),
	[TmcCode] [uniqueidentifier] NOT NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[Producer] [nvarchar](450) NULL,
	[ProducerExpirationDate] [date] NULL,
	[PartyNumber] [nvarchar](450) NULL,
	[ShelfNumber] [nvarchar](450) NULL,
	[CupboardNumber] [nvarchar](450) NULL,
	[WarehouseNumber] [uniqueidentifier] NULL,
	[DateOfReceiving] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NULL CONSTRAINT [DF_i1c_ApplicationElementAdmissions_ExportDatetime]  DEFAULT (getdate()),
	[ImportDatetime] [datetime] NULL,
 CONSTRAINT [PK_I1c_lims_ApplicationEAdmissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_lims_ApplicationEExploitation]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_lims_ApplicationEExploitation](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_i1c_lims_ApplicationEExploitation_Id]  DEFAULT (newid()),
	[TmcCode] [uniqueidentifier] NOT NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[PowerOfAttorneyId_1C] [uniqueidentifier] NULL,
	[PowerOfAttorneyNumber_1C] [nvarchar](450) NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[OrganizationName] [nvarchar](4000) NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[DepartmentName] [nvarchar](4000) NULL,
	[OwnerEmployeeId] [uniqueidentifier] NULL,
	[OwnerEmployeeFio] [nvarchar](450) NULL,
	[ExploitatioinDatetime] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NULL CONSTRAINT [DF_i1c_lims_ApplicationEExploitation_ExportDatetime]  DEFAULT (getdate()),
	[ImportDatetime] [datetime] NULL,
	[ExpertiseApplicationId] [uniqueidentifier] NULL,
	[ExpertiseApplicationNumber] [nvarchar](450) NULL,
 CONSTRAINT [PK_I1c_lims_ApplicationEExploitation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_lims_ApplicationElements]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_lims_ApplicationElements](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__i1c_Applicat__Id__6C190EBB]  DEFAULT (newid()),
	[TmcCode] [uniqueidentifier] NOT NULL,
	[TmcNumber] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[QuntityVolume] [decimal](18, 6) NULL,
	[QuntityVolumeStr] [nvarchar](450) NULL,
	[Unit] [nvarchar](450) NULL,
	[UnitCode] [uniqueidentifier] NULL,
	[Kind] [nvarchar](450) NULL,
	[KindCode] [uniqueidentifier] NULL,
	[Paking] [nvarchar](450) NULL,
	[PakingCode] [uniqueidentifier] NULL,
	[ExportDatetime] [datetime] NULL CONSTRAINT [DF_i1c_lims_ApplicationElements_CreateDatetime]  DEFAULT (getdate()),
	[ImportDatetime] [datetime] NULL,
	[refApplication] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_i1c_MaterialAsserts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_lims_Applications]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_lims_Applications](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_i1c_Applications_Id]  DEFAULT (newid()),
	[Number] [uniqueidentifier] NOT NULL,
	[ContractId] [uniqueidentifier] NULL,
	[ContractNumber] [nvarchar](450) NULL,
	[ContractDate] [date] NULL,
	[LastDeliveryDate] [date] NULL,
	[ProviderId] [uniqueidentifier] NULL,
	[Provider] [nvarchar](450) NULL,
	[ProviderBin] [nvarchar](450) NULL,
	[FrpersonId] [uniqueidentifier] NULL,
	[FrpersonFio] [nvarchar](450) NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[FullDelivery] [bit] NULL,
	[PowerOfAttorneyId_1C] [uniqueidentifier] NULL,
	[PowerOfAttorneyNumber_1C] [nvarchar](450) NULL,
	[PowerOfAttorneyDatetime_1C] [datetime] NULL,
	[FilePath] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateDatetime] [datetime] NULL,
	[ExportDatetime] [datetime] NULL CONSTRAINT [DF_I1c_lims_Applications_ExportDatetime]  DEFAULT (getdate()),
	[ImportDatetime] [datetime] NULL,
 CONSTRAINT [PK_i1c_Applications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CU_Number] UNIQUE NONCLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_primary_ApplicationElements]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_primary_ApplicationElements](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[DosageForm] [nvarchar](4000) NULL,
	[DosageCode] [uniqueidentifier] NULL,
	[Packing] [nvarchar](4000) NULL,
	[PackingCode] [uniqueidentifier] NULL,
	[Type] [nvarchar](4000) NULL,
	[TypeCode] [uniqueidentifier] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[Producer] [nvarchar](4000) NULL,
	[ProducerCode] [uniqueidentifier] NULL,
	[ProducerCountry] [nvarchar](4000) NULL,
	[ProducerCountryCode] [uniqueidentifier] NULL,
	[ProducerType] [nvarchar](4000) NULL,
	[ProducerTypeCode] [uniqueidentifier] NULL,
	[Representative] [nvarchar](4000) NULL,
	[RepresentativeCode] [uniqueidentifier] NULL,
	[ContractNumber] [nvarchar](4000) NULL,
	[ContractBeginDate] [datetime] NULL,
	[ContractEndDate] [datetime] NULL,
	[RepresentativeAddress] [nvarchar](4000) NULL,
	[RepresentativePhone] [nvarchar](4000) NULL,
	[Payer] [nvarchar](4000) NULL,
	[PayerAddress] [nvarchar](4000) NULL,
	[PayerBank] [nvarchar](4000) NULL,
	[PayerAccount] [nvarchar](4000) NULL,
	[PayerBIK] [nvarchar](4000) NULL,
	[PayerRNN] [nvarchar](4000) NULL,
	[PayerBIN] [nvarchar](4000) NULL,
	[PayerIIN] [nvarchar](4000) NULL,
	[PayerСurrency] [nvarchar](4000) NULL,
	[PayerСurrencyCode] [uniqueidentifier] NULL,
	[ExportDatetime] [datetime] NOT NULL,
	[ImportDatetime] [datetime] NULL,
	[refPrimaryApplication] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_I1c_primary_ApplicationElements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_primary_Applications]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_primary_Applications](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[Number] [nvarchar](450) NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[Note] [nvarchar](max) NULL,
	[ExportDatetime] [datetime] NOT NULL,
	[ImportDatetime] [datetime] NULL,
 CONSTRAINT [PK_I1c_primary_Applications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_trl_DirectionElements]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_trl_DirectionElements](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](4000) NULL,
	[Name] [nvarchar](512) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[ExportDatetime] [datetime] NULL,
	[ImportDatetime] [datetime] NULL,
	[refDirection] [uniqueidentifier] NULL,
 CONSTRAINT [PK_i1c_DirectionElements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[I1c_trl_DirectionsToPay]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I1c_trl_DirectionsToPay](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](4000) NULL,
	[Producer] [nvarchar](4000) NULL,
	[ProducerCode] [uniqueidentifier] NULL,
	[Payer] [nvarchar](4000) NULL,
	[PayerCode] [uniqueidentifier] NULL,
	[Translator] [nvarchar](4000) NULL,
	[TraslatorCode] [uniqueidentifier] NULL,
	[Status] [nvarchar](4000) NULL,
	[StatusCode] [uniqueidentifier] NULL,
	[InvoiceCode_1C] [nvarchar](512) NULL,
	[InvoiceNumber_1C] [nvarchar](512) NULL,
	[InvoiceDatetime_1C] [datetime] NULL,
	[ExportDatetime] [datetime] NOT NULL,
	[ImportDatetime] [datetime] NULL,
 CONSTRAINT [PK_i1c_DirectionsToPay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Installation]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installation](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Installation_Id]  DEFAULT (newid()),
	[Name] [nvarchar](450) NULL,
	[Model] [nvarchar](450) NULL,
	[ManufacturerFactory] [nvarchar](450) NULL,
	[Country] [nvarchar](450) NULL,
	[FactoryNumber] [nvarchar](450) NULL,
	[InvertoryNumber] [nvarchar](450) NULL,
	[LaboratoryRoom] [nvarchar](450) NULL,
	[InstallationYear] [nvarchar](450) NULL,
	[Note] [nvarchar](450) NULL,
	[CheckDate] [nvarchar](450) NULL,
	[Type] [nvarchar](450) NULL,
	[Laboratory] [nvarchar](450) NULL,
	[TypeIn] [nvarchar](450) NULL,
	[BuhList] [nvarchar](450) NULL,
	[State] [nvarchar](450) NULL,
	[StateIn] [nvarchar](450) NULL,
 CONSTRAINT [PK_Installation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkDicOrphanDrugsIcdDeseases]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkDicOrphanDrugsIcdDeseases](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[refDicOrphanDrugs] [bigint] NOT NULL,
	[refDicIcdDeseases] [bigint] NOT NULL,
 CONSTRAINT [PK_LinkDicOrphanDrugsIcdDeseases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkDictionaries]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkDictionaries](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_LinkDictionaries_Id]  DEFAULT (newid()),
	[DictionaryId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[PropertyName] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkDocuments]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkDocuments](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_DocumentLinks_Id]  DEFAULT (newid()),
	[DocumentId] [uniqueidentifier] NOT NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
	[PropertyName] [nvarchar](400) NULL,
 CONSTRAINT [PK_DocumentLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkUnits]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkUnits](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_LinkUnits_Id]  DEFAULT (newid()),
	[EmployeeId] [uniqueidentifier] NULL,
	[PositionId] [uniqueidentifier] NULL,
	[Department1Id] [uniqueidentifier] NULL,
	[Department2Id] [uniqueidentifier] NULL,
	[Department3Id] [uniqueidentifier] NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[PropertyName] [nvarchar](4000) NULL,
	[OwnerId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UnitLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](4000) NULL,
	[InnerException] [nvarchar](4000) NULL,
	[StackTrace] [nvarchar](4000) NULL,
	[CurrentUser] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EmployeesId] [nvarchar](4000) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[TableName] [nvarchar](500) NULL,
	[ObjectId] [nvarchar](500) NULL,
	[StateType] [int] NULL,
	[ModifiedUser] [nvarchar](4000) NULL,
	[Email] [nvarchar](510) NULL,
	[IsSend] [bit] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[obk_currencies]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[obk_currencies](
	[id] [int] NOT NULL,
	[currency_name] [varchar](50) NULL,
	[short_name] [varchar](10) NULL,
	[currency_code] [varchar](10) NULL,
	[abbreviation] [varchar](10) NULL,
 CONSTRAINT [PK_currencies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_currencies] UNIQUE NONCLUSTERED 
(
	[currency_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[obk_exchangerate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obk_exchangerate](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[currency_id] [int] NOT NULL,
	[rate] [decimal](18, 3) NOT NULL,
	[rate_date] [date] NOT NULL,
 CONSTRAINT [PK_obk_exchangerate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[obk_product_cost]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obk_product_cost](
	[id] [bigint] NOT NULL,
	[cost] [money] NOT NULL,
	[currency_id] [int] NOT NULL,
	[date_cost] [datetime] NULL,
 CONSTRAINT [PK_product_cost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[obk_products]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[obk_products](
	[id] [bigint] NOT NULL,
	[application_id] [bigint] NULL,
	[name] [varchar](2000) NULL,
	[name_kz] [nvarchar](4000) NULL,
	[producer_name] [varchar](1000) NULL,
	[producer_name_kz] [nvarchar](2000) NULL,
	[country_name] [varchar](150) NULL,
	[country_name_kz] [nvarchar](300) NULL,
	[party_count] [money] NULL CONSTRAINT [DF_products_product_count]  DEFAULT ((0)),
	[party_measure_id] [int] NULL,
	[tnved_code] [varchar](20) NULL,
	[kpved_code] [varchar](20) NULL,
	[mandatory_sign] [bit] NOT NULL CONSTRAINT [DF_products_mandatory_sign]  DEFAULT ((0)),
	[register_nd] [varchar](2000) NULL,
	[nd] [varchar](2000) NULL,
	[nd_kz] [nvarchar](4000) NULL,
	[reg_number] [varchar](50) NULL,
	[register_id] [bigint] NULL,
	[drug_form_id] [bigint] NULL,
	[cert_sign] [bit] NULL,
	[types_no_reg] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_Organizations_Type]  DEFAULT ((0)),
	[NameKz] [nvarchar](500) NULL,
	[NameRu] [nvarchar](500) NULL,
	[NameEn] [nvarchar](500) NULL,
	[CountryDicId] [uniqueidentifier] NULL,
	[AddressLegal] [nvarchar](500) NULL,
	[AddressFact] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Fax] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[BossFio] [nvarchar](500) NULL,
	[BossPosition] [nvarchar](500) NULL,
	[ContactFio] [nvarchar](500) NULL,
	[ContactPosition] [nvarchar](500) NULL,
	[ContactPhone] [nvarchar](500) NULL,
	[ContactFax] [nvarchar](500) NULL,
	[ContactEmail] [nvarchar](500) NULL,
	[OrgManufactureTypeDicId] [uniqueidentifier] NULL,
	[DocNumber] [nvarchar](500) NULL,
	[DocDate] [date] NULL,
	[DocExpiryDate] [date] NULL,
	[ObjectId] [uniqueidentifier] NULL,
	[OpfTypeDicId] [uniqueidentifier] NULL,
	[BankName] [nvarchar](500) NULL,
	[BankIik] [nvarchar](500) NULL,
	[BankCurencyDicId] [uniqueidentifier] NULL,
	[BankSwift] [nvarchar](500) NULL,
	[Bin] [nvarchar](500) NULL,
	[IsResident] [bit] NOT NULL CONSTRAINT [DF_Organizations_IsResident]  DEFAULT ((0)),
	[PayerTypeDicId] [uniqueidentifier] NULL,
	[BossLastName] [nvarchar](100) NULL,
	[BossFirstName] [nvarchar](100) NULL,
	[BossMiddleName] [nvarchar](100) NULL,
	[PaymentBill] [nvarchar](500) NULL,
	[Iin] [nvarchar](500) NULL,
	[BankBik] [nvarchar](500) NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Packages]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Id] [uniqueidentifier] NOT NULL,
	[PackageTypeDicId] [uniqueidentifier] NULL,
	[PackageNameDicId] [uniqueidentifier] NULL,
	[PackageName] [nvarchar](500) NULL,
	[Size] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Packages_Size]  DEFAULT ((0)),
	[SizeMeasureTypeDicId] [uniqueidentifier] NULL,
	[Volume] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Packages_Volume]  DEFAULT ((0)),
	[VolumeMeasureTypeDicId] [uniqueidentifier] NULL,
	[Count] [int] NOT NULL CONSTRAINT [DF_Packages_Count]  DEFAULT ((0)),
	[Note] [nvarchar](500) NULL,
	[ObjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionKeys]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionKeys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_PermissionKeys_Type]  DEFAULT ((0)),
	[KeyName] [nvarchar](4000) NULL,
	[KeyDescription] [nvarchar](4000) NULL,
	[GroupName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_PermissionKeys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionValues]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PermissionKey] [nvarchar](4000) NULL,
	[Value] [nvarchar](4000) NULL,
	[Name] [nvarchar](4000) NULL,
	[IsDefault] [bit] NOT NULL CONSTRAINT [DF_PermissionValues_IsDefault]  DEFAULT ((0)),
 CONSTRAINT [PK_PermissionValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PriceListExpertise]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceListExpertise](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_PriceListExpertise_Id]  DEFAULT (newid()),
	[Number] [nvarchar](50) NULL,
	[Name] [nvarchar](450) NULL,
	[PriceRegisterForeign] [decimal](18, 2) NULL,
	[PriceRegisterForeignNds] [decimal](18, 2) NULL,
	[PriceReRegisterForeign] [decimal](18, 2) NULL,
	[PriceReRegisterForeignNds] [decimal](18, 2) NULL,
	[PriceRegisterKz] [decimal](18, 2) NULL,
	[PriceRegisterKzNds] [decimal](18, 2) NULL,
	[PriceReRegisterKz] [decimal](18, 2) NULL,
	[PriceReRegisterKzNds] [decimal](18, 2) NULL,
	[Category] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceListExpertise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PriceProjects]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceProjects](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_PriceProjects_Type]  DEFAULT ((0)),
	[Number] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL CONSTRAINT [DF_ProjectPrice_Status]  DEFAULT ((0)),
	[OwnerId] [uniqueidentifier] NOT NULL,
	[ManufacturerOrganizationId] [uniqueidentifier] NOT NULL,
	[HolderOrganizationId] [uniqueidentifier] NOT NULL,
	[ProxyOrganizationId] [uniqueidentifier] NOT NULL,
	[DoverennostNumber] [nvarchar](500) NULL,
	[DoverennostCreatedDate] [date] NULL,
	[DoverennostExpiryDate] [date] NULL,
	[Filial] [nvarchar](500) NULL,
	[NameKz] [nvarchar](500) NULL,
	[NameRu] [nvarchar](500) NULL,
	[RegNumber] [nvarchar](500) NULL,
	[RegDate] [date] NULL,
	[LsTypeDicId] [uniqueidentifier] NULL,
	[NameOriginal] [nvarchar](500) NULL,
	[MnnRu] [nvarchar](500) NULL,
	[MnnEn] [nvarchar](500) NULL,
	[FormNameKz] [nvarchar](500) NULL,
	[FormNameRu] [nvarchar](500) NULL,
	[Dosage] [nvarchar](500) NULL,
	[CountPackage] [nvarchar](500) NULL,
	[Concentration] [nvarchar](500) NULL,
	[CodeAtx] [nvarchar](500) NULL,
	[IntroducingMethodDicId] [uniqueidentifier] NULL,
	[IsConvention] [bit] NOT NULL CONSTRAINT [DF_ProjectPrice_IsConvention]  DEFAULT ((0)),
	[ImnSecuryTypeDicId] [uniqueidentifier] NULL,
	[RePriceDicId] [uniqueidentifier] NULL,
	[ListTypeDicId] [uniqueidentifier] NULL,
	[MnnOrderNumber] [int] NULL,
	[ResultTypeDicId] [uniqueidentifier] NULL,
	[IsPayed] [bit] NULL,
	[PayDate] [date] NULL,
	[StartDate] [date] NULL,
	[ContrDate] [date] NULL,
	[ConclusionDate] [date] NULL,
	[IsStageExpired] [bit] NULL,
	[ExpiredDayCount] [int] NULL,
	[ExpertAz] [nvarchar](200) NULL,
	[OutgoingDoc] [nvarchar](200) NULL,
	[DayCount] [int] NULL,
	[IsNewManufacrurer] [bit] NULL,
	[IsOrfan] [bit] NOT NULL CONSTRAINT [DF_PriceProjects_IsOrfan]  DEFAULT ((0)),
	[ReasonDicId] [uniqueidentifier] NULL,
	[PriceProjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ProjectPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prices]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_Prices_Type]  DEFAULT ((0)),
	[Name] [nvarchar](500) NULL,
	[PriceProjectId] [uniqueidentifier] NOT NULL,
	[CountryId] [uniqueidentifier] NULL,
	[ManufacturerPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_ManufacturerPrice]  DEFAULT ((0)),
	[ManufacturerPriceCurrencyDicId] [uniqueidentifier] NULL,
	[ManufacturerPriceNote] [nvarchar](500) NULL,
	[LimitPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_ManufacturerPrice1]  DEFAULT ((0)),
	[LimitPriceCurrencyDicId] [uniqueidentifier] NULL,
	[LimitPriceNote] [nvarchar](500) NULL,
	[AvgOptPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_LimitPrice1]  DEFAULT ((0)),
	[AvgOptPriceCurrencyDicId] [uniqueidentifier] NULL,
	[AvgOptPriceNote] [nvarchar](500) NULL,
	[AvgRozPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_AvgOptPrice1]  DEFAULT ((0)),
	[AvgRozPriceCurrencyDicId] [uniqueidentifier] NULL,
	[AvgRozPriceNote] [nvarchar](500) NULL,
	[CipPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_CipPrice]  DEFAULT ((0)),
	[CipPriceCurrencyDicId] [uniqueidentifier] NULL,
	[RefPriceTypeDicId] [uniqueidentifier] NULL,
	[RefPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_RefPrice]  DEFAULT ((0)),
	[RefPriceCurrencyDicId] [uniqueidentifier] NULL,
	[OwnerPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_OwnerPrice]  DEFAULT ((0)),
	[OwnerPriceCurrencyDicId] [uniqueidentifier] NULL,
	[BritishPrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_BritishPrice]  DEFAULT ((0)),
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[UnitPriceCurrencyDicId] [uniqueidentifier] NULL,
	[BritishCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_BritishCost]  DEFAULT ((0)),
	[AvgObkCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_AvgObkCost]  DEFAULT ((0)),
	[AvgRznCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_AvgRznCost]  DEFAULT ((0)),
	[AvgOptCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_AvgOptCost]  DEFAULT ((0)),
	[ZakupCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_ZakupCost]  DEFAULT ((0)),
	[LimitCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_LimitCost]  DEFAULT ((0)),
	[MinimalCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_MinimalCost]  DEFAULT ((0)),
	[CreatedDate] [date] NULL,
	[MtPartsId] [int] NULL,
	[DiscussionCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_DiscussionCost]  DEFAULT ((0)),
	[MarkupCost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_markup
MarkupCost]  DEFAULT ((0)),
	[MarkupCostOpt] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Prices_MarkupCostOpt]  DEFAULT ((0)),
 CONSTRAINT [PK_Prices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrismEnums]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrismEnums](
	[Key] [int] NULL,
	[Value] [nvarchar](510) NULL,
	[Type] [nvarchar](100) NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_PrismEnums_Id]  DEFAULT (newid()),
 CONSTRAINT [PK_PrismEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrismReports]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrismReports](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Category] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[Report] [varbinary](max) NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_PrismReports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrtPrjs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrtPrjs](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[ProtocolId] [uniqueidentifier] NOT NULL,
	[ResultDictionaryId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PrtPrjs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ref_Knfs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_Knfs](
	[Code] [nvarchar](4000) NULL,
	[GroupFarm] [nvarchar](4000) NULL,
	[Name] [nvarchar](4000) NULL,
	[Form] [nvarchar](4000) NULL,
	[Number] [nvarchar](4000) NULL,
	[Cost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Ref_Knfs_Cost]  DEFAULT ((0)),
	[Id] [uniqueidentifier] NOT NULL,
	[Characteristic] [nvarchar](4000) NULL,
	[Measure] [nvarchar](4000) NULL,
	[Tn] [nvarchar](4000) NULL,
	[DateExpiry] [date] NULL,
	[Dosage] [nvarchar](4000) NULL,
	[CostTn] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Ref_Knfs_CostTn]  DEFAULT ((0)),
	[State] [int] NOT NULL CONSTRAINT [DF_Ref_Knfs_State]  DEFAULT ((0)),
	[Type] [int] NOT NULL CONSTRAINT [DF_Ref_Knfs_Type]  DEFAULT ((0)),
 CONSTRAINT [PK_Ref_Knfs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ref_Limits]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_Limits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](4000) NULL,
	[GroupFarm] [nvarchar](4000) NULL,
	[Name] [nvarchar](4000) NULL,
	[Form] [nvarchar](4000) NULL,
	[Number] [nvarchar](4000) NULL,
	[Cost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Ref_Limits_Cost]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ref_MarketPrices]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_MarketPrices](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1024) NULL,
	[DosageForm] [real] NULL,
	[Producer] [nvarchar](512) NULL,
	[Country] [nvarchar](512) NULL,
	[Number] [nvarchar](64) NULL,
	[RegistrationDatetime] [datetime] NULL,
	[ExpireDatetime] [datetime] NULL,
	[Price] [real] NULL,
	[refSource] [bigint] NOT NULL,
	[CreateDatetime] [datetime] NULL CONSTRAINT [DF_Ref_MarketPrices_CreateDatetime]  DEFAULT (getdate()),
	[refSourceName] [nvarchar](50) NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_Ref_MarketPrices_Type]  DEFAULT ((0)),
 CONSTRAINT [PK_Ref_MarketPrices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ref_PurchasePrices]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_PurchasePrices](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SKP] [nvarchar](32) NULL,
	[Name] [nvarchar](512) NULL,
	[TradeName] [nvarchar](512) NULL,
	[DosageForm] [nvarchar](512) NULL,
	[Unit] [nvarchar](128) NULL,
	[Packing] [real] NULL,
	[Producer] [nvarchar](512) NULL,
	[Price] [real] NULL,
 CONSTRAINT [PK_Ref_PurchasePrices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ref_Sources]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ref_Sources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Source] [nvarchar](512) NULL,
 CONSTRAINT [PK_Ref_Sources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registeries]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registeries](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Count] [int] NOT NULL CONSTRAINT [DF_Registeries_Count]  DEFAULT ((0)),
	[Cost] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Registeries_Cost]  DEFAULT ((0)),
	[Code] [nvarchar](100) NULL,
	[Number] [int] NOT NULL CONSTRAINT [DF_Registeries_Number]  DEFAULT ((0)),
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Registeries_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Registeries_ModifiedDate]  DEFAULT (getdate()),
	[IsTake] [bit] NOT NULL CONSTRAINT [DF_Registeries_IsTake]  DEFAULT ((1)),
	[Country] [uniqueidentifier] NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_Registeries_Type]  DEFAULT ((0)),
	[OrganizationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Registeries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegisterProjects]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterProjects](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL CONSTRAINT [DF_RegisterProjects_Type]  DEFAULT ((0)),
	[Number] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL CONSTRAINT [DF_RegisterProjects_Status]  DEFAULT ((0)),
	[OwnerId] [uniqueidentifier] NOT NULL,
	[ContractId] [uniqueidentifier] NULL,
	[AccelerationTypeDicId] [uniqueidentifier] NULL,
	[AccelerationNumber] [nvarchar](500) NULL,
	[AccelerationDate] [date] NULL,
	[AccelerationNote] [nvarchar](500) NULL,
	[NameRu] [nvarchar](500) NULL,
	[NameKz] [nvarchar](500) NULL,
	[NameEn] [nvarchar](500) NULL,
	[MnnKz] [nvarchar](500) NULL,
	[MnnEn] [nvarchar](500) NULL,
	[MnnRu] [nvarchar](500) NULL,
	[IsPatent] [bit] NOT NULL CONSTRAINT [DF_RegisterProjects_IsPatent]  DEFAULT ((0)),
	[PatentNumber] [nvarchar](500) NULL,
	[PatentDate] [date] NULL,
	[PatentExpiryDate] [date] NULL,
	[LsFormNameKz] [nvarchar](500) NULL,
	[LsFormNameRu] [nvarchar](500) NULL,
	[AtxCode] [nvarchar](500) NULL,
	[AtxNameKz] [nvarchar](500) NULL,
	[AtxNameRu] [nvarchar](500) NULL,
	[LsTypeDicId] [uniqueidentifier] NULL,
	[LsType2DicId] [uniqueidentifier] NULL,
	[OriginalName] [nvarchar](500) NULL,
	[SaleTypeDicId] [uniqueidentifier] NULL,
	[IntroducingMethodDicId] [uniqueidentifier] NULL,
	[Dosage] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RegisterProjects_Dosage]  DEFAULT ((0)),
	[DosageMeasureTypeDicId] [uniqueidentifier] NULL,
	[DosageNoteKz] [nvarchar](500) NULL,
	[DosageNoteRu] [nvarchar](500) NULL,
	[ConcentrationRu] [nvarchar](500) NULL,
	[ConcentrationKz] [nvarchar](500) NULL,
	[CompositionId] [uniqueidentifier] NULL,
	[IsGrls] [bit] NOT NULL CONSTRAINT [DF_RegisterProjects_IsGrls]  DEFAULT ((0)),
	[Transportation] [nvarchar](500) NULL,
	[ManufactureTypeDicId] [uniqueidentifier] NULL,
	[IsGmp] [bit] NOT NULL CONSTRAINT [DF_RegisterProjects_IsGmp]  DEFAULT ((0)),
	[GmpExpiryDate] [date] NULL,
	[BestBefore] [nvarchar](500) NULL,
	[BestBeforeMeasureTypeDicId] [uniqueidentifier] NULL,
	[AppPeriod1BeginDate] [date] NULL,
	[AppPeriod1FinishDate] [date] NULL,
	[AppPeriod2BeginDate] [date] NULL,
	[AppPeriod2FinishDate] [date] NULL,
	[StorageConditions1] [nvarchar](500) NULL,
	[StorageConditions2] [nvarchar](500) NULL,
	[Barcode] [nvarchar](500) NULL,
	[ManufacturePrice] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RegisterProjects_ManufacturePrice]  DEFAULT ((0)),
	[RefPrice] [decimal](18, 2) NULL CONSTRAINT [DF_RegisterProjects_RefPrice]  DEFAULT ((0)),
	[RegPrice] [decimal](18, 2) NULL,
	[SecureDocument] [nvarchar](500) NULL,
	[SecureDocumentNumber] [nvarchar](500) NULL,
	[SecureDocumentDate] [date] NULL,
	[SecureDocumentExpiryDate] [date] NULL,
	[IsConvention] [bit] NOT NULL CONSTRAINT [DF_RegisterProjects_IsConvention]  DEFAULT ((0)),
	[RegDocNumber] [nvarchar](500) NULL,
	[RegDocDate] [date] NULL,
	[RegDocExpiryDate] [date] NULL,
	[RegDocNormativeNumber] [nvarchar](500) NULL,
	[IsStageEnd] [bit] NULL,
	[EndDate] [date] NULL,
	[ResultTypeDicId] [uniqueidentifier] NULL,
	[IsPayed] [bit] NULL,
	[PayDate] [date] NULL,
	[StartDate] [date] NULL,
	[ContrDate] [date] NULL,
	[ConclusionDate] [date] NULL,
	[IsStageExpired] [bit] NULL,
	[ExpiredDayCount] [int] NULL,
	[ExpertAz] [nvarchar](200) NULL,
	[OutgoingDoc] [nvarchar](200) NULL,
	[DayCount] [int] NULL,
	[IsNewManufacrurer] [bit] NULL,
	[AppPeriodOpen] [nvarchar](500) NULL,
	[AppPeriodOpenMeasureDicId] [uniqueidentifier] NULL,
	[AppPeriodMix] [nvarchar](500) NULL,
	[AppPeriodMixMeasureDicId] [uniqueidentifier] NULL,
	[ReasonDicId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RegisterProjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reports]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NULL,
	[Text] [nvarchar](4000) NULL,
	[AnswersId] [nvarchar](4000) NULL,
	[AnswersValue] [nvarchar](4000) NULL,
	[ExecutionDate] [datetime] NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[TaskId] [uniqueidentifier] NULL,
	[ModifiedUser] [nvarchar](4000) NULL,
	[Ip] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[PageCount] [int] NULL,
	[SymbolCount] [int] NULL,
	[TitleDicId] [nvarchar](4000) NULL,
	[TitleDicValue] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequestList]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestList](
	[Id] [uniqueidentifier] NOT NULL,
	[ReestrId] [int] NULL,
	[MnnName] [nvarchar](4000) NULL,
	[Characteristic] [nvarchar](4000) NULL,
	[DrugForm] [nvarchar](4000) NULL,
	[Concentration] [nvarchar](4000) NULL,
	[Dosage] [nvarchar](4000) NULL,
	[TradeName] [nvarchar](4000) NULL,
	[RegNumber] [nvarchar](4000) NULL,
	[RegDate] [smalldatetime] NULL,
	[RegDateExpire] [smalldatetime] NULL,
	[AtxCode] [nvarchar](4000) NULL,
	[Manufacturer] [nvarchar](4000) NULL,
	[Measure] [nvarchar](4000) NULL,
	[Type] [int] NULL,
	[State] [int] NULL,
	[LimitPriceTn] [decimal](18, 2) NULL,
	[LimitPriceMnn] [decimal](18, 2) NULL,
	[Country] [nvarchar](4000) NULL,
	[Number] [int] NOT NULL CONSTRAINT [DF_RequestList_Number]  DEFAULT ((0)),
	[Applicant] [nvarchar](4000) NULL,
	[substance_count] [nvarchar](4000) NULL,
	[unit_count] [nvarchar](4000) NULL,
	[volume] [nvarchar](4000) NULL,
	[dosage_comment] [nvarchar](4000) NULL,
	[Mark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_RequestList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requests]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](300) NULL,
	[DateStart] [date] NULL,
	[CategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [uniqueidentifier] NOT NULL,
	[UniqueName] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
	[Value] [nvarchar](max) NULL,
	[Name] [nvarchar](100) NULL,
	[Discription] [nvarchar](510) NULL,
	[Rank] [int] NOT NULL CONSTRAINT [DF_Settings_Rank]  DEFAULT ((0)),
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SignDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignDocument](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](500) NULL,
	[ObjectId] [varchar](50) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[EmployeeId] [uniqueidentifier] NULL,
	[SignXml] [ntext] NULL,
 CONSTRAINT [PK_SignDocument] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_atc_codes]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_atc_codes](
	[id] [int] NOT NULL,
	[code] [varchar](10) NULL CONSTRAINT [DF_atc_codes_code]  DEFAULT (''),
	[name] [varchar](500) NULL CONSTRAINT [DF_atc_codes_name]  DEFAULT (''),
	[name_kz] [nvarchar](1000) NULL CONSTRAINT [DF_atc_codes_name_kaz]  DEFAULT (''),
	[parent_id] [int] NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_atc_codes_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_atc_codes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_boxes]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_boxes](
	[id] [int] NOT NULL,
	[name] [varchar](250) NULL,
	[name_kz] [nvarchar](500) NULL,
	[parent_id] [int] NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_boxes_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_boxes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_boxes] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_categories]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_categories](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_categories] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_countries]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_countries](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[full_name] [varchar](254) NULL,
	[name_kz] [nvarchar](510) NULL,
	[full_name_kz] [nvarchar](508) NULL,
	[name_en] [varchar](100) NULL,
	[short_name] [char](3) NULL,
	[cis_sign] [bit] NOT NULL CONSTRAINT [DF_countries_cis_sign]  DEFAULT ((0)),
	[baltic_sign] [bit] NOT NULL CONSTRAINT [DF_countries_baltic_sign]  DEFAULT ((0)),
	[foreign_sign] [bit] NOT NULL CONSTRAINT [DF_countries_foreign_sign]  DEFAULT ((0)),
	[europe_sign] [bit] NOT NULL CONSTRAINT [DF_countries_europe_sign]  DEFAULT ((0)),
	[america_sign] [bit] NOT NULL CONSTRAINT [DF_countries_america_sign]  DEFAULT ((0)),
	[kz_sign] [bit] NOT NULL CONSTRAINT [DF_countries_kz_sign]  DEFAULT ((0)),
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_countries_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_countries] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_degree_risk_details]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_degree_risk_details](
	[id] [int] NOT NULL,
	[degree_risk_id] [int] NOT NULL,
	[name] [varchar](1500) NULL,
	[name_kz] [nvarchar](3000) NULL,
 CONSTRAINT [PK_degree_risk_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_degree_risks]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_degree_risks](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
 CONSTRAINT [PK_degree_risks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_degree_risks] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_dosage_forms]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_dosage_forms](
	[id] [int] NOT NULL,
	[name] [varchar](500) NULL,
	[name_kz] [nvarchar](1000) NULL,
	[short_name] [varchar](500) NULL,
	[short_name_kz] [nvarchar](1000) NULL,
	[parent_id] [int] NULL,
	[concentration] [bit] NULL,
	[volume] [bit] NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_dosage_forms_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_dosage_forms_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_drug_forms]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_drug_forms](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[pr_box_id] [int] NULL,
	[sec_box_id] [int] NULL,
	[box_count] [nvarchar](100) NULL,
	[full_name] [nvarchar](4000) NULL,
	[specification] [nvarchar](1000) NULL,
	[full_name_kz] [nvarchar](4000) NULL,
	[complete_sign] [bit] NULL,
	[user_id] [int] NULL,
	[pr_box_count] [varchar](50) NULL,
	[sec_box_count] [varchar](50) NULL,
 CONSTRAINT [PK_drug_forms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_drug_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_drug_types](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[name_kz] [nvarchar](200) NULL,
	[parent_id] [int] NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_drug_types_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_drug_types_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_form_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_form_types](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[name_kz] [nvarchar](510) NULL,
	[full_name] [varchar](255) NULL CONSTRAINT [DF_form_types_full_name]  DEFAULT (''),
	[full_name_kz] [nvarchar](510) NULL CONSTRAINT [DF_form_types_full_name_kz]  DEFAULT (''),
 CONSTRAINT [PK_form_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_international_names]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_international_names](
	[id] [int] NOT NULL,
	[name_rus] [varchar](255) NULL,
	[name_eng] [varchar](255) NULL CONSTRAINT [DF_international_names_name_lat]  DEFAULT (''),
	[name_lat] [varchar](255) NULL CONSTRAINT [DF_international_names_name_eng]  DEFAULT (''),
	[name_kz] [nvarchar](510) NULL CONSTRAINT [DF_international_names_name_kaz]  DEFAULT (''),
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_international_names_block_sign]  DEFAULT ((0)),
	[new_sign] [bit] NOT NULL CONSTRAINT [DF_international_names_new_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_international_names] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_life_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_life_types](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_r_life_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_measures]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_measures](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[name_kz] [nvarchar](510) NULL,
	[short_name] [varchar](250) NULL,
	[short_name_kz] [nvarchar](500) NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_measures_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_measures_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_mt_categories]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_mt_categories](
	[id] [int] NOT NULL,
	[name] [varchar](500) NULL,
	[name_kz] [varchar](500) NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_mt_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_nd_names]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_nd_names](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
	[nd_number] [int] NOT NULL CONSTRAINT [DF_nd_names_nd_number]  DEFAULT ((0)),
	[nd_term] [int] NULL,
 CONSTRAINT [PK_nd_names] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_nd_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_nd_types](
	[id] [int] NOT NULL,
	[name] [varchar](250) NOT NULL,
	[name_kz] [nvarchar](250) NOT NULL,
	[short_name] [varchar](50) NULL,
	[short_name_kz] [nvarchar](50) NULL,
 CONSTRAINT [PK_nd_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_pharmacological_actions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_pharmacological_actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[name_kz] [nvarchar](250) NOT NULL,
	[parent_id] [int] NULL,
	[block_sign] [bit] NOT NULL,
 CONSTRAINT [PK_pharmacological_actions_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_producer_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_producer_types](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL CONSTRAINT [DF_producer_types_name]  DEFAULT (''),
	[name_kz] [nvarchar](100) NULL CONSTRAINT [DF_producer_types_name_kz]  DEFAULT (''),
 CONSTRAINT [PK_producer_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_producers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_producers](
	[id] [int] NOT NULL,
	[form_type_id] [bigint] NULL,
	[name] [nvarchar](1000) NULL,
	[name_kz] [nvarchar](1000) NULL CONSTRAINT [DF_producers_name_kz]  DEFAULT (''),
	[name_eng] [varchar](500) NULL CONSTRAINT [DF_producers_name_eng]  DEFAULT (''),
	[rnn] [varchar](12) NULL,
	[bin] [varchar](250) NULL,
	[iin] [varchar](250) NULL,
	[type_id] [int] NOT NULL CONSTRAINT [DF_r_producers_type_id]  DEFAULT ((1)),
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_producers_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_producers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_reg_actions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_reg_actions](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
 CONSTRAINT [PK_reg_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_reg_actions] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_reg_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_reg_types](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
 CONSTRAINT [PK_reg_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_reg_type] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register](
	[id] [int] NOT NULL,
	[reg_type_id] [int] NOT NULL,
	[reg_action_id] [int] NOT NULL,
	[reg_number] [varchar](50) NULL,
	[reg_number_kz] [nvarchar](100) NULL,
	[reg_date] [smalldatetime] NOT NULL,
	[reg_term] [smallint] NOT NULL,
	[expiration_date] [smalldatetime] NULL,
	[name] [varchar](3000) NULL,
	[name_kz] [nvarchar](4000) NULL,
	[_producer_name] [varchar](500) NULL,
	[_producer_name_kz] [nvarchar](1000) NULL,
	[_country_name] [varchar](50) NULL,
	[_country_name_kz] [nvarchar](100) NULL,
	[gmp_sign] [bit] NOT NULL,
	[trademark_sign] [bit] NOT NULL,
	[patent_sign] [bit] NOT NULL,
	[storage_term] [decimal](6, 3) NULL,
	[storage_measure_id] [bigint] NULL,
	[comment] [varchar](500) NULL,
	[comment_kz] [nvarchar](1000) NULL,
	[unlimited_sign] [bit] NULL,
 CONSTRAINT [PK_r_register] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_register_reg_number] UNIQUE NONCLUSTERED 
(
	[reg_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_boxes]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_boxes](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[box_id] [int] NOT NULL,
	[inner_sign] [bit] NOT NULL,
	[volume] [decimal](9, 3) NULL,
	[volume_measure_id] [bigint] NULL,
	[unit_count] [int] NOT NULL,
	[box_size] [varchar](50) NULL,
	[description] [varchar](500) NULL,
 CONSTRAINT [PK_r_register_boxes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_boxes_rk_ls]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sr_register_boxes_rk_ls](
	[id] [int] NOT NULL,
	[state_sign] [bit] NULL,
	[state_date] [smalldatetime] NULL,
 CONSTRAINT [PK_register_boxes_rk_ls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sr_register_drugs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_drugs](
	[id] [int] NOT NULL,
	[drug_type_id] [int] NOT NULL,
	[int_name_id] [int] NOT NULL,
	[_int_name] [varchar](255) NULL,
	[atc_id] [int] NOT NULL,
	[_atc_code] [varchar](50) NULL,
	[_atc_name] [varchar](255) NULL,
	[dosage_form_id] [int] NOT NULL CONSTRAINT [DF_register_drugs_dosage_form_id]  DEFAULT ((0)),
	[dosage_comment] [varchar](500) NULL,
	[dosage_comment_kz] [nvarchar](1000) NULL,
	[_dosage_form_name] [varchar](500) NULL,
	[dosage_value] [decimal](20, 6) NULL,
	[dosage_measure_id] [bigint] NULL,
	[_dosage] [varchar](250) NULL,
	[concentration] [varchar](500) NULL,
	[concentration_kz] [nvarchar](1000) NULL,
	[_unit_count] [varchar](50) NULL,
	[recipe_sign] [bit] NOT NULL,
	[generic_sign] [bit] NOT NULL CONSTRAINT [DF_register_drugs_generic_sign]  DEFAULT ((0)),
	[life_type_id] [int] NOT NULL,
	[category_id] [int] NULL,
	[category_pos] [varchar](250) NULL,
	[nd_name_id] [int] NULL,
	[nd_name] [varchar](50) NULL,
	[nd_number] [varchar](50) NULL,
	[nd_comment] [varchar](250) NULL,
	[substance] [varchar](1000) NULL,
	[biosimilar_sign] [bit] NOT NULL CONSTRAINT [DF_register_drugs_biosimilar_sign]  DEFAULT ((0)),
	[auto_generic_sign] [bit] NOT NULL CONSTRAINT [DF_register_drugs_auto_generic_sign]  DEFAULT ((0)),
	[orphan_sign] [bit] NOT NULL CONSTRAINT [DF_register_drugs_orphan_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_register_drugs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_mt]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_mt](
	[id] [int] NOT NULL,
	[description] [varchar](4000) NULL,
	[purpose] [varchar](2500) NULL,
	[use_area] [varchar](2500) NULL,
	[mt_category_id] [int] NOT NULL,
	[degree_risk_id] [int] NOT NULL,
	[risk_detail_id] [int] NOT NULL CONSTRAINT [DF_register_mt_degree_risk_detail_id]  DEFAULT ((0)),
	[mt_sign] [bit] NOT NULL,
	[sterility_sign] [bit] NOT NULL,
	[measurement_sign] [bit] NOT NULL,
	[balk_sign] [bit] NOT NULL CONSTRAINT [DF_register_mt_balk_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_r_register_mt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_mt_kz]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sr_register_mt_kz](
	[id] [int] NOT NULL,
	[purpose_kz] [nvarchar](4000) NULL,
	[use_area_kz] [nvarchar](4000) NULL,
	[description_kz] [nvarchar](4000) NULL,
 CONSTRAINT [PK_register_mt_kaz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sr_register_mt_parts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_mt_parts](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[name_kz] [nvarchar](max) NOT NULL,
	[part_number] [int] NULL,
	[model] [varchar](250) NULL,
	[specification] [varchar](500) NULL,
	[specification_kz] [nvarchar](1000) NULL,
	[producer_id] [int] NULL,
	[country_id] [int] NULL,
	[producer_name] [varchar](2000) NULL,
	[country_name] [varchar](500) NULL,
	[producer_name_kz] [nvarchar](4000) NULL,
	[country_name_kz] [nvarchar](1000) NULL,
 CONSTRAINT [PK_r_mt_parts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_names]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_names](
	[id] [bigint] NOT NULL,
	[register_id] [int] NOT NULL,
	[name] [varchar](3000) NULL,
	[name_kz] [nvarchar](4000) NULL,
	[name_eng] [varchar](3000) NULL,
	[country_id] [bigint] NOT NULL,
 CONSTRAINT [PK_register_names] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_ordered]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_ordered](
	[reestr] [int] NOT NULL,
	[law_number] [varchar](50) NULL,
	[law_date] [smalldatetime] NULL,
	[law_description] [varchar](200) NULL,
	[reestr_drug_type] [smallint] NOT NULL,
	[registration_number] [varchar](100) NOT NULL,
	[reg_date] [smalldatetime] NOT NULL,
	[val_date] [smalldatetime] NULL,
	[ats] [int] NOT NULL,
	[mnn] [int] NOT NULL,
	[pharm_name] [int] NOT NULL,
	[pharm_form] [int] NOT NULL,
	[firm] [int] NOT NULL,
	[country] [smallint] NOT NULL,
	[package] [int] NULL,
	[dose] [int] NULL,
	[concentrant] [int] NULL,
	[recept] [bit] NULL,
	[content] [varchar](8000) NULL,
	[in_control] [smallint] NULL,
	[list_imp_life] [bit] NULL,
	[parent] [int] NULL,
	[registration_type] [smallint] NULL,
	[expired] [money] NULL,
	[structure] [varchar](8000) NULL,
	[volume_of_fill] [int] NULL,
	[npp] [int] NULL,
	[val_year] [smallint] NULL,
	[primary_packing] [smallint] NULL,
	[secondary_packing] [smallint] NULL,
	[firm_packing] [int] NULL,
	[country_packing] [smallint] NULL,
	[firm_owner] [int] NULL,
	[country_owner] [smallint] NULL,
	[reestr_drug_type_code] [varchar](50) NOT NULL,
	[reestr_drug_type_name] [varchar](50) NOT NULL,
	[ats_code] [varchar](50) NOT NULL,
	[ats_name] [varchar](500) NOT NULL,
	[MNN_NAME] [varchar](1000) NOT NULL,
	[PHARM_NAMES_NAME] [varchar](4000) NULL,
	[pharm_name_category] [smallint] NOT NULL,
	[PHARM_NAME_CATEGORY_NAME] [varchar](200) NOT NULL,
	[PHARM_FORM_NAME] [varchar](500) NOT NULL,
	[PHARM_FORM_NAME_KAZ] [varchar](500) NULL,
	[FIRM_NAME] [varchar](1000) NULL,
	[COUNTRY_NAME] [varchar](200) NOT NULL,
	[PACKAGES_NAME] [varchar](50) NULL,
	[DOSES_NAME] [varchar](50) NULL,
	[DOSES_UNIT_NAME] [varchar](50) NULL,
	[CONC_NAME] [varchar](50) NULL,
	[IN_CONTROL_NAME] [varchar](100) NULL,
	[color] [varchar](50) NULL,
	[REGISTRATION_TYPE_NAME] [varchar](50) NULL,
	[VOF_NAME] [varchar](200) NULL,
	[VOF_UNIT_NAME] [varchar](50) NULL,
	[country_type] [varchar](50) NULL,
	[ats_parent] [int] NULL,
	[reestr_text] [varchar](8000) NULL,
	[pharm_form_union_name] [varchar](500) NULL,
	[package_union] [smallmoney] NULL,
	[dose_union] [varchar](100) NULL,
	[conc_union] [varchar](50) NULL,
	[vof_union] [varchar](100) NULL,
	[primary_packing_name] [varchar](1000) NULL,
	[secondary_packing_name] [varchar](1000) NULL,
	[firm_owner_name] [varchar](1000) NULL,
	[firm_packing_name] [varchar](1000) NULL,
	[country_owner_name] [varchar](200) NULL,
	[country_packing_name] [varchar](200) NULL,
	[pkg_txt] [varchar](51) NULL,
	[license_owner_firm_name] [varchar](1000) NULL,
	[license_owner_country_name] [varchar](200) NULL,
	[firm_license_owner] [int] NULL,
	[country_license_owner] [smallint] NULL,
	[reestr_change_type] [smallint] NULL,
	[change_type_name] [varchar](100) NULL,
	[expire_date] [smalldatetime] NULL,
 CONSTRAINT [PK_sr_registerOrdered] PRIMARY KEY CLUSTERED 
(
	[reestr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_pharmacological_actions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sr_register_pharmacological_actions](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[pharmacological_action_id] [int] NOT NULL,
 CONSTRAINT [PK_register_pharmacological_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sr_register_producers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sr_register_producers](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[producer_id] [int] NOT NULL,
	[producer_type_id] [int] NOT NULL CONSTRAINT [DF_r_register_producers_producer_type_id]  DEFAULT ((0)),
	[country_id] [bigint] NOT NULL,
	[language_sign] [bit] NOT NULL CONSTRAINT [DF_register_producers_language_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_r_register_producers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sr_register_substances]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_register_substances](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[substance_type_id] [int] NOT NULL,
	[substance_id] [int] NOT NULL,
	[substance_count] [decimal](18, 8) NULL,
	[measure_id] [bigint] NULL,
	[producer_id] [int] NULL,
	[country_id] [bigint] NULL,
	[nd_type_id] [int] NULL,
	[comment] [varchar](250) NULL,
 CONSTRAINT [PK_r_register_substances] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_register_use_methods]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sr_register_use_methods](
	[id] [int] NOT NULL,
	[register_id] [int] NOT NULL,
	[use_method_id] [int] NOT NULL,
 CONSTRAINT [PK_register_use_methods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sr_substance_types]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_substance_types](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[name_kz] [nvarchar](100) NULL,
 CONSTRAINT [PK_substance_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_substances]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_substances](
	[id] [int] NOT NULL,
	[name] [varchar](250) NULL,
	[name_kz] [nvarchar](500) NULL,
	[name_eng] [varchar](250) NULL,
	[animal_sign] [bit] NOT NULL,
	[category_id] [int] NULL,
	[category_pos] [varchar](50) NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_substances_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_r_substances] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_substances] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sr_use_methods]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sr_use_methods](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[name_kz] [nvarchar](255) NOT NULL,
	[block_sign] [bit] NOT NULL CONSTRAINT [DF_use_methods_block_sign]  DEFAULT ((0)),
 CONSTRAINT [PK_use_methods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Tasks_Id]  DEFAULT (newid()),
	[Text] [nvarchar](4000) NULL,
	[ExecutionDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[AuthorId] [nvarchar](4000) NULL,
	[AuthorValue] [nvarchar](4000) NULL,
	[ExecutorId] [nvarchar](4000) NULL,
	[ExecutorValue] [nvarchar](4000) NULL,
	[State] [int] NOT NULL CONSTRAINT [DF_Tasks_State]  DEFAULT ((0)),
	[DocumentValue] [nvarchar](4000) NULL,
	[Type] [int] NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[ActivityId] [uniqueidentifier] NULL,
	[AutoExecutionDate]  AS (CONVERT([date],[ExecutionDate],(0))),
	[Number] [nvarchar](4000) NULL,
	[FunctionType] [int] NOT NULL CONSTRAINT [DF_Tasks_TypeEx]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Tasks_IsActive]  DEFAULT ((1)),
	[NotificationCount] [int] NOT NULL CONSTRAINT [DF_Tasks_NotificationCount]  DEFAULT ((0)),
	[IsNotification] [bit] NOT NULL CONSTRAINT [DF_Tasks_IsNotification]  DEFAULT ((0)),
	[SortingNumber] [int] NOT NULL CONSTRAINT [DF_Tasks_SortingNumber]  DEFAULT ((0)),
	[DateOfOperation] [datetime] NULL,
	[ModifiedUser] [nvarchar](4000) NULL,
	[IsMainLine] [bit] NOT NULL CONSTRAINT [DF_Tasks_IsMainLine]  DEFAULT ((0)),
	[Ip] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[TypeEx] [int] NOT NULL CONSTRAINT [DF_Tasks_TypeEx_1]  DEFAULT ((0)),
	[Stage] [int] NOT NULL CONSTRAINT [DF_Tasks_Stage]  DEFAULT ((0)),
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Templates]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Templates](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[Type] [int] NULL CONSTRAINT [DF_TemplateProject_Type]  DEFAULT ((0)),
	[Data] [varbinary](max) NULL,
	[TemplateType] [int] NULL,
	[Report] [varbinary](max) NULL,
	[ConvertDictionaryTypeId] [uniqueidentifier] NULL,
	[ConvertType] [int] NULL,
	[DictionaryTypeValue] [nvarchar](4000) NULL,
	[DictionaryTypeId] [nvarchar](4000) NULL,
	[Value] [nvarchar](4000) NULL,
	[Validation] [nvarchar](4000) NULL,
	[PrintForm] [varbinary](max) NULL,
 CONSTRAINT [PK_TemplateProject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempTmc]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempTmc](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Count] [nvarchar](max) NULL,
	[CountFact] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
 CONSTRAINT [PK_TempTmc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcApplicationComments]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcApplicationComments](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TmcApplicationComments_Id]  DEFAULT (newid()),
	[CreateDate] [date] NOT NULL CONSTRAINT [DF_TmcApplicationComments_CreateDate]  DEFAULT (getdate()),
	[Comment] [nvarchar](max) NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[CreateEmployeeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TmcApplicationComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcIns]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcIns](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedEmployeeId] [uniqueidentifier] NOT NULL,
	[StateType] [int] NOT NULL CONSTRAINT [DF_TmcIns_StateType]  DEFAULT ((0)),
	[OwnerEmployeeId] [uniqueidentifier] NULL,
	[Provider] [nvarchar](450) NULL,
	[ContractNumber] [nvarchar](450) NULL,
	[ContractDate] [date] NULL,
	[LastDeliveryDate] [date] NULL,
	[IsFullDelivery] [bit] NOT NULL CONSTRAINT [DF_TmcApplications_IsFullDelivery]  DEFAULT ((0)),
	[PowerOfAttorney] [nvarchar](450) NULL,
	[ProviderBin] [nvarchar](450) NULL,
	[ExecutorEmployeeId] [uniqueidentifier] NULL,
	[AgreementEmployeeId] [uniqueidentifier] NULL,
	[IsScan] [bit] NOT NULL CONSTRAINT [DF_TmcIns_IsScan]  DEFAULT ((0)),
	[AccountantEmployeeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TmcApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcOffs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcOffs](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedEmployeeId] [uniqueidentifier] NOT NULL,
	[StateType] [int] NOT NULL CONSTRAINT [DF_TmcOffs_StateType]  DEFAULT ((0)),
	[TmcOutId] [uniqueidentifier] NULL,
	[Note] [nvarchar](450) NULL,
	[Count] [decimal](18, 6) NOT NULL CONSTRAINT [DF_TmcOffs_Count]  DEFAULT ((0)),
	[ExpertiseStatementId] [uniqueidentifier] NULL,
	[ExpertiseStatementNumber] [nvarchar](512) NULL,
	[ExpertiseStatementTypeStr] [nvarchar](512) NULL,
 CONSTRAINT [PK_TmcOffs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcOutCounts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcOutCounts](
	[Id] [uniqueidentifier] NOT NULL,
	[TmcOutId] [uniqueidentifier] NOT NULL,
	[TmcId] [uniqueidentifier] NOT NULL,
	[Count] [decimal](18, 6) NOT NULL CONSTRAINT [DF_TmcOutCounts_Count]  DEFAULT ((0)),
	[CountFact] [decimal](18, 6) NOT NULL CONSTRAINT [DF_TmcOutCounts_Count1]  DEFAULT ((0)),
	[StateType] [int] NOT NULL CONSTRAINT [DF_TmcOutCounts_StateType]  DEFAULT ((0)),
	[Note] [nvarchar](450) NULL,
 CONSTRAINT [PK_TmcOutCounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcOuts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcOuts](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedEmployeeId] [uniqueidentifier] NOT NULL,
	[StateType] [int] NOT NULL CONSTRAINT [DF_TmcOuts_StateType]  DEFAULT ((0)),
	[Note] [nvarchar](450) NULL,
	[OutTypeDicId] [uniqueidentifier] NULL,
	[StorageDicId] [uniqueidentifier] NULL,
	[Safe] [nvarchar](450) NULL,
	[Rack] [nvarchar](450) NULL,
	[OwnerEmployeeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TmcOuts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcReportData]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcReportData](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedEmployeeId] [uniqueidentifier] NOT NULL,
	[CreatedEmployeeName] [nvarchar](4000) NOT NULL,
	[TmcId] [uniqueidentifier] NULL,
	[TmcName] [nvarchar](4000) NULL,
	[TmcCode] [nvarchar](512) NULL,
	[GeneralCount] [decimal](18, 6) NULL,
	[GeneralCountFact] [decimal](18, 6) NULL,
	[GeneralConvertFact] [decimal](18, 6) NULL,
	[IssuedCount] [decimal](18, 6) NULL,
	[UseCount] [decimal](18, 6) NULL,
	[UseFactCount] [decimal](18, 6) NULL,
	[ReceivedDate] [datetime] NULL,
	[MeasureName] [nvarchar](4000) NULL,
	[MeasureConvertName] [nvarchar](4000) NULL,
	[UseReasonText] [text] NULL,
	[PositionId] [uniqueidentifier] NULL,
	[PositionName] [nvarchar](4000) NULL,
	[SubDepartmentId] [uniqueidentifier] NULL,
	[SubDepartmentName] [nvarchar](4000) NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[DepartmentName] [nvarchar](4000) NULL,
	[CenterId] [uniqueidentifier] NULL,
	[CenterName] [nvarchar](4000) NULL,
	[ExpertiseStatementId] [uniqueidentifier] NULL,
	[ExpertiseStatementNumber] [text] NULL,
	[ExpertiseStatementTypeStr] [text] NULL,
	[refTmcReport] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TmcReportData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcReports]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcReports](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[PeriodStartDate] [datetime] NOT NULL,
	[PeriodEndDate] [datetime] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[DepartmentValue] [nvarchar](4000) NULL,
	[CreateEmployeeId] [uniqueidentifier] NOT NULL,
	[CreateEmployeeValue] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteDate] [datetime] NULL,
	[ReportType] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_TmcReports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TmcReportTasks]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmcReportTasks](
	[Id] [uniqueidentifier] NOT NULL,
	[Operation] [nvarchar](512) NOT NULL,
	[Stage] [int] NOT NULL,
	[State] [int] NOT NULL,
	[ExecutorEmployeeId] [uniqueidentifier] NOT NULL,
	[ExecutorEmployeeValue] [nvarchar](4000) NOT NULL,
	[CreateEmployeeId] [uniqueidentifier] NOT NULL,
	[CreateEmployeeValue] [nvarchar](4000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[DeleteDate] [datetime] NULL,
	[Note] [nvarchar](4000) NULL,
	[refTmcReport] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TmcReportTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tmcs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tmcs](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedEmployeeId] [uniqueidentifier] NOT NULL,
	[StateType] [int] NOT NULL CONSTRAINT [DF_Tmcs_StateType]  DEFAULT ((0)),
	[TmcInId] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[Code] [nvarchar](450) NULL,
	[Manufacturer] [nvarchar](450) NULL,
	[Serial] [nvarchar](450) NULL,
	[Count] [decimal](18, 6) NOT NULL CONSTRAINT [DF_Tmcs_Count]  DEFAULT ((0)),
	[MeasureTypeDicId] [uniqueidentifier] NULL,
	[CountFact] [decimal](18, 6) NOT NULL CONSTRAINT [DF_Tmcs_CountFact]  DEFAULT ((0)),
	[CountConvert] [decimal](18, 6) NOT NULL CONSTRAINT [DF_Tmcs_CountConvert]  DEFAULT ((0)),
	[MeasureTypeConvertDicId] [uniqueidentifier] NULL,
	[CountActual] [decimal](18, 6) NOT NULL CONSTRAINT [DF_Tmcs_CountActual]  DEFAULT ((0)),
	[ManufactureDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[PackageDicId] [uniqueidentifier] NULL,
	[TmcTypeDicId] [uniqueidentifier] NULL,
	[StorageDicId] [uniqueidentifier] NULL,
	[Safe] [nvarchar](450) NULL,
	[Rack] [nvarchar](450) NULL,
	[OwnerEmployeeId] [uniqueidentifier] NULL,
	[ReceivingDate] [date] NULL,
	[WriteoffDate] [datetime] NULL,
 CONSTRAINT [PK_Tmcs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Units]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Code] [nvarchar](510) NULL,
	[Name] [nvarchar](4000) NULL,
	[ShortName] [nvarchar](4000) NULL,
	[Path] [nvarchar](510) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[EmployeeId] [uniqueidentifier] NULL,
	[PositionState] [int] NOT NULL,
	[ManagerId] [nvarchar](4000) NULL,
	[SecretaryId] [nvarchar](4000) NULL,
	[BossId] [nvarchar](4000) NULL,
	[ChancelleryId] [nvarchar](4000) NULL,
	[UnitTypeDictionaryId] [nvarchar](4000) NULL,
	[UnitTypeDictionaryValue] [nvarchar](4000) NULL,
	[Type] [int] NOT NULL,
	[ManagerValue] [nvarchar](4000) NULL,
	[SecretaryValue] [nvarchar](4000) NULL,
	[BossValue] [nvarchar](4000) NULL,
	[ChancelleryValue] [nvarchar](4000) NULL,
	[DisplayName] [nvarchar](4000) NULL,
	[CuratorId] [nvarchar](4000) NULL,
	[CuratorValue] [nvarchar](4000) NULL,
	[Rank] [int] NOT NULL CONSTRAINT [DF_Units_Rank]  DEFAULT ((0)),
	[Email] [nvarchar](900) NULL,
	[PositionType] [int] NOT NULL CONSTRAINT [DF_Units_PositionType]  DEFAULT ((0)),
	[PositionStaff] [int] NOT NULL CONSTRAINT [DF_Units_PositionStaff]  DEFAULT ((0)),
	[NameKz] [nvarchar](4000) NULL,
	[LegalAddress] [nvarchar](200) NULL,
	[ActualAddress] [nvarchar](200) NULL,
	[Phone] [nvarchar](100) NULL,
	[CountryId] [uniqueidentifier] NULL,
	[Iin] [nvarchar](100) NULL,
	[Bin] [nvarchar](100) NULL,
	[ApplicationNumber] [nvarchar](100) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_lims_ApplicationEAdmissions_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_lims_ApplicationEExploitation_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_lims_ApplicationElements_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_lims_Applications_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_lims_Applications_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_lims_Applications_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_primary_ApplicationElements_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_primary_Applications_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_primary_Applications_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_primary_Applications_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_trl_DirectionElements_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking](
	[Id] [uniqueidentifier] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[restore_timestamp] [bigint] NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DbSync.sync_fr_I1c_trl_DirectionsToPay_tracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_schema_info]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DbSync].[sync_fr_schema_info](
	[schema_major_version] [int] NOT NULL,
	[schema_minor_version] [int] NOT NULL,
	[schema_extended_info] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DbSync.sync_fr_schema_info] PRIMARY KEY CLUSTERED 
(
	[schema_major_version] ASC,
	[schema_minor_version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [DbSync].[sync_fr_scope_config]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DbSync].[sync_fr_scope_config](
	[config_id] [uniqueidentifier] NOT NULL,
	[config_data] [xml] NOT NULL,
	[scope_status] [char](1) NULL,
 CONSTRAINT [PK_DbSync.sync_fr_scope_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [DbSync].[sync_fr_scope_info]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DbSync].[sync_fr_scope_info](
	[scope_local_id] [int] IDENTITY(1,1) NOT NULL,
	[scope_id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[sync_scope_name] [nvarchar](100) NOT NULL,
	[scope_sync_knowledge] [varbinary](max) NULL,
	[scope_tombstone_cleanup_knowledge] [varbinary](max) NULL,
	[scope_timestamp] [timestamp] NULL,
	[scope_config_id] [uniqueidentifier] NULL,
	[scope_restore_count] [int] NOT NULL DEFAULT ((0)),
	[scope_user_comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_DbSync.sync_fr_scope_info] PRIMARY KEY CLUSTERED 
(
	[sync_scope_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[RegisterProjectJournal]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RegisterProjectJournal]
AS
SELECT        rp.IsStageEnd, rp.EndDate, rp.Id, rp.Type, doc.Number, rp.CreatedDate, rp.Status, rp.OwnerId, rp.ContractId, rp.AccelerationTypeDicId, rp.AccelerationNumber, rp.AccelerationDate, rp.AccelerationNote, 
                         rp.NameRu AS TradeName, rp.NameKz, rp.NameRu, rp.NameEn, rp.MnnKz, rp.MnnEn, rp.MnnRu, rp.IsPatent, rp.PatentNumber, rp.PatentDate, rp.PatentExpiryDate, rp.LsFormNameKz, rp.LsFormNameRu, 
                         rp.AtxCode, rp.AtxNameKz, rp.AtxNameRu, rp.LsTypeDicId, rp.LsType2DicId, rp.OriginalName, rp.SaleTypeDicId, rp.IntroducingMethodDicId, rp.Dosage, rp.DosageMeasureTypeDicId, rp.DosageNoteKz, 
                         rp.DosageNoteRu, rp.ConcentrationRu, rp.ConcentrationKz, rp.CompositionId, rp.IsGrls, rp.Transportation, rp.ManufactureTypeDicId, rp.IsGmp, rp.GmpExpiryDate, rp.BestBefore, rp.BestBeforeMeasureTypeDicId, 
                         rp.AppPeriod1BeginDate, rp.AppPeriod1FinishDate, rp.AppPeriod2BeginDate, rp.AppPeriod2FinishDate, rp.StorageConditions1, rp.StorageConditions2, rp.Barcode, rp.ManufacturePrice, rp.RefPrice, rp.RegPrice, 
                         rp.SecureDocument, rp.SecureDocumentNumber, rp.SecureDocumentDate, rp.SecureDocumentExpiryDate, rp.IsConvention, rp.RegDocNumber, rp.RegDocDate, rp.RegDocExpiryDate, 
                         rp.RegDocNormativeNumber, rp.ResultTypeDicId, rp.IsPayed, rp.PayDate, rp.StartDate, rp.ContrDate, rp.ConclusionDate, rp.IsStageExpired, rp.ExpiredDayCount, rp.ExpertAz, rp.OutgoingDoc, rp.DayCount, 
                         rp.IsNewManufacrurer, d1.Name AS RegisterType, mo.NameRu AS ManufaturerName, d3.Name AS CountryName, ao.NameRu AS ApplicantName, d4.Name AS Classification, d5.Name AS Mnn, 
                         d6.Name AS DosageMeasureTypeName, d2.Name AS ExpertiseStage, doc.ResponsibleId, doc.ResponsibleValue, d7.Name AS ResultTypeName, drs.Name AS StatusValue
FROM            dbo.RegisterProjects AS rp LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Type = 'RegisterProjectType' AND d1.Code = CAST(rp.Type AS nvarchar(MAX)) LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Type = 'RegisterProjectStatus' AND d2.Code = CAST(rp.Status AS nvarchar(MAX)) LEFT OUTER JOIN
                         dbo.Contracts AS c ON c.Id = rp.ContractId LEFT OUTER JOIN
                         dbo.Organizations AS mo ON c.ManufacturerOrganizationId = mo.Id LEFT OUTER JOIN
                         dbo.Organizations AS ao ON c.ApplicantOrganizationId = ao.Id LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = mo.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = rp.LsTypeDicId LEFT OUTER JOIN
                         dbo.Compositions AS cm ON cm.Id = rp.CompositionId LEFT OUTER JOIN
                         dbo.Dictionaries AS d5 ON d5.Id = cm.MaterialNameDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d6 ON d6.Id = rp.DosageMeasureTypeDicId LEFT OUTER JOIN
                         dbo.Documents AS doc ON doc.Id = rp.Id LEFT OUTER JOIN
                         dbo.Dictionaries AS drs ON drs.Type = 'RegisterProjectStatus' AND rp.Status = drs.Code LEFT OUTER JOIN
                         dbo.Dictionaries AS d7 ON d7.Id = rp.ResultTypeDicId


GO
/****** Object:  View [dbo].[PrtPrjsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PrtPrjsView]
AS
SELECT        dbo.PrtPrjs.Id, prj.Id AS ProjectId, prj.Number AS ProjectNumber, prj.CreatedDate AS ProjectDate, prj.ManufaturerName, prj.CountryName, prj.ApplicantName, prt.Number AS ProtocolNumber, 
                         prt.DocumentDate AS ProtocolDate, prt.Summary AS ProtocolSummary, dbo.PrtPrjs.ResultDictionaryId, prt.Id AS ProtocolId, dic.Name
FROM            dbo.PrtPrjs LEFT OUTER JOIN
                         dbo.RegisterProjectJournal AS prj ON prj.Id = dbo.PrtPrjs.ProjectId LEFT OUTER JOIN
                         dbo.Documents AS prt ON prt.Id = dbo.PrtPrjs.ProtocolId LEFT OUTER JOIN
                         dbo.Dictionaries AS dic ON dic.Id = dbo.PrtPrjs.ResultDictionaryId



GO
/****** Object:  View [dbo].[PrtPrjsView2]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[PrtPrjsView2]
AS
SELECT        dbo.PrtPrjs.Id, prj.Id AS ProjectId, prj.Number AS ProjectNumber, prj.CreatedDate AS ProjectDate, prj.ManufaturerName, prj.CountryName, prj.ApplicantName, prt.Number AS ProtocolNumber, 
                         prt.DocumentDate AS ProtocolDate, prt.Summary AS ProtocolSummary, dbo.PrtPrjs.ResultDictionaryId, prt.Id AS ProtocolId, dic.Name
FROM            dbo.PrtPrjs LEFT OUTER JOIN
                         dbo.RegisterProjectJournal AS prj ON prj.Id = dbo.PrtPrjs.ProjectId LEFT OUTER JOIN
                         dbo.Documents AS prt ON prt.Id = dbo.PrtPrjs.ProtocolId LEFT OUTER JOIN
                         dbo.Dictionaries AS dic ON dic.Id = dbo.PrtPrjs.ResultDictionaryId




GO
/****** Object:  View [dbo].[TmcOutView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TmcOutView]
AS
SELECT        t.Id, t.CreatedDate, t.CreatedEmployeeId, ce.DisplayName AS CreatedEmployeeValue, t.StateType, 
                         (CASE WHEN t .StateType = 0 THEN N'Новый' WHEN t .StateType = - 1 THEN N'Отклонен' WHEN t .StateType = 2 THEN N'Выдан' ELSE N'Отправленный' END) AS StateTypeValue, t.Note, t.OutTypeDicId, 
                         d1.Name AS OutTypeDicValue, t.StorageDicId, d2.Name AS StorageDicValue, t.Safe, t.Rack, t.OwnerEmployeeId, e.DisplayName AS OwnerEmployeeValue
FROM            dbo.TmcOuts AS t LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = t.OwnerEmployeeId LEFT OUTER JOIN
                         dbo.Employees AS ce ON ce.Id = t.CreatedEmployeeId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = t.OutTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = t.StorageDicId



GO
/****** Object:  View [dbo].[TmcOutCountView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW [dbo].[TmcOutCountView]
AS
SELECT        CASE WHEN
                             (SELECT        COUNT(*)
                               FROM            TmcOffs
                               WHERE        TmcOffs.TmcOutId = toc.Id) = 0 THEN toc.CountFact WHEN
                             (SELECT        COUNT(*)
                               FROM            TmcOffs
                               WHERE        TmcOffs.TmcOutId = toc.Id) > 0 THEN toc.CountFact -
                             (SELECT        SUM([Count])
                               FROM            TmcOffs
                               WHERE        TmcOffs.TmcOutId = toc.Id) END AS CountActual, toc.Id, toc.TmcOutId, toc.TmcId, t.Name, t.MeasureTypeConvertDicId, d1.Name AS MeasureTypeConvertDicValue, toc.Count, toc.CountFact, 
                         toc.StateType, 'Статус' AS StateTypeValue, toc.Note, tout.OwnerEmployeeValue, tout.StorageDicValue, tout.Safe, tout.Rack, t.CreatedDate, tout.CreatedEmployeeId, t.StateType AS TmcStateType, t.TmcInId, t.Number, 
                         t.Code, t.Manufacturer, t.Serial, t.Count AS TmcCount, t.MeasureTypeDicId, t.CountFact AS TmcCountFact, t.CountConvert, t.MeasureTypeConvertDicId AS TmcMeasureTypeConvertDicId, t.ManufactureDate, 
                         t.ExpiryDate, t.PackageDicId, t.TmcTypeDicId, t.StorageDicId, t.Safe AS TmcSafe, t.Rack AS TmcRack, t.OwnerEmployeeId, d2.Name AS MeasureTypeDicValue, d3.Name AS PackageDicValue, 
                         d4.Name AS TmcTypeDicValue, e.DisplayName AS OwnerEmployeeName
FROM            dbo.TmcOutCounts AS toc LEFT OUTER JOIN
                         dbo.Tmcs AS t ON t.Id = toc.TmcId LEFT OUTER JOIN
                         dbo.TmcOutView AS tout ON tout.Id = toc.TmcOutId LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = t.OwnerEmployeeId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = t.MeasureTypeConvertDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = t.MeasureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = t.PackageDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = t.TmcTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d5 ON d5.Id = t.StorageDicId


GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsDocumentsPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsDocumentsPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date,
	@EmployeeId nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
	Employees.FullName
	,enum.Value "Тип документа"
	,sum(case when t.State=0 then 1 else 0 end) "Новые"
	,sum(case when t.State=4 then 1 else 0 end) "Принятые в работу"
	,sum(case when t.State=2 then 1 else 0 end) "Исполненные"
	,sum(case when t.State=3 then 1 else 0 end) "Исполненные отрицательно"
	,sum(case when t.State=1 then 1 else 0 end) "В работе"
	,sum(case when t.State<>2 and t.State<>3 and t.ExecutionDate<GETDATE() then 1 else 0 end) "Просроченные"
	,count(*) "Всего"
	from Tasks as t
	left join Documents as d
	on (t.DocumentId=d.Id)
	left join Activities as a
	on t.ActivityId = a.Id
	left join (select * from PrismEnums where Type='DocumentType') as enum
	on enum.[Key]=d.DocumentType
	left join Employees
    on (employees.id=cast(d.ResponsibleId as uniqueidentifier))
    left join Units
    on (Employees.PositionId=Units.Id)
    left join Units as Department
    on (Units.ParentId=Department.Id)
    where d.IsDeleted=0 
    and (d.DocumentType=0 or d.DocumentType=2 or d.DocumentType=3 or d.DocumentType=4 or d.DocumentType=5)
    and d.DocumentDate between @Period_s and @Period_po
	and Department.Id=(select u2.Id from Employees as e left join Units as u1 on e.PositionId=u1.Id left join Units as u2 on u1.ParentId=u2.Id where e.Id=@EmployeeId)
	and a.IsNotActive=0 and t.IsActive=1
	Group by Employees.FullName, enum.Value
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsEmployeesDocsOnCitizenPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsEmployeesDocsOnCitizenPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and
d.StateType>0 and d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) as SumCount
,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3,4) and lk.EmployeeId = E.Id and d.DocumentType=2 and 
d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Почта' and  DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
 ,(select d.DisplayName + ', ' from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType>0  and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Почта' and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and  DocumentDate between @p_s and @p_po
    for xml path(''))As  Docs,

(select d.DisplayName + ', '  from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Почта' 
    and AutoAnswersTempValue is not null and AutoAnswersTempValue<>'' 
    and DocumentDate between @p_s and @p_po
    for xml path('')) as  TempDocs 


from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsEmployeesDocsOnIncomingPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsEmployeesDocsOnIncomingPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and
D.StateType> 0  and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po ) as SumCount
,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=0 and 
d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and 
d.DocumentKindDictionaryValue<>'Почта' and  DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
 ,(select d.DisplayName + ', ' from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType>0  and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and 
d.DocumentKindDictionaryValue<>'Почта' and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and  DocumentDate between @p_s and @p_po
    for xml path(''))As  Docs,

(select d.DisplayName + ', '  from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and 
d.DocumentKindDictionaryValue<>'Почта' 
    and AutoAnswersTempValue is not null and AutoAnswersTempValue<>'' 
    and DocumentDate between @p_s and @p_po
    for xml path('')) as  TempDocs 


from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsEmployeesDocsOnInternalPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsEmployeesDocsOnInternalPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and
D.StateType>0 and 
d.DocumentType=5 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Обращение' and DocumentDate between @p_s and @p_po) as SumCount
,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=5 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Обращение' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=5 and 
d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Обращение' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=5 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Обращение' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=5 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Обращение' and  DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=5 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Обращение' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
 ,(select d.DisplayName + ', ' from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType>0  and lk.EmployeeId = E.Id and d.DocumentType=5 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Обращение' and d.StateType!=9 and
-- (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
 DocumentDate between @p_s and @p_po
    for xml path(''))As  Docs




from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsEmployeesOnCitizenPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsEmployeesOnCitizenPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and
D.StateType>0 and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As SumCount

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=2 and 
d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Почта' and  DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsEmployeesOnIncomingPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsEmployeesOnIncomingPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and
D.StateType>0 and d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) as SumCount
,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=0 and 
d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and 
d.DocumentKindDictionaryValue<>'Почта' and  DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsOnCitizenPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	По отделам обращения
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsOnCitizenPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName

,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and

D.StateType>0 and  d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and StateType > 0 and DocumentDate between @p_s and @p_po) SumCount
,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and StateType > 0 and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=2 and 
d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and StateType > 0 and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=2 and d.IsDeleted=0 and StateType > 0 and d.CitizenTypeDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and 
d.CitizenTypeDictionaryValue<>'Почта' and StateType > 0 and   DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=2 and d.IsDeleted=0 and d.CitizenTypeDictionaryValue<>'Почта' and StateType > 0 and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId

)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsOnIncomingPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	По отделам обращения
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsOnIncomingPeriodExclude] 
(	
	-- Add the parameters for the function here
	@P_s date,
    @P_po date
)
RETURNS TABLE 
AS
RETURN 
(
select
Y.DisplayName,E.ShortName
,(select count(DISTINCT d.Id) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where lk.EmployeeId = E.Id and

D.StateType>0 and d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) as SumCount

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and D.StateType=9 and 
d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Performed

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and lk.EmployeeId = E.Id and d.DocumentType=0 and 
d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As Controlling

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType=3 and lk.EmployeeId = E.Id and 
d.DocumentType=0 and d.IsDeleted=0  and d.DocumentKindDictionaryValue<>'Почта' and DocumentDate between @p_s and @p_po) As InWork

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId' ) as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and d.AutoAnswersTempValue is not null and 
d.AutoAnswersTempValue<>'' and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and 
d.DocumentKindDictionaryValue<>'Почта'  and   DocumentDate between @p_s and @p_po) As LongTerm

,(select count(*) from Documents as d 
left join ( select * from LinkUnits as l where  l.PropertyName = 'ResponsibleId') as lk
on  lk.OwnerId = d.Id 
where d.MonitoringType in (2,3) and d.StateType!=9 and (d.AutoAnswersTempValue is null or d.AutoAnswersTempValue='') and 
d.ExecutionDate<GETDATE() and lk.EmployeeId = E.Id and d.DocumentType=0 and d.IsDeleted=0 and d.DocumentKindDictionaryValue<>'Почта' and 
DocumentDate between @p_s and @p_po) As NotPerformed 
 
from Employees As E 
left join Units As U on E.PositionId=U.Id
left join Units Y on Y.Id=U.ParentId
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsPeriodExclude] 
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date
)
RETURNS TABLE 
AS
RETURN 
(
select 
"Всего"
,"Контрольные"
,"Отдел"
,"Исполненные"
,"В работе"
,"Долгосрочные"
,"Не исполненные"
,cast("Не исполненные" as decimal)*100/cast("Всего" as decimal) as "Не исполненные в %"
from
	(select
    count(*) "Всего"
    ,sum(case when MonitoringType in (2,3,4) then 1 else 0 end) "Контрольные"
    ,Department.Name "Отдел"
    ,sum(case when MonitoringType in (2,3,4) and StateType=9 then 1 else 0 end) "Исполненные"
    ,sum(case when MonitoringType in (2,3,4) and StateType=3 then 1 else 0 end) "В работе"
    ,sum(case when MonitoringType in (2,3,4) and StateType!=9 and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''  then 1 else 0 end) "Долгосрочные"
    ,sum(case when MonitoringType in (2,3,4) and StateType!=9 and (AutoAnswersTempValue is null or AutoAnswersTempValue='') and ExecutionDate<GETDATE() then 1 else 0 end) "Не исполненные"
    from Documents	
	left join Employees
    on (employees.id=cast(documents.ResponsibleId as uniqueidentifier))
    left join Units
    on (Employees.PositionId=Units.Id)
    left join Units as Department
    on (Units.ParentId=Department.Id)
    where Documents.IsDeleted=0 
    and ( DocumentType=0 )
    and Documents.ResponsibleId is not null
    and Department.Name is not null
    and DocumentDate between @Period_s and @Period_po
	Group by Department.Name) as t
)




GO
/****** Object:  UserDefinedFunction [dbo].[DepartmentsTasksPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DepartmentsTasksPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date,
	@EmployeeId nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
	Employees.FullName
	,enum.Value "Тип задания"
	,sum(case when t.State=0 then 1 else 0 end) "Новые"
	,sum(case when t.State=4 then 1 else 0 end) "Принятые в работу"
	,sum(case when t.State=2 then 1 else 0 end) "Исполненные"
	,sum(case when t.State=3 then 1 else 0 end) "Исполненные отрицательно"
	,sum(case when t.State=1 then 1 else 0 end) "В работе"
	,sum(case when t.State<>2 and t.State<>3 and t.ExecutionDate<GETDATE() then 1 else 0 end) "Просроченные"
	,count(*) "Всего"
	from Tasks as t
	left join Documents as d
	on (t.DocumentId=d.Id)
	left join Activities as a
	on t.ActivityId = a.Id
	left join (select * from PrismEnums where Type='TaskType') as enum
	on enum.[Key]=t.Type
	left join Employees
    on (employees.id=cast(d.ResponsibleId as uniqueidentifier))
    left join Units
    on (Employees.PositionId=Units.Id)
    left join Units as Department
    on (Units.ParentId=Department.Id)
    where d.IsDeleted=0 
    and (d.DocumentType=0 or d.DocumentType=2 or d.DocumentType=3 or d.DocumentType=4 or d.DocumentType=5)
    and d.DocumentDate between @Period_s and @Period_po
	and Department.Id=(select u2.Id from Employees as e left join Units as u1 on e.PositionId=u1.Id left join Units as u2 on u1.ParentId=u2.Id where e.Id=@EmployeeId)
	and a.IsNotActive=0 and t.IsActive=1
	Group by Employees.FullName, enum.Value
)




GO
/****** Object:  UserDefinedFunction [dbo].[DocumentMonitoringCitizen]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Овсейкин Дмитрий
-- Create date: 31.10.2012
-- Description:	Данные по типу документов 
-- =============================================
CREATE FUNCTION [dbo].[DocumentMonitoringCitizen]
(	
	-- Add the parameters for the function here
	@d_s date,
	@d_po date  
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
	 Count(*) as Count
	,sum(case when MonitoringType in (2,3,4)then 1 else 0 end) as Monitoring
	,cast(sum(case when MonitoringType in (2,3,4) then 1 else 0 end) as decimal)/cast(Count(*)as decimal)*100 as MonitoringPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =9 )then 1 else 0 end) as Exclude
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =9  )  then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as ExcludePercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as OnJob
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as OnJobPercent
	,sum(case when (MonitoringType in (2,3,4))  and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as OnLongTerm
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnLongTermPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as OnNotExecuted
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9 ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnNotExecutedPercent

	from Documents where IsDeleted=0  and  DocumentType=2 and DocumentDate between @d_s and @d_po and CitizenTypeDictionaryValue<>'Почта' and StateType > 0
)





GO
/****** Object:  UserDefinedFunction [dbo].[DocumentMonitoringIncoming]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Овсейкин Дмитрий
-- Create date: 31.10.2012
-- Description:	Данные по типу документов 
-- =============================================
CREATE FUNCTION [dbo].[DocumentMonitoringIncoming]
(	
	-- Add the parameters for the function here
	@d_s date,
	@d_po date
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
	 Count(*) as Count
	,sum(case when MonitoringType in (2,3,4) then 1 else 0 end) as Monitoring
	,cast(sum(case when MonitoringType in (2,3,4) then 1 else 0 end) as decimal)/cast(Count(*)as decimal)*100 as MonitoringPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =9 )then 1 else 0 end) as Exclude
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =9  )  then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as ExcludePercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as OnJob
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as OnJobPercent
	,sum(case when (MonitoringType in (2,3,4))  and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as OnLongTerm
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnLongTermPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as OnNotExecuted
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9 ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnNotExecutedPercent

	from Documents where IsDeleted=0  and  DocumentType=0 and DocumentDate between @d_s and @d_po and DocumentKindDictionaryValue<>'Почта' and StateType > 0
)





GO
/****** Object:  UserDefinedFunction [dbo].[DocumentMonitoringType]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Овсейкин Дмитрий
-- Create date: 31.10.2012
-- Description:	Данные по типу документов 
-- =============================================
CREATE FUNCTION [dbo].[DocumentMonitoringType]
(	
	-- Add the parameters for the function here
	@d_s date,
	@d_po date  
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
	 Count(*) as Count
	,sum(case when MonitoringType in (2,3,4) then 1 else 0 end) as Monitoring
	,cast(sum(case when MonitoringType in (2,3,4) then 1 else 0 end) as decimal)/cast(Count(*)as decimal)*100 as MonitoringPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =9 )then 1 else 0 end) as Exclude
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =9  )  then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as ExcludePercent
	,sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as OnJob
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType =3 ) then 1 else 0 end) as decimal)/sum(case when MonitoringType in (2,3) then 1 else 0 end)*100 as OnJobPercent
	,sum(case when (MonitoringType in (2,3,4))  and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as OnLongTerm
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and AutoAnswersTempValue is not null and AutoAnswersTempValue<>''   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnLongTermPercent
	,sum(case when MonitoringType in (2,3,4) and (StateType <>9  ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as OnNotExecuted
	,cast(sum(case when MonitoringType in (2,3,4) and (StateType <>9 ) and (AutoAnswersTempValue is  null or AutoAnswersTempValue='') and ExecutionDate < GETDATE()   then 1 else 0 end) as decimal)/sum(case when MonitoringType=2 then 1 else 0 end)*100 as OnNotExecutedPercent

	from Documents where IsDeleted=0  and  ((DocumentType = 0 and DocumentKindDictionaryValue<>'Почта') or (DocumentType = 2 and CitizenTypeDictionaryValue<>'Почта')) and DocumentDate between @d_s and @d_po  and StateType > 0
)





GO
/****** Object:  UserDefinedFunction [dbo].[DocumentsPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[DocumentsPeriodExclude] 
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date
)
RETURNS TABLE 
AS
RETURN 
(
	
	select  
	enum.Value "Тип документа"
	,"Всего"
	,"Исполненные"
	,"В работе"
	,"Долгосрочные"
	,"Не исполненные"
	,(cast("Не исполненные" as float)*100/cast("Всего" as float)) as  "Не исполненные в %"
	from (select
    count(*) "Всего"
    ,DocumentType 
    ,sum(case when StateType=9 then 1 else 0 end) "Исполненные"
    ,sum(case when StateType=3 then 1 else 0 end) "В работе"
    ,sum(case when DocumentType<>1 and StateType!=9 and AutoAnswersTempValue is not null then 1 else 0 end) "Долгосрочные"
    ,sum(case when DocumentType<>1 and StateType!=9 and AutoAnswersTempValue is null and ExecutionDate<GETDATE() then 1 else 0 end) "Не исполненные"
    from Documents
    where (DocumentType=0 or DocumentType=1 or DocumentType=2 or DocumentType=3 or DocumentType=5) and
    IsDeleted=0
    and DocumentDate between   @Period_s and @Period_po    Group by DocumentType) as Docs 
	left join (select * from  PrismEnums where Type='DocumentType') as enum on enum.[Key]=Docs.DocumentType

)





GO
/****** Object:  UserDefinedFunction [dbo].[DocumentTypeCount]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Овсейкин Дмитрий
-- Create date: 31.10.2012
-- Description:	Общее количество документов по категориям
-- =============================================
CREATE FUNCTION [dbo].[DocumentTypeCount]
(	
	-- Add the parameters for the function here
	@d_s date,
	@d_po date
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
	 sum (case when DocumentType =0 then 1 else 0 end) as Incoming
	,sum (case when DocumentType =1 then 1 else 0 end) as Outgoing
	,sum (case when DocumentType =2 then 1 else 0 end) as Citizen
	,sum (case when DocumentType =5 then 1 else 0 end) as Correspondence
	from Documents where IsDeleted=0 and ((DocumentType=0 and DocumentKindDictionaryValue<>'Почта')  or  DocumentType=1 or   (DocumentType=2 and CitizenTypeDictionaryValue<>'Почта') or  DocumentType=5) and DocumentDate between @d_s and @d_po and StateType > 0
)





GO
/****** Object:  UserDefinedFunction [dbo].[EmployeesDelayedPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[EmployeesDelayedPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date
)
RETURNS TABLE
AS
RETURN
(
select
   
    Department.Name "Отдел"
	,DocumentType "Тип документа"
	,Employees.FullName "ФИО сотрудника"
	,Documents.Number "Номер документа"
	,ExecutionDate "Дата выполнения"
    from Documents	
	left join Employees
    on (employees.id=cast(documents.ResponsibleId as uniqueidentifier))
    left join Units
    on (Employees.PositionId=Units.Id)
    left join Units as Department
    on (Units.ParentId=Department.Id)
    where Documents.IsDeleted=0 
    and (DocumentType=0 or DocumentType=2 or DocumentType=3 or DocumentType=5)
    and Documents.ResponsibleId is not null
    and DocumentDate between @Period_s and @Period_po
	and (AutoAnswersValue is null or AutoAnswersValue='') and (AutoAnswersTempValue is null or AutoAnswersTempValue='')
)




GO
/****** Object:  UserDefinedFunction [dbo].[Executors2DocumentsDelayedPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[Executors2DocumentsDelayedPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date,
	@EmployeeId nvarchar(100),
	@DocType varchar(10)
)
RETURNS TABLE

AS
RETURN
(
SELECT
	em.ShortName
	,d.DisplayName
	from Tasks as t left join Documents as d on t.DocumentId =d.Id
	left join Employees as em on (em.Id=cast(t.ExecutorId as uniqueidentifier))
	left join Activities as a on t.ActivityId = a.Id
	where d.IsDeleted=0 and d.StateType<>9	and d.ExecutionDate < getdate()
	and a.IsNotActive=0 and t.IsActive=1 and d.DocumentDate between @Period_s and @Period_po
	and em.Id=@EmployeeId and d.DocumentType=@DocType
)




GO
/****** Object:  UserDefinedFunction [dbo].[ExecutorsDocumentsDelayedPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ExecutorsDocumentsDelayedPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
        @Period_po date,
	@EmployeeId nvarchar(100),
	@DocType varchar(10)
)
RETURNS TABLE

AS
RETURN
(
SELECT
	em.ShortName
	,d.DisplayName
	from Tasks as t left join Documents as d on t.DocumentId =d.Id
	left join Employees as em on (em.Id=cast(t.ExecutorId as uniqueidentifier))
	left join Activities as a on t.ActivityId = a.Id
	where d.IsDeleted=0 and d.StateType<>9	and d.ExecutionDate < getdate()
	and a.IsNotActive=0 and t.IsActive=1 and d.DocumentDate between @Period_s and @Period_po
	and em.Id=@EmployeeId and d.DocumentType=@DocType
)




GO
/****** Object:  UserDefinedFunction [dbo].[ExecutorsDocumentsPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ExecutorsDocumentsPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date,
	@employeeId nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
	enum.Value "Тип документа"
	,sum(case when t.State=0 then 1 else 0 end) "Новые"
	,sum(case when t.State=4 then 1 else 0 end) "Принятые в работу"
	,sum(case when t.State=2 then 1 else 0 end) "Исполненные"
	,sum(case when t.State=3 then 1 else 0 end) "Исполненные отрицательно"
	,sum(case when t.State=1 then 1 else 0 end) "В работе"
	,sum(case when t.State<>2 and t.State<>3 and t.ExecutionDate<GETDATE() then 1 else 0 end) "Просроченные"
	,count(*) "Всего"
	from Tasks as t
	left join Documents as d
	on (t.DocumentId=d.Id)
	left join Activities as a
	on t.ActivityId = a.Id
	left join (select * from PrismEnums where Type='DocumentType') as enum
	on enum.[Key]=d.DocumentType
    where d.IsDeleted=0 
    and (d.DocumentType=0 or d.DocumentType=2 or d.DocumentType=3 or d.DocumentType=4 or d.DocumentType=5)
    and d.DocumentDate between @Period_s and @Period_po
	and t.ExecutorId=@employeeId
	and a.IsNotActive=0 and t.IsActive=1
	Group by enum.Value
)




GO
/****** Object:  UserDefinedFunction [dbo].[ExecutorsTasksPeriodExclude]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create FUNCTION [dbo].[ExecutorsTasksPeriodExclude]
(	
	-- Add the parameters for the function here
	@Period_s date,
    @Period_po date,
	@employeeId nvarchar(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT
	enum.Value "Тип задания"
	,sum(case when t.State=0 then 1 else 0 end) "Новые"
	,sum(case when t.State=4 then 1 else 0 end) "Принятые в работу"
	,sum(case when t.State=2 then 1 else 0 end) "Исполненные"
	,sum(case when t.State=3 then 1 else 0 end) "Исполненные отрицательно"
	,sum(case when t.State=1 then 1 else 0 end) "В работе"
	,sum(case when t.State<>2 and t.State<>3 and t.ExecutionDate<GETDATE() then 1 else 0 end) "Просроченные"
	,count(*) "Всего"
	from Tasks as t
	left join Documents as d
	on (t.DocumentId=d.Id)
	left join Activities as a
	on t.ActivityId = a.Id
	left join (select * from PrismEnums where Type='TaskType') as enum
	on enum.[Key]=t.Type
    where d.IsDeleted=0 
    and (d.DocumentType=0 or d.DocumentType=2 or d.DocumentType=3 or d.DocumentType=4 or d.DocumentType=5)
    and d.DocumentDate between @Period_s and @Period_po
	and t.ExecutorId=@employeeId
	and a.IsNotActive=0 and t.IsActive=1
	Group by enum.Value
)




GO
/****** Object:  View [dbo].[AdministrativeDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AdministrativeDocument]
AS
SELECT     d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, 
                      d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, 
                      d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, 
                      d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, d.ApplicantCategoryDictionaryValue, 
                      d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                      d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, 
                      d.QuestionDesignDictionaryValue, d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, 
                      d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, 
                      d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, d.AutoCompleteDocumentsValue, 
                      d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, 
                      d.AutoProtocolDate, d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, 
                      d.AutoExecutionDate, d.Counters, d.DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, 
                      d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, 
                      d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, es.Value AS State, em.Value AS Monitoring, 
                      ep.Value AS Priority
FROM         dbo.Documents AS d LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums
                            WHERE      (Type = 'DocumentStateType')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_2
                            WHERE      (Type = 'MonitoringType')) AS em ON d.MonitoringType = em.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_1
                            WHERE      (Type = 'PriorityType')) AS ep ON d.PriorityType = ep.[Key]
WHERE     (d.DocumentType = 3)





GO
/****** Object:  View [dbo].[ArchivView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ArchivView]
AS
SELECT     TOP (100) Id, DocumentDate, DisplayName, Number, DocumentType, NomenclatureDictionaryValue, '' AS Code, '' AS DepartmentsValue, Summary, Deed, Book, Akt, 
                      Note, OrganizationId
FROM         dbo.Documents



GO
/****** Object:  View [dbo].[CategoriesView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CategoriesView]
AS
SELECT        sr_mt.id AS Id, sr_mt_c.name AS Name
FROM            dbo.sr_register_mt AS sr_mt LEFT OUTER JOIN
                         dbo.sr_mt_categories AS sr_mt_c ON sr_mt.mt_category_id = sr_mt_c.id


GO
/****** Object:  View [dbo].[CitizenDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CitizenDocument]
AS
SELECT     d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, 
                      d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, 
                      d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, 
                      d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, d.ApplicantCategoryDictionaryValue, 
                      d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                      d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, 
                      d.QuestionDesignDictionaryValue, d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, 
                      d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, 
                      d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, d.AutoCompleteDocumentsValue, 
                      d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, 
                      d.AutoProtocolDate, d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, 
                      d.AutoExecutionDate, d.Counters, d.DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, 
                      d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, 
                      d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, es.Value AS State, em.Value AS Monitoring, 
                      ep.Value AS Priority
FROM         dbo.Documents AS d LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums
                            WHERE      (Type = 'DocumentStateType')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_2
                            WHERE      (Type = 'MonitoringType')) AS em ON d.MonitoringType = em.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_1
                            WHERE      (Type = 'PriorityType')) AS ep ON d.PriorityType = ep.[Key]
WHERE     (d.DocumentType = 2)





GO
/****** Object:  View [dbo].[CompositionsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[CompositionsView]
AS
SELECT        c.Id, c.MaterialTypeDicId, c.MaterialNameDicId, c.MaterialName, c.Count, c.NormativeDocument, c.CountryDicId, c.City, c.Street, c.House, c.IsControl, c.IsPoison, c.MaterialGainDicId, c.MaterialGain, 
                         c.MaterialOriginDicId, dmt.Name AS MaterialTypeName, dmn.Name, dcn.Name AS CountryName, dmg.Name AS MaterialGainName, dmo.Name AS MaterialOriginName, c.ObjectId
FROM            dbo.Compositions AS c LEFT OUTER JOIN
                         dbo.Dictionaries AS dmt ON dmt.Id = c.MaterialTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dmn ON dmn.Id = c.MaterialNameDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dcn ON dcn.Id = c.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dmg ON dmg.Id = c.MaterialGainDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dmo ON dmo.Id = c.MaterialOriginDicId



GO
/****** Object:  View [dbo].[ContractJournal]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW [dbo].[ContractJournal]
AS
SELECT        c.Id, c.ManufacturerOrganizationId, c.ApplicantOrganizationId, c.DoverennostTypeDicId, c.DoverennostNumber, c.DoverennostCreatedDate, c.DoverennostExpiryDate, c.HolderOrganizationId, 
                         c.PayerOrganizationId, c.Number, c.Status, c.CreatedDate, c.ContractId, c.Type, c.ContractDate, c.StartDate, c.EndDate, c.IsExpired, c.IsSite, mo.NameRu AS ManufacturerName, d1.Name AS ManufacturerCountry, 
                         d2.Name AS ApplicantCountry, d3.Name AS ApplicantCurrency, e.Login, d4.Name AS DocumentTypeName, d5.Name AS StatusName, ho.NameRu AS HolderName, ao.NameRu AS ApplicantName, 
                         po.NameRu AS PayerName, (CASE WHEN doc.StateType = 9 THEN doc.DestinationValue ELSE doc.Number END) AS DocumentNumber, doc.SourceId, doc.DocumentDate, doc.DocumentType, doc.StateType, 
                         doc.CorrespondentsId, doc.CorrespondentsValue,
                             (SELECT        COUNT(*) AS Expr1
                               FROM            dbo.RegisterProjects AS r
                               WHERE        (ContractId = c.Id)) AS CountApplications
FROM            dbo.Contracts AS c LEFT OUTER JOIN
                         dbo.RegisterProjects AS rp ON rp.ContractId = c.Id LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = rp.OwnerId LEFT OUTER JOIN
                         dbo.Organizations AS mo ON mo.Id = c.ManufacturerOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS ho ON ho.Id = c.HolderOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS po ON po.Id = c.PayerOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS ao ON ao.Id = c.ApplicantOrganizationId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = mo.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = ao.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = ao.BankCurencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = c.DoverennostTypeDicId LEFT OUTER JOIN
                         dbo.Documents AS doc ON doc.Id = c.Id LEFT OUTER JOIN
                         dbo.Dictionaries AS d5 ON d5.Type = 'ContractStatus' AND d5.Code = CAST(c.Status AS nvarchar(MAX))



GO
/****** Object:  View [dbo].[ContractsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ContractsView]
AS
SELECT        c.Id, c.ManufacturerOrganizationId, c.ApplicantOrganizationId, c.DoverennostTypeDicId, c.DoverennostNumber, c.DoverennostCreatedDate, c.DoverennostExpiryDate, c.HolderOrganizationId, 
                         c.PayerOrganizationId, c.PayerTranslationOrganizationId, c.Number, c.Status, c.CreatedDate, c.ContractId, c.Type, c.ContractDate, c.StartDate, c.EndDate, c.IsExpired, c.IsSite, c.IsHasDoverennostNumber, mo.NameRu AS ManufactureOrgName, 
                         ao.NameRu AS ApplicantOrgName, ho.NameRu AS HolderOrgName, po.NameRu AS PayerOrgName, pt.NameRu AS PayerTranslationOrgName, d.Name AS DoverenostName, d1.Name AS StatusName, c.OwnerId
FROM            dbo.Contracts AS c LEFT OUTER JOIN
                         dbo.Organizations AS mo ON mo.Id = c.ManufacturerOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS ao ON ao.Id = c.ApplicantOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS ho ON ho.Id = c.HolderOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS po ON po.Id = c.PayerOrganizationId LEFT OUTER JOIN
						 dbo.Organizations AS pt ON pt.Id = c.PayerTranslationOrganizationId LEFT OUTER JOIN
                         dbo.Dictionaries AS d ON d.Id = c.DoverennostTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Type = 'ContractStatus' AND d1.Code = c.Status


GO
/****** Object:  View [dbo].[CorrespondenceDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CorrespondenceDocument]
AS
SELECT     d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, 
                      d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, 
                      d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, 
                      d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, d.ApplicantCategoryDictionaryValue, 
                      d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                      d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, 
                      d.QuestionDesignDictionaryValue, d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, 
                      d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, 
                      d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, d.AutoCompleteDocumentsValue, 
                      d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, 
                      d.AutoProtocolDate, d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, 
                      d.AutoExecutionDate, d.Counters, d.DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, 
                      d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, 
                      d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, es.Value AS State, em.Value AS Monitoring, 
                      ep.Value AS Priority
FROM         dbo.Documents AS d LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums
                            WHERE      (Type = 'DocumentStateType')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_2
                            WHERE      (Type = 'MonitoringType')) AS em ON d.MonitoringType = em.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_1
                            WHERE      (Type = 'PriorityType')) AS ep ON d.PriorityType = ep.[Key]
WHERE     (d.DocumentType = 5)





GO
/****** Object:  View [dbo].[IncomingDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[IncomingDocument]
AS
SELECT     d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, 
                      d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, 
                      d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, 
                      d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, d.ApplicantCategoryDictionaryValue, 
                      d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                      d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, 
                      d.QuestionDesignDictionaryValue, d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, 
                      d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, 
                      d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, d.AutoCompleteDocumentsValue, 
                      d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, 
                      d.AutoProtocolDate, d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, 
                      d.AutoExecutionDate, d.Counters, d.DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, 
                      d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, 
                      d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, es.Value AS State, em.Value AS Monitoring, 
                      ep.Value AS Priority
FROM         dbo.Documents AS d LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums
                            WHERE      (Type = 'DocumentStateType')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_2
                            WHERE      (Type = 'MonitoringType')) AS em ON d.MonitoringType = em.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_1
                            WHERE      (Type = 'PriorityType')) AS ep ON d.PriorityType = ep.[Key]
WHERE     (d.DocumentType = 0)





GO
/****** Object:  View [dbo].[OrganizationsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OrganizationsView]
AS
SELECT        o.Id, o.Type, o.NameKz, o.NameRu, o.NameEn, o.CountryDicId, o.AddressLegal, o.AddressFact, o.Phone, o.Fax, o.Email, o.BossFio, o.BossPosition, o.ContactFio, o.ContactPosition, o.ContactPhone, o.ContactFax,
                          o.ContactEmail, o.OrgManufactureTypeDicId, o.DocNumber, o.DocDate, o.DocExpiryDate, o.ObjectId, o.OpfTypeDicId, o.BankName, o.BankIik, o.BankCurencyDicId, o.BankSwift, o.Bin, o.IsResident, 
                         o.PayerTypeDicId, dc.Name AS CountryName, dm.Name AS OrgManufactureTypeName, dopf.Name AS OpfTypeName, dbn.Name AS BankCurencyDicName, dpt.Name AS PayerTypeName, o.BossLastName, 
                         o.BossFirstName, o.BossMiddleName, o.PaymentBill, o.Iin, o.BankBik
FROM            dbo.Organizations AS o LEFT OUTER JOIN
                         dbo.Dictionaries AS dc ON dc.Id = o.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dm ON dm.Id = o.OrgManufactureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dopf ON dopf.Id = o.OpfTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dbn ON dbn.Id = o.BankCurencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dpt ON dpt.Id = o.PayerTypeDicId


GO
/****** Object:  View [dbo].[OrphanDrugsIcdDeseasesView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW [dbo].[OrphanDrugsIcdDeseasesView]
AS
SELECT        NEWID() AS Id, lod.Id AS LinkDicId, od.Id AS OrphanDrugsId, od.Name, od.CreateDatetime, icd.Id AS IcdDeseasesId, icd.CodeICD, icd.DiseaseOfICD, icd.SysnonimAndRareDesease
FROM            dbo.DIC_OrphanDrugs AS od LEFT OUTER JOIN
                         dbo.LinkDicOrphanDrugsIcdDeseases AS lod ON od.Id = lod.refDicOrphanDrugs LEFT OUTER JOIN
                         dbo.DIC_IcdDeseases AS icd ON icd.Id = lod.refDicIcdDeseases



GO
/****** Object:  View [dbo].[OutgoingDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OutgoingDocument]
AS
SELECT     d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, 
                      d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, 
                      d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, 
                      d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, d.ApplicantCategoryDictionaryValue, 
                      d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                      d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, 
                      d.QuestionDesignDictionaryValue, d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, 
                      d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, 
                      d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, d.AutoCompleteDocumentsValue, 
                      d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, 
                      d.AutoProtocolDate, d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, 
                      d.AutoExecutionDate, d.Counters, d.DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, 
                      d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, 
                      d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, es.Value AS State, eo.Value AS Outgoing
FROM         dbo.Documents AS d LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums
                            WHERE      (Type = 'DocumentStateType')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                          (SELECT     Value, [Key]
                            FROM          dbo.PrismEnums AS PrismEnums_1
                            WHERE      (Type = 'OutgoingType')) AS eo ON d.OutgoingType = eo.[Key]
WHERE     (d.DocumentType = 1)





GO
/****** Object:  View [dbo].[PackagesView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW [dbo].[PackagesView]
AS
SELECT        p.Id, p.PackageTypeDicId, p.PackageNameDicId, p.PackageName, p.Size, p.SizeMeasureTypeDicId, p.Volume, p.VolumeMeasureTypeDicId, p.Count, p.Note, p.ObjectId, d1.Name AS PackageNameDicName, 
                         d2.Name AS PackageTypeName, d3.Name AS SizeMeasureTypeName, d4.Name AS VolumeMeasureName, (CASE WHEN d1.Code = 'other' THEN p.PackageName ELSE d1.Name END) AS PackageNameAuto
FROM            dbo.Packages AS p LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = p.PackageNameDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = p.PackageTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = p.SizeMeasureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = p.VolumeMeasureTypeDicId


GO
/****** Object:  View [dbo].[PriceProjectJournal]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PriceProjectJournal]
AS
SELECT        pp.Id, pp.Type, (CASE WHEN doc.Number IS NOT NULL THEN doc.Number ELSE 'б/н' END) AS Number, pp.CreatedDate, pp.Status, pp.OwnerId, pp.ManufacturerOrganizationId, pp.HolderOrganizationId, 
                         pp.ProxyOrganizationId, pp.DoverennostNumber, pp.DoverennostCreatedDate, pp.DoverennostExpiryDate, pp.Filial, pp.NameKz, pp.NameRu, pp.RegNumber, pp.RegDate, pp.LsTypeDicId, pp.NameOriginal, 
                         pp.MnnRu, pp.MnnEn, pp.FormNameKz, pp.FormNameRu, pp.Dosage, pp.CountPackage, pp.Concentration, pp.CodeAtx, pp.IntroducingMethodDicId, pp.IsConvention, pp.ImnSecuryTypeDicId, pp.RePriceDicId, 
                         pp.ResultTypeDicId, pp.IsPayed, pp.PayDate, pp.StartDate, pp.ContrDate, pp.ConclusionDate, pp.IsStageExpired, pp.ExpiredDayCount, pp.ExpertAz, pp.OutgoingDoc, pp.DayCount, pp.IsNewManufacrurer, 
                         mo.NameRu AS ManufacturerOrgName, po.NameRu AS ApplicantOrgName, d1.Name AS CountryName, pp.ListTypeDicId, pp.MnnOrderNumber, d2.Name AS RePriceName, 
                         (CASE WHEN rl.Type = 1 THEN 'ЕД' WHEN rl.Type = 2 THEN 'АЛО' WHEN rl.Type = 3 THEN 'КНФ' WHEN rl.Type = 4 THEN 'Другие' END) AS ListTypeName, d_t.Name AS TypeValue, d_s.Name AS StatusValue, 
                         pp.PriceProjectId
FROM            dbo.PriceProjects AS pp LEFT OUTER JOIN
                         dbo.Organizations AS mo ON mo.Id = pp.ManufacturerOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS po ON po.Id = pp.ProxyOrganizationId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = mo.CountryDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = pp.RePriceDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = pp.ListTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d_t ON d_t.Type = 'PriceProjectType' AND d_t.Code = CAST(pp.Type AS nvarchar(MAX)) LEFT OUTER JOIN
                         dbo.Dictionaries AS d_s ON d_s.Type = 'PriceProjectStatus' AND d_s.Code = CAST(pp.Status AS nvarchar(MAX)) LEFT OUTER JOIN
                         dbo.Documents AS doc ON doc.Id = pp.Id LEFT OUTER JOIN
                         dbo.RequestList AS rl ON rl.RegNumber = pp.RegNumber


GO
/****** Object:  View [dbo].[PriceProjectsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW [dbo].[PriceProjectsView]
AS
SELECT        pp.Id, pp.Type, pp.Number, pp.CreatedDate, pp.Status, pp.OwnerId, pp.ManufacturerOrganizationId, pp.HolderOrganizationId, pp.ProxyOrganizationId, pp.DoverennostNumber, pp.DoverennostCreatedDate, 
                         pp.DoverennostExpiryDate, pp.Filial, pp.NameKz, pp.NameRu, pp.RegNumber, pp.RegDate, pp.LsTypeDicId, pp.NameOriginal, pp.MnnRu, pp.MnnEn, pp.FormNameKz, pp.FormNameRu, pp.Dosage, 
                         pp.CountPackage, pp.Concentration, pp.CodeAtx, pp.IntroducingMethodDicId, pp.IsConvention, pp.ImnSecuryTypeDicId, pp.RePriceDicId, e.LastName AS OwnerLastName, e.FirstName AS OwnerFirstName, 
                         e.MiddleName AS OwnerMiddleName, mo.NameRu AS ManufacturerOrganizationName, ho.NameRu AS HolderOrganizationName, po.NameRu AS ProxyOrganizationName, d1.Name AS LsTypeName, 
                         d2.Name AS IntroducingMethodName, d3.Name AS ImnSecuryTypeName, d4.Name AS RePriceName, pp.PriceProjectId
FROM            dbo.PriceProjects AS pp LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = pp.OwnerId LEFT OUTER JOIN
                         dbo.Organizations AS mo ON mo.Id = pp.ManufacturerOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS ho ON ho.Id = pp.HolderOrganizationId LEFT OUTER JOIN
                         dbo.Organizations AS po ON po.Id = pp.ProxyOrganizationId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = pp.LsTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = pp.IntroducingMethodDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = pp.ImnSecuryTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = pp.RePriceDicId


GO
/****** Object:  View [dbo].[PricesView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PricesView]
AS
SELECT        p.Id, p.Type, p.Name, p.PriceProjectId, p.CountryId, p.ManufacturerPrice, p.ManufacturerPriceCurrencyDicId, p.ManufacturerPriceNote, p.LimitPrice, p.LimitPriceCurrencyDicId, p.LimitPriceNote, p.AvgOptPrice, 
                         p.AvgOptPriceCurrencyDicId, p.AvgOptPriceNote, p.AvgRozPrice, p.AvgRozPriceCurrencyDicId, p.AvgRozPriceNote, p.CipPrice, p.CipPriceCurrencyDicId, p.RefPriceTypeDicId, p.RefPrice, p.RefPriceCurrencyDicId, 
                         p.OwnerPrice, p.OwnerPriceCurrencyDicId, p.BritishPrice, d1.Name AS CountryName, d2.Name AS ManufacturerPriceCurrencyName, d3.Name AS LimitPriceCurrencyName, d4.Name AS AvgOptPriceCurrencyName,
                          d5.Name AS AvgRozPriceCurrencyName, d6.Name AS CipPriceCurrencyName, d7.Name AS RefPriceCurrencyName, d8.Name AS RefPriceTypeName, d9.Name AS OwnerPriceCurrencyName, p.UnitPrice, 
                         p.UnitPriceCurrencyDicId, d10.Name AS UnitPriceCurrencyName, p.CreatedDate, p.BritishCost, p.MtPartsId, sr_mt_p.name AS PartsName
FROM            dbo.Prices AS p LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = p.CountryId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = p.ManufacturerPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = p.LimitPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = p.AvgOptPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d5 ON d5.Id = p.AvgRozPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d6 ON d6.Id = p.CipPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d7 ON d7.Id = p.RefPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d8 ON d8.Id = p.RefPriceTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d9 ON d9.Id = p.OwnerPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d10 ON d10.Id = p.UnitPriceCurrencyDicId LEFT OUTER JOIN
                         dbo.sr_register_mt_parts AS sr_mt_p ON sr_mt_p.id = p.MtPartsId


GO
/****** Object:  View [dbo].[ProjectDocument]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ProjectDocument]
AS
SELECT        d.Id, d.IsDeleted, d.IsAdministrativeUse, d.IsAwaitingResponse, d.IsTradeSecret, d.CreatedDate, d.ModifiedDate, d.AwaitingResponseDate, d.DocumentDate, d.OutgoingDate, d.ProtocolDate, d.MonitoringDate, 
                         d.ApplicantType, d.DocumentType, d.MonitoringType, d.PriorityType, d.StateType, d.AppendixCount, d.CopiesCount, d.PageCount, d.RepeatCount, d.ApplicantAddress, d.ApplicantEmail, d.ApplicantName, 
                         d.ApplicantPhone, d.BlankNumber, d.CorrespondentsInfo, d.Number, d.OutgoingNumber, d.SortingNumber, d.SortingOutgoingNumber, d.Note, d.Summary, d.AdministrativeTypeDictionaryValue, 
                         d.ApplicantCategoryDictionaryValue, d.CauseCitizenDictionaryValue, d.CitizenCategoryDictionaryValue, d.CitizenResultDictionaryValue, d.CitizenTypeDictionaryValue, d.DocumentKindDictionaryValue, 
                         d.FormDeliveryDictionaryValue, d.FormSendingDictionaryValue, d.KatoDictionaryValue, d.LanguageDictionaryValue, d.NomenclatureDictionaryValue, d.QuestionDesignDictionaryValue, 
                         d.SigningFormDictionaryValue, d.AgreementsValue, d.ExecutorsValue, d.ReadersValue, d.RecipientsValue, d.RegistratorValue, d.ResponsibleValue, d.SignerValue, d.CorrespondentsValue, 
                         d.MonitoringAuthorValue, d.MonitoringNote, d.AnswersValue, d.CompleteDocumentsValue, d.EditDocumentsValue, d.RepealDocumentsValue, d.DisplayName, d.AutoAnswersValue, d.AutoAnswersTempValue, 
                         d.AutoCompleteDocumentsValue, d.AutoEditDocumentsValue, d.AutoRepealDocumentsValue, d.SortNumber, d.AutoAwaitingResponseDate, d.AutoDocumentDate, d.AutoOutgoingDate, d.AutoProtocolDate, 
                         d.AutoMonitoringDate, d.FactExecutionDate, d.FirstExecutionDate, d.ExecutionDate, d.AutoFactExecutionDate, d.AutoFirstExecutionDate, d.AutoExecutionDate, d.Counters, 
                         CASE WHEN d .ProjectType < 10 THEN 'Протокол' WHEN d .ProjectType = 10 THEN 'Протокол заключения о безопасности' WHEN d .ProjectType = 11 THEN 'Акт выполненных работ' WHEN d .ProjectType = 12 THEN 'Протокол совещаний по Экспертному совету' END
                          AS DocumentDictionaryTypeValue, d.ResolutionValue, d.OutgoingType, d.SourceValue, d.DestinationValue, d.OwnerValue, d.Country, d.Area, d.Postcode, d.Phone, d.Department, d.City, d.Address, d.NumberBill, 
                         d.Email, d.SuperMainDocumentId, d.ModifiedUser, d.IsNotification, d.NotificationCount, d.DateDispatch, d.DispatchNote, d.Digest, d.IsAttachments, d.Text, d.Recipient, d.QrCode, d.IsArchive, d.FulfilledDate, 
                         es.Value AS State, ep.Value AS Priority
FROM            dbo.Documents AS d LEFT OUTER JOIN
                             (SELECT        Value, [Key]
                               FROM            dbo.PrismEnums
                               WHERE        (Type = 'StateTypeProject')) AS es ON d.StateType = es.[Key] LEFT OUTER JOIN
                             (SELECT        Value, [Key]
                               FROM            dbo.PrismEnums AS PrismEnums_1
                               WHERE        (Type = 'PriorityType')) AS ep ON d.PriorityType = ep.[Key]
WHERE        (d.DocumentType = 4)


GO
/****** Object:  View [dbo].[ProjectsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ProjectsView]
AS
SELECT        pp.[Id], pp.[Type], d_t.Name AS TypeValue, doc.Number, pp.[CreatedDate], [Status], d_s.Name AS StausValue, [NameRu], cast(0 AS bit) AS 'IsRegisterProject',pp.OwnerId
FROM            [ncels].[dbo].[PriceProjects] AS pp LEFT JOIN
                         Documents AS doc ON doc.Id = pp.Id LEFT JOIN
                         Dictionaries AS d_t ON d_t.Type = 'PriceProjectType' AND d_t.Code = CAST(pp.[Type] AS nvarchar(max)) LEFT JOIN
                         Dictionaries AS d_s ON d_s.Type = 'PriceProjectStatus' AND d_s.Code = CAST(pp.Status AS nvarchar(max))
UNION ALL
SELECT        rp.[Id], rp.[Type] AS TypeValue, d_t.Name, doc.Number, rp.[CreatedDate], [Status], d_s.Name AS StausValue, [NameRu], cast(1 AS bit) AS 'IsRegisterProject',rp.OwnerId
FROM            [ncels].[dbo].[RegisterProjects] AS rp LEFT JOIN
                         Documents AS doc ON doc.Id = rp.Id LEFT JOIN
                         Dictionaries AS d_t ON d_t.Type = 'RegisterProjectType' AND d_t.Code = CAST(rp.[Type] AS nvarchar(max)) LEFT JOIN
                         Dictionaries AS d_s ON d_s.Type = 'RegisterProjectStatus' AND d_s.Code = CAST(rp.Status AS nvarchar(max))


GO
/****** Object:  View [dbo].[ReesrtObk]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReesrtObk]
AS
SELECT        prd.id, prd.name, prd.producer_name, prd.country_name, prd.tnved_code, prd.kpved_code, prd.register_nd, cost.cost, curr.currency_name,
                             (SELECT        TOP (1) exch.rate
                               FROM            dbo.obk_exchangerate AS exch
                               WHERE        (exch.currency_id = cost.currency_id) AND (exch.rate_date = CAST(cost.date_cost AS date))
                               ORDER BY rate_date DESC) * cost.cost AS costExch
FROM            dbo.obk_products AS prd LEFT OUTER JOIN
                         dbo.obk_product_cost AS cost ON cost.id = prd.id LEFT OUTER JOIN
                         dbo.obk_currencies AS curr ON curr.id = cost.currency_id


GO
/****** Object:  View [dbo].[RegisterOrderer2Views]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RegisterOrderer2Views]
AS
SELECT        ROW_NUMBER() OVER (ORDER BY srd.id) AS IntId, newid() AS Id, srd.id AS regId, srd._int_name,
    (SELECT        sr_substances.name + '/ ' AS 'data()'
      FROM            sr_substances
      WHERE        sr_substances.id IN
                                    (SELECT        sr_register_substances.substance_id
                                      FROM            sr_register_substances
                                      WHERE        sr_register_substances.register_id = srd.id) FOR XML PATH('')) AS substance, (cast(srb.volume AS nvarchar) + ' ' + sm.name) AS volume, srd.dosage_comment, sr.name, 
srd._dosage_form_name, srd.concentration, sr.reg_number, sr._producer_name, sr._country_name, srd._atc_code, srd.dosage_value, srb.unit_count
FROM            [ncels].[dbo].[sr_register_drugs] AS srd LEFT JOIN
                         sr_register_boxes AS srb ON srb.register_id = srd.id LEFT JOIN
                         sr_register AS sr ON sr.id = srd.id LEFT JOIN
                         sr_measures AS sm ON sm.id = srb.volume_measure_id LEFT OUTER JOIN
						dbo.sr_register_boxes_rk_ls AS sr_r_b_kl ON sr_r_b_kl.id = srb.id LEFT OUTER JOIN
                        dbo.sr_register AS sr_r ON sr_r.id = srd.id 

						where (sr_r.expiration_date > GETDATE()) AND (state_date > getdate() OR
                         state_date IS NULL)



GO
/****** Object:  View [dbo].[RegisterOrdererView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RegisterOrdererView]
AS
SELECT        r.reestr AS ReestrId, r.MNN_NAME AS MnnName, (CASE WHEN r.PHARM_FORM_NAME IS NOT NULL THEN r.PHARM_FORM_NAME ELSE '' END) + ' ' + (CASE WHEN r.CONC_NAME IS NOT NULL 
                         THEN r.CONC_NAME ELSE '' END) + ' ' + (CASE WHEN r.dose_union IS NOT NULL THEN r.dose_union ELSE '' END) AS Characteristic, r.PHARM_FORM_NAME AS DrugForm, r.CONC_NAME AS Concentration, 
                         r.dose_union AS Dosage, r.PHARM_NAMES_NAME AS TradeName, r.registration_number AS RegNumber, r.reg_date AS RegDate, r.val_date AS RegDateExpire, r.ats_code AS AtxCode, 
                         r.FIRM_NAME AS Manufacturer, r.DOSES_UNIT_NAME AS Measure, r.COUNTRY_NAME AS Country, srs.substance_count, srb.unit_count, srb.volume, srd.dosage_comment
FROM            dbo.sr_register_ordered AS r LEFT OUTER JOIN
                         dbo.sr_register_substances AS srs ON srs.register_id = r.reestr LEFT OUTER JOIN
                         dbo.sr_register_boxes AS srb ON srb.register_id = r.reestr LEFT OUTER JOIN
                         dbo.sr_register_drugs AS srd ON srd.id = r.reestr


GO
/****** Object:  View [dbo].[RegisterProjectsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[RegisterProjectsView]
AS
SELECT        p.Id, p.Type, doc.Number, p.CreatedDate, p.Status, p.OwnerId, p.ContractId, p.AccelerationTypeDicId, p.AccelerationNumber, p.AccelerationDate, p.AccelerationNote, p.NameRu, p.NameKz, p.NameEn, p.MnnKz, 
                         p.MnnEn, p.MnnRu, p.IsPatent, p.PatentNumber, p.PatentDate, p.PatentExpiryDate, p.LsFormNameKz, p.LsFormNameRu, p.AtxCode, p.AtxNameKz, p.AtxNameRu, p.LsTypeDicId, p.LsType2DicId, p.OriginalName, 
                         p.SaleTypeDicId, p.IntroducingMethodDicId, p.Dosage, p.DosageMeasureTypeDicId, p.DosageNoteKz, p.DosageNoteRu, p.ConcentrationRu, p.ConcentrationKz, p.CompositionId, p.IsGrls, p.Transportation, 
                         p.ManufactureTypeDicId, p.IsGmp, p.GmpExpiryDate, p.BestBefore, p.BestBeforeMeasureTypeDicId, p.AppPeriod1BeginDate, p.AppPeriod1FinishDate, p.AppPeriod2BeginDate, p.AppPeriod2FinishDate, 
                         p.StorageConditions1, p.StorageConditions2, p.Barcode, p.ManufacturePrice, p.RefPrice, p.RegPrice, p.SecureDocument, p.SecureDocumentNumber, p.SecureDocumentDate, p.SecureDocumentExpiryDate, 
                         p.IsConvention, p.RegDocNumber, p.RegDocDate, p.RegDocExpiryDate, p.RegDocNormativeNumber, e.LastName AS OwnerLastName, e.FirstName AS OwnerFirstName, e.MiddleName AS OwnerMiddleName, 
                         da.Name AS AccelerationTypeName, dls.Name AS LsTypeDicName, dls2.Name AS LsType2Name, dst.Name AS SaleTypeName, dim.Name AS IntroductionMethodName, dot.Name AS DosageMeasureTypeName, 
                         dmt.Name AS ManufactureTypeName, dbm.Name AS BestBeforeMeasureTypeName, p.AppPeriodOpen, p.AppPeriodOpenMeasureDicId, p.AppPeriodMix, p.AppPeriodMixMeasureDicId, 
                         dap1.Name AS AppPeriodOpenMeasureName, dap2.Name AS AppPeriodMixMeasureName, drs.Name AS StatusValue
FROM            dbo.RegisterProjects AS p LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = p.OwnerId LEFT OUTER JOIN
                         dbo.Documents AS doc ON doc.Id = p.Id LEFT OUTER JOIN
                         dbo.Dictionaries AS da ON da.Id = p.AccelerationTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dls ON dls.Id = p.LsTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dls2 ON dls2.Id = p.LsType2DicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dst ON dst.Id = p.SaleTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dim ON dim.Id = p.IntroducingMethodDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dot ON dot.Id = p.DosageMeasureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dmt ON dmt.Id = p.ManufactureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dap1 ON dap1.Id = p.AppPeriodOpenMeasureDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS dap2 ON dap2.Id = p.AppPeriodMixMeasureDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS drs ON drs.Type = 'RegisterProjectStatus' AND p.Status = drs.Code LEFT OUTER JOIN
                         dbo.Dictionaries AS dbm ON dbm.Id = p.BestBeforeMeasureTypeDicId



GO
/****** Object:  View [dbo].[RequestListView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RequestListView]
AS
SELECT        req.Id, req.ReestrId, req.MnnName, req.Characteristic, req.DrugForm, req.Concentration, req.Dosage, req.TradeName, req.RegNumber, req.RegDate, req.RegDateExpire, req.AtxCode, req.Manufacturer, 
                         req.Measure, req.Type, req.State, req.LimitPriceTn, req.LimitPriceMnn, req.Country, req.Number, req.Applicant, req.substance_count, req.unit_count, req.volume, req.dosage_comment, req.Mark, 
                         CASE WHEN prj.RegNumber IS NULL THEN 'Нет' WHEN prj.RegNumber IS NOT NULL THEN 'Да' END AS Status,
                             (SELECT        Name
                               FROM            dbo.Dictionaries
                               WHERE        (Id = prj.ReasonDicId)) AS Reason
FROM            dbo.RequestList AS req LEFT OUTER JOIN
                         dbo.PriceProjects AS prj ON prj.RegNumber = req.RegNumber


GO
/****** Object:  View [dbo].[SrReestrView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SrReestrView]
AS
SELECT        cast(ROW_NUMBER() OVER (ORDER BY sr_r.id) AS int) AS id, sr_r._producer_name_kz, sr_r._producer_name, sr_r._country_name, dic_c.Id AS _country_Id, sr_r.name_kz, sr_r.name, sr_r.reg_number, 
sr_r.reg_date, sr_r_d._int_name,
    (SELECT        sr_substances.name + '/ ' AS 'data()'
      FROM            sr_substances
      WHERE        sr_substances.id IN
                                    (SELECT        sr_register_substances.substance_id
                                      FROM            sr_register_substances
                                      WHERE        sr_register_substances.register_id = sr_r.id) FOR XML PATH('')) AS SubstanceName, sr_r_d._dosage_form_name, sr_r_d.dosage_value, sr_r_d.concentration, sr_r_d._atc_code, 
sr_r_b.unit_count, CASE WHEN sr_r_d.generic_sign = 0 THEN 'Нет признака' WHEN sr_r_d.generic_sign IS NULL THEN 'Нет признака' WHEN sr_r_d.generic_sign = 1 THEN 'Признак генерик' END AS description, 
dic_v.Name AS um, dic_v.Id AS umId, sr_r.expiration_date, sr_r.reg_type_id AS type, sr_r_b.volume, sr_m.name AS volume_measure, sr_prod.name_kz AS owner_name_kz, sr_prod.name AS owner_name_ru, 
sr_prod.name_eng AS owner_name_en
FROM            dbo.sr_register AS sr_r LEFT OUTER JOIN
                         dbo.sr_register_drugs AS sr_r_d ON sr_r_d.id = sr_r.id LEFT OUTER JOIN
                         dbo.sr_register_boxes AS sr_r_b ON sr_r_b.register_id = sr_r.id LEFT OUTER JOIN
                         dbo.sr_register_boxes_rk_ls AS sr_r_b_kl ON sr_r_b_kl.id = sr_r_b.id LEFT OUTER JOIN
                         dbo.sr_measures AS sr_m ON sr_m.id = sr_r_b.volume_measure_id LEFT OUTER JOIN
                         dbo.Dictionaries AS dic_c ON sr_r._country_name = dic_c.Name LEFT OUTER JOIN
                         dbo.sr_register_use_methods AS sr_r_um ON sr_r_um.register_id = sr_r.id LEFT OUTER JOIN
                         dbo.sr_use_methods AS sr_um ON sr_um.id = sr_r_um.use_method_id LEFT OUTER JOIN
                         dbo.Dictionaries AS dic_v ON sr_um.name = dic_v.Name LEFT OUTER JOIN
                         sr_register_producers AS sr_r_prod ON sr_r_prod.register_id = sr_r.id AND sr_r_prod.producer_type_id = 8 LEFT OUTER JOIN
                         sr_producers AS sr_prod ON sr_r_prod.producer_id = sr_prod.id
WHERE        (sr_r.expiration_date > GETDATE()) AND (state_date > getdate() OR
                         state_date IS NULL)

GO
/****** Object:  View [dbo].[TmcCountStateView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[TmcCountStateView]
AS
SELECT        TOP (100) PERCENT Tt.Id, Tt.Name, Tt.Code, Tt.CountFact, Tt.CountConvert, Ttoc.CountFact AS IssuedCount, SUM(Toff.Count) AS UsedCount, Toff.CreatedDate
FROM            dbo.Tmcs AS Tt INNER JOIN
                         dbo.TmcOutCounts AS Ttoc ON Ttoc.TmcId = Tt.Id AND Ttoc.StateType = 1 INNER JOIN
                         dbo.TmcOffs AS Toff ON Toff.TmcOutId = Ttoc.Id
GROUP BY Tt.Id, Tt.Name, Tt.Code, Tt.CountConvert, Tt.CountFact, Ttoc.CountFact, Toff.CreatedDate


GO
/****** Object:  View [dbo].[TmcInView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TmcInView]
AS
SELECT        ti.Id, ti.CreatedDate, ti.CreatedEmployeeId, CASE WHEN DATEADD(DAY, 15, ti.CreatedDate) < GETDATE() AND ti.StateType < 2 THEN - 1 ELSE ti.StateType END AS StateType, CASE WHEN (DATEADD(DAY, 15, 
                         ti.CreatedDate) < GETDATE() AND ti.StateType < 2) OR
                         (ti.StateType = - 1) 
                         THEN N'Отклонена' WHEN ti.StateType = 0 THEN N'Новая' WHEN ti.StateType = 1 THEN N'Отпавлена в 1С' WHEN ti.StateType = 2 THEN N'Получена из 1С' WHEN ti.StateType = 3 THEN N'Закрыта' WHEN ti.StateType
                          = 10 THEN N'Согласование ИЦ' WHEN ti.StateType = 11 THEN N'Согласование Бухгалтерия' WHEN ti.StateType = 12 THEN N'Согласование Руководство' END AS StateTypeValue, ti.OwnerEmployeeId, 
                         e.DisplayName AS OwnerEmployeeValue, ti.Provider, ti.ProviderBin, ti.ContractNumber, ti.ContractDate, ti.LastDeliveryDate, ti.IsFullDelivery, 
                         CASE WHEN IsFullDelivery = 0 THEN N'Нет' WHEN IsFullDelivery = 1 THEN N'Да' END AS IsFullDeliveryValue, ti.PowerOfAttorney, e1.DisplayName AS ExecutorEmployeeValue, 
                         e2.DisplayName AS AgreementEmployeeValue, ti.ExecutorEmployeeId, ti.AgreementEmployeeId, ti.IsScan, CASE WHEN IsScan = 0 THEN N'Нет' WHEN IsScan = 1 THEN N'Да' END AS IsScanValue, 
                         DATEDIFF(DAY, ti.CreatedDate, GETDATE()) AS Func1, ti.AccountantEmployeeId, e3.DisplayName AS AccountantEmployeeValue
FROM            dbo.TmcIns AS ti LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = ti.OwnerEmployeeId LEFT OUTER JOIN
                         dbo.Employees AS e1 ON e1.Id = ti.ExecutorEmployeeId LEFT OUTER JOIN
                         dbo.Employees AS e2 ON e2.Id = ti.AgreementEmployeeId LEFT OUTER JOIN
                         dbo.Employees AS e3 ON e3.Id = ti.AccountantEmployeeId

GO
/****** Object:  View [dbo].[TmcOffStateView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TmcOffStateView]
AS
SELECT        Tto.Id, Tto.CreatedDate, Tto.CreatedEmployeeId, Tto.StateType, Tto.Note AS UseReason, Tto.Count AS UsedCount, Tto.ExpertiseStatementId, Tto.ExpertiseStatementNumber, Tto.ExpertiseStatementTypeStr, 
                         Ttoc.Count AS RequstedCount, Ttoc.CountFact AS ReceivedCount, Tt.Id AS TmcId, Tt.CreatedDate AS TmcCreateDate, Tt.CreatedEmployeeId AS TmcCreateEmployeeId, Tt.Number, Tt.Name, Tt.Code, 
                         Tt.Manufacturer, Tt.Serial, Tt.Count AS RequestedCount, Tt.MeasureTypeDicId, Tt.CountFact, Tt.CountConvert AS ConvertedCount, Tt.MeasureTypeConvertDicId, Tt.CountActual AS ResidueCount, 
                         Tt.ManufactureDate, Tt.ExpiryDate, Tt.PackageDicId, Tt.TmcTypeDicId, Tt.OwnerEmployeeId, Tt.ReceivingDate, Tt.WriteoffDate
FROM            dbo.TmcOffs AS Tto INNER JOIN
                         dbo.TmcOutCounts AS Ttoc ON Ttoc.Id = Tto.TmcOutId INNER JOIN
                         dbo.Tmcs AS Tt ON Tt.Id = Ttoc.TmcId


GO
/****** Object:  View [dbo].[TmcOffView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TmcOffView]
AS
SELECT        t.Id, t.CreatedDate, t.CreatedEmployeeId, e.DisplayName AS CreatedEmployeeValue, t.StateType, t.TmcOutId, t.Note, t.Count, (CASE WHEN t .StateType = 0 THEN 'На списании' ELSE 'Списан' END) 
                         AS StateTypeValue, t.ExpertiseStatementId, t.ExpertiseStatementNumber
FROM            dbo.TmcOffs AS t LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = t.CreatedEmployeeId


GO
/****** Object:  View [dbo].[TmcReportDataSourceView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[TmcReportDataSourceView]
AS
SELECT        Toff.Id, Tt.Id AS TmcId, Tt.Name AS TmcName, Tt.Code AS TmcCode, Tt.CountFact AS GeneralCountFact, Tt.CountConvert AS GeneralConvertFact, Tt.ReceivingDate, Ttoc.CountFact AS IssuedCount, SUM(Toff.Count) 
                         AS UsedCount, CASE WHEN Tt.[CountConvert] <> 0 THEN SUM(Toff.[Count]) / Tt.[CountConvert] * Tt.[CountFact] ELSE SUM(Toff.[Count]) END AS UseFactCount, Td.Name AS MeasureName, 
                         Ttd.Name AS MeasureConvertName, Toff.CreatedDate, Toff.Note AS UseReason, Toff.CreatedEmployeeId, Te.DisplayName AS CreateEmployeeName, Toff.ExpertiseStatementId, Toff.ExpertiseStatementNumber, 
                         Toff.ExpertiseStatementTypeStr, Tp.Id AS PositionId, Tp.DisplayName AS PositionName, TSubDep.Id AS SubDepartmentId, TSubDep.Name AS SubDepartmentName, Tdep.Id AS DepartmentId, 
                         Tdep.DisplayName AS DepartmentName, ISNULL(Tcenter.Id, Tdep.Id) AS CenterId, ISNULL(Tcenter.DisplayName, Tdep.DisplayName) AS CenterName
FROM            dbo.Tmcs AS Tt INNER JOIN
                         dbo.TmcOutCounts AS Ttoc ON Ttoc.TmcId = Tt.Id AND Ttoc.StateType = 1 INNER JOIN
                         dbo.TmcOffs AS Toff ON Toff.TmcOutId = Ttoc.Id INNER JOIN
                         dbo.Dictionaries AS Td ON Td.Id = Tt.MeasureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS Ttd ON Ttd.Id = Tt.MeasureTypeConvertDicId INNER JOIN
                         dbo.Employees AS Te ON Te.Id = Toff.CreatedEmployeeId INNER JOIN
                         dbo.Units AS Tp ON Tp.Id = Te.PositionId INNER JOIN
                         dbo.Units AS TSubDep ON TSubDep.Id = Tp.ParentId INNER JOIN
                         dbo.Units AS Tdep ON Tdep.Id = TSubDep.ParentId LEFT OUTER JOIN
                         dbo.Units AS Tcenter ON Tcenter.Id = Tdep.ParentId
GROUP BY Tt.Id, Tt.Name, Tt.Code, Tt.CountConvert, Tt.CountFact, Tt.ReceivingDate, Ttoc.CountFact, Toff.CreatedDate, Toff.Id, Toff.Note, Toff.CreatedEmployeeId, Te.DisplayName, Toff.ExpertiseStatementId, 
                         Toff.ExpertiseStatementNumber, Tp.Id, Tp.DisplayName, TSubDep.Id, TSubDep.Name, Tdep.Id, Tdep.DisplayName, Tcenter.Id, Tcenter.DisplayName, Toff.ExpertiseStatementTypeStr, Td.Name, Ttd.Name


GO
/****** Object:  View [dbo].[TmcReportsView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TmcReportsView]
AS
SELECT        Ttr.Id, Ttr.Name, Ttr.PeriodStartDate, Ttr.PeriodEndDate, Ttr.DepartmentId, Ttr.DepartmentValue, Ttr.CreateEmployeeId, Ttr.CreateEmployeeValue, Ttr.CreatedDate, Ttr.ModifiedDate, Ttr.DeleteDate, Ttr.ReportType, 
                         Ttrt.Id AS TaskId, Ttrt.Operation, Ttrt.ExecutorEmployeeId, Ttrt.ExecutorEmployeeValue, Ttrt.Stage, Ttrt.State, Ttrt.CreateEmployeeId AS TaskAuthorId, Ttrt.CreateEmployeeValue AS TaskAuthorValue, Ttrt.Note
FROM            dbo.TmcReports AS Ttr INNER JOIN
                         dbo.TmcReportTasks AS Ttrt ON Ttrt.refTmcReport = Ttr.Id AND Ttrt.DeleteDate IS NULL


GO
/****** Object:  View [dbo].[TmcView]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TmcView]
AS
SELECT        CASE WHEN
                             (SELECT        COUNT(*)
                               FROM            TmcOutCounts
                               WHERE        TmcOutCounts.TmcId = t .Id AND StateType = 1) = 0 THEN t .CountConvert WHEN
                             (SELECT        COUNT(*)
                               FROM            TmcOutCounts
                               WHERE        TmcOutCounts.TmcId = t .Id AND StateType = 1) > 0 THEN t .CountConvert -
                             (SELECT        SUM(CountFact)
                               FROM            TmcOutCounts
                               WHERE        TmcOutCounts.TmcId = t .Id AND StateType = 1) END AS CountActual, t.Id, t.CreatedDate, t.CreatedEmployeeId, t.StateType, 
                         (CASE WHEN t .StateType = 0 THEN N'Новый' WHEN t .StateType = 2 THEN N'Списанный' ELSE N'Принятый' END) AS StateTypeValue, t.TmcInId, t.Number, t.Name, t.Code, t.Manufacturer, t.Serial, t.Count, 
                         t.MeasureTypeDicId, d1.Name AS MeasureTypeDicValue, t.CountFact, t.CountConvert, t.MeasureTypeConvertDicId, d2.Name AS MeasureTypeConvertDicValue, t.ManufactureDate, t.ExpiryDate, t.PackageDicId, 
                         d3.Name AS PackageDicValue, t.TmcTypeDicId, d4.Name AS TmcTypeDicValue, t.StorageDicId, d5.Name AS StorageDicValue, t.Safe, t.Rack, t.OwnerEmployeeId, t.ReceivingDate, 
                         e.DisplayName AS OwnerEmployeeValue
FROM            dbo.Tmcs AS t LEFT OUTER JOIN
                         dbo.Employees AS e ON e.Id = t.OwnerEmployeeId LEFT OUTER JOIN
                         dbo.Dictionaries AS d1 ON d1.Id = t.MeasureTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d2 ON d2.Id = t.MeasureTypeConvertDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d3 ON d3.Id = t.PackageDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d4 ON d4.Id = t.TmcTypeDicId LEFT OUTER JOIN
                         dbo.Dictionaries AS d5 ON d5.Id = t.StorageDicId


GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  




GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  




GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  




GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  




GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  




GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  




GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  




GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  




GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  




GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_lims_Applications_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_primary_Applications_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [local_update_peer_timestamp_index]    Script Date: 10.03.2017 2:23:55 ******/
CREATE NONCLUSTERED INDEX [local_update_peer_timestamp_index] ON [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking]
(
	[local_update_peer_timestamp] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Holidays] ADD  CONSTRAINT [DF_Holidays_Count]  DEFAULT ((0)) FOR [Count]
GO
ALTER TABLE [dbo].[I1c_primary_ApplicationElements] ADD  CONSTRAINT [DF_I1c_primary_ApplicationElements_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[I1c_primary_ApplicationElements] ADD  CONSTRAINT [DF_I1c_primary_ApplicationElements_CreateDatetime]  DEFAULT (getdate()) FOR [ExportDatetime]
GO
ALTER TABLE [dbo].[I1c_primary_Applications] ADD  CONSTRAINT [DF_I1c_primary_Applications_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[I1c_primary_Applications] ADD  CONSTRAINT [DF_I1c_primary_Applications_ExportDatetime]  DEFAULT (getdate()) FOR [ExportDatetime]
GO
ALTER TABLE [dbo].[I1c_trl_DirectionElements] ADD  CONSTRAINT [DF__I1c_trl_Dire__Id__35BCFE0A]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[I1c_trl_DirectionsToPay] ADD  CONSTRAINT [DF__i1c_Directio__Id__7B5B524B]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[I1c_trl_DirectionsToPay] ADD  CONSTRAINT [DF_i1c_DirectionToPay_CreateDatetime]  DEFAULT (getdate()) FOR [ExportDatetime]
GO
ALTER TABLE [dbo].[PrismReports] ADD  CONSTRAINT [DF_PrismReports_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[sr_pharmacological_actions] ADD  CONSTRAINT [DF_pharmacological_actions_block_sign]  DEFAULT ((0)) FOR [block_sign]
GO
ALTER TABLE [dbo].[TmcReportData] ADD  CONSTRAINT [DF_TmcReportData_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TmcReportData] ADD  CONSTRAINT [DF_TmcReportData_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TmcReports] ADD  CONSTRAINT [DF_TmcReports_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TmcReports] ADD  CONSTRAINT [DF_Table_1_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TmcReportTasks] ADD  CONSTRAINT [DF_TmcReportTask_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TmcReportTasks] ADD  CONSTRAINT [DF_TmcReportTask_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccessDocuments]  WITH CHECK ADD  CONSTRAINT [FK_AccessDocumentsObjectId_DocumentsId] FOREIGN KEY([ObjectId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessDocuments] CHECK CONSTRAINT [FK_AccessDocumentsObjectId_DocumentsId]
GO
ALTER TABLE [dbo].[AccessTasks]  WITH CHECK ADD  CONSTRAINT [FK_AccessTasksObjectId_TasksId] FOREIGN KEY([ObjectId])
REFERENCES [dbo].[Tasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessTasks] CHECK CONSTRAINT [FK_AccessTasksObjectId_TasksId]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_DocumentId_Documents] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_DocumentId_Documents]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK__Contracts_ApplicantOrganization_Organizations] FOREIGN KEY([ApplicantOrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK__Contracts_ApplicantOrganization_Organizations]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK__Contracts_HolderOrganization_Organizations] FOREIGN KEY([HolderOrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK__Contracts_HolderOrganization_Organizations]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK__Contracts_PayerOrganization_Organizations] FOREIGN KEY([PayerOrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK__Contracts_PayerOrganization_Organizations]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK__Contracts_PayerTranslation_Organizations] FOREIGN KEY([PayerTranslationOrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK__Contracts_PayerTranslation_Organizations]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Dictionaries] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Dictionaries]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Organizations] FOREIGN KEY([ManufacturerOrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Organizations]
GO
ALTER TABLE [dbo].[Dictionaries]  WITH CHECK ADD  CONSTRAINT [FK_Dictionaries_ParenId_Dictionaries] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Dictionaries] CHECK CONSTRAINT [FK_Dictionaries_ParenId_Dictionaries]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Templates] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Template]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Units] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Units] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Units]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesPositionId_UnitsId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Units] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_EmployeesPositionId_UnitsId]
GO
ALTER TABLE [dbo].[I1c_lims_ApplicationElements]  WITH CHECK ADD  CONSTRAINT [FK_I1c_lims_ApplicationElements_I1c_lims_Applications] FOREIGN KEY([refApplication])
REFERENCES [dbo].[I1c_lims_Applications] ([Number])
GO
ALTER TABLE [dbo].[I1c_lims_ApplicationElements] CHECK CONSTRAINT [FK_I1c_lims_ApplicationElements_I1c_lims_Applications]
GO
ALTER TABLE [dbo].[obk_exchangerate]  WITH CHECK ADD  CONSTRAINT [FK_obk_exchangerate_obk_currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[obk_currencies] ([id])
GO
ALTER TABLE [dbo].[obk_exchangerate] CHECK CONSTRAINT [FK_obk_exchangerate_obk_currencies]
GO
ALTER TABLE [dbo].[obk_product_cost]  WITH CHECK ADD  CONSTRAINT [FK_product_cost_products] FOREIGN KEY([id])
REFERENCES [dbo].[obk_products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[obk_product_cost] CHECK CONSTRAINT [FK_product_cost_products]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_DocumentId_Documents] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_DocumentId_Documents]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_ReportsTaskId_TasksId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_ReportsTaskId_TasksId]
GO
ALTER TABLE [dbo].[sr_atc_codes]  WITH CHECK ADD  CONSTRAINT [FK_atc_codes_atc_codes] FOREIGN KEY([parent_id])
REFERENCES [dbo].[sr_atc_codes] ([id])
GO
ALTER TABLE [dbo].[sr_atc_codes] CHECK CONSTRAINT [FK_atc_codes_atc_codes]
GO
ALTER TABLE [dbo].[sr_boxes]  WITH NOCHECK ADD  CONSTRAINT [FK_boxes_boxes] FOREIGN KEY([parent_id])
REFERENCES [dbo].[sr_boxes] ([id])
GO
ALTER TABLE [dbo].[sr_boxes] CHECK CONSTRAINT [FK_boxes_boxes]
GO
ALTER TABLE [dbo].[sr_degree_risk_details]  WITH NOCHECK ADD  CONSTRAINT [FK_degree_risk_details_degree_risks] FOREIGN KEY([degree_risk_id])
REFERENCES [dbo].[sr_degree_risks] ([id])
GO
ALTER TABLE [dbo].[sr_degree_risk_details] CHECK CONSTRAINT [FK_degree_risk_details_degree_risks]
GO
ALTER TABLE [dbo].[sr_dosage_forms]  WITH NOCHECK ADD  CONSTRAINT [FK_dosage_forms_dosage_forms1] FOREIGN KEY([parent_id])
REFERENCES [dbo].[sr_dosage_forms] ([id])
GO
ALTER TABLE [dbo].[sr_dosage_forms] CHECK CONSTRAINT [FK_dosage_forms_dosage_forms1]
GO
ALTER TABLE [dbo].[sr_drug_forms]  WITH CHECK ADD  CONSTRAINT [FK_drug_forms_register] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_drug_forms] CHECK CONSTRAINT [FK_drug_forms_register]
GO
ALTER TABLE [dbo].[sr_drug_forms]  WITH CHECK ADD  CONSTRAINT [FK_drug_forms_register_boxes] FOREIGN KEY([pr_box_id])
REFERENCES [dbo].[sr_register_boxes] ([id])
GO
ALTER TABLE [dbo].[sr_drug_forms] CHECK CONSTRAINT [FK_drug_forms_register_boxes]
GO
ALTER TABLE [dbo].[sr_drug_forms]  WITH CHECK ADD  CONSTRAINT [FK_drug_forms_register_boxes1] FOREIGN KEY([sec_box_id])
REFERENCES [dbo].[sr_register_boxes] ([id])
GO
ALTER TABLE [dbo].[sr_drug_forms] CHECK CONSTRAINT [FK_drug_forms_register_boxes1]
GO
ALTER TABLE [dbo].[sr_mt_categories]  WITH NOCHECK ADD  CONSTRAINT [FK_mt_categories_mt_categories1] FOREIGN KEY([parent_id])
REFERENCES [dbo].[sr_mt_categories] ([id])
GO
ALTER TABLE [dbo].[sr_mt_categories] CHECK CONSTRAINT [FK_mt_categories_mt_categories1]
GO
ALTER TABLE [dbo].[sr_pharmacological_actions]  WITH NOCHECK ADD  CONSTRAINT [FK_pharmacological_actions_pharmacological_actions1] FOREIGN KEY([parent_id])
REFERENCES [dbo].[sr_pharmacological_actions] ([id])
GO
ALTER TABLE [dbo].[sr_pharmacological_actions] CHECK CONSTRAINT [FK_pharmacological_actions_pharmacological_actions1]
GO
ALTER TABLE [dbo].[sr_producers]  WITH NOCHECK ADD  CONSTRAINT [FK_r_producers_form_types] FOREIGN KEY([form_type_id])
REFERENCES [dbo].[sr_form_types] ([id])
GO
ALTER TABLE [dbo].[sr_producers] CHECK CONSTRAINT [FK_r_producers_form_types]
GO
ALTER TABLE [dbo].[sr_register]  WITH NOCHECK ADD  CONSTRAINT [FK_register_measures] FOREIGN KEY([storage_measure_id])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[sr_register] CHECK CONSTRAINT [FK_register_measures]
GO
ALTER TABLE [dbo].[sr_register]  WITH NOCHECK ADD  CONSTRAINT [FK_register_reg_actions1] FOREIGN KEY([reg_action_id])
REFERENCES [dbo].[sr_reg_actions] ([id])
GO
ALTER TABLE [dbo].[sr_register] CHECK CONSTRAINT [FK_register_reg_actions1]
GO
ALTER TABLE [dbo].[sr_register]  WITH NOCHECK ADD  CONSTRAINT [FK_register_reg_types] FOREIGN KEY([reg_type_id])
REFERENCES [dbo].[sr_reg_types] ([id])
GO
ALTER TABLE [dbo].[sr_register] CHECK CONSTRAINT [FK_register_reg_types]
GO
ALTER TABLE [dbo].[sr_register_boxes]  WITH NOCHECK ADD  CONSTRAINT [FK_register_boxes_boxes] FOREIGN KEY([box_id])
REFERENCES [dbo].[sr_boxes] ([id])
GO
ALTER TABLE [dbo].[sr_register_boxes] CHECK CONSTRAINT [FK_register_boxes_boxes]
GO
ALTER TABLE [dbo].[sr_register_boxes]  WITH NOCHECK ADD  CONSTRAINT [FK_register_boxes_register] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_register_boxes] CHECK CONSTRAINT [FK_register_boxes_register]
GO
ALTER TABLE [dbo].[sr_register_boxes_rk_ls]  WITH CHECK ADD  CONSTRAINT [FK_register_boxes_rk_ls_register_boxes] FOREIGN KEY([id])
REFERENCES [dbo].[sr_register_boxes] ([id])
GO
ALTER TABLE [dbo].[sr_register_boxes_rk_ls] CHECK CONSTRAINT [FK_register_boxes_rk_ls_register_boxes]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH CHECK ADD  CONSTRAINT [FK_register_drugs_atc_codes] FOREIGN KEY([atc_id])
REFERENCES [dbo].[sr_atc_codes] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_atc_codes]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[sr_categories] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_categories]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_dosage_forms] FOREIGN KEY([dosage_form_id])
REFERENCES [dbo].[sr_dosage_forms] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_dosage_forms]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_drug_types] FOREIGN KEY([drug_type_id])
REFERENCES [dbo].[sr_drug_types] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_drug_types]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_international_names] FOREIGN KEY([int_name_id])
REFERENCES [dbo].[sr_international_names] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_international_names]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_life_types] FOREIGN KEY([life_type_id])
REFERENCES [dbo].[sr_life_types] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_life_types]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH CHECK ADD  CONSTRAINT [FK_register_drugs_measures] FOREIGN KEY([dosage_measure_id])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_measures]
GO
ALTER TABLE [dbo].[sr_register_drugs]  WITH NOCHECK ADD  CONSTRAINT [FK_register_drugs_nd_names] FOREIGN KEY([nd_name_id])
REFERENCES [dbo].[sr_nd_names] ([id])
GO
ALTER TABLE [dbo].[sr_register_drugs] CHECK CONSTRAINT [FK_register_drugs_nd_names]
GO
ALTER TABLE [dbo].[sr_register_mt]  WITH NOCHECK ADD  CONSTRAINT [FK_register_mt_degree_risk_details] FOREIGN KEY([risk_detail_id])
REFERENCES [dbo].[sr_degree_risk_details] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt] CHECK CONSTRAINT [FK_register_mt_degree_risk_details]
GO
ALTER TABLE [dbo].[sr_register_mt]  WITH NOCHECK ADD  CONSTRAINT [FK_register_mt_degree_risks] FOREIGN KEY([degree_risk_id])
REFERENCES [dbo].[sr_degree_risks] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt] CHECK CONSTRAINT [FK_register_mt_degree_risks]
GO
ALTER TABLE [dbo].[sr_register_mt]  WITH NOCHECK ADD  CONSTRAINT [FK_register_mt_mt_categories] FOREIGN KEY([mt_category_id])
REFERENCES [dbo].[sr_mt_categories] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt] CHECK CONSTRAINT [FK_register_mt_mt_categories]
GO
ALTER TABLE [dbo].[sr_register_mt]  WITH NOCHECK ADD  CONSTRAINT [FK_register_mt_register1] FOREIGN KEY([id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt] CHECK CONSTRAINT [FK_register_mt_register1]
GO
ALTER TABLE [dbo].[sr_register_mt_kz]  WITH NOCHECK ADD  CONSTRAINT [FK_register_mt_kz_register_mt] FOREIGN KEY([id])
REFERENCES [dbo].[sr_register_mt] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt_kz] CHECK CONSTRAINT [FK_register_mt_kz_register_mt]
GO
ALTER TABLE [dbo].[sr_register_mt_parts]  WITH NOCHECK ADD  CONSTRAINT [FK_r_mt_parts_r_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[sr_producers] ([id])
GO
ALTER TABLE [dbo].[sr_register_mt_parts] CHECK CONSTRAINT [FK_r_mt_parts_r_producers]
GO
ALTER TABLE [dbo].[sr_register_mt_parts]  WITH NOCHECK ADD  CONSTRAINT [FK_r_mt_parts_r_register_mt] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register_mt] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sr_register_mt_parts] CHECK CONSTRAINT [FK_r_mt_parts_r_register_mt]
GO
ALTER TABLE [dbo].[sr_register_names]  WITH CHECK ADD  CONSTRAINT [FK_register_names_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[sr_countries] ([id])
GO
ALTER TABLE [dbo].[sr_register_names] CHECK CONSTRAINT [FK_register_names_countries]
GO
ALTER TABLE [dbo].[sr_register_names]  WITH CHECK ADD  CONSTRAINT [FK_register_names_register] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_register_names] CHECK CONSTRAINT [FK_register_names_register]
GO
ALTER TABLE [dbo].[sr_register_pharmacological_actions]  WITH NOCHECK ADD  CONSTRAINT [FK_r_register_pharmacological_actions_pharmacological_actions] FOREIGN KEY([pharmacological_action_id])
REFERENCES [dbo].[sr_pharmacological_actions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sr_register_pharmacological_actions] CHECK CONSTRAINT [FK_r_register_pharmacological_actions_pharmacological_actions]
GO
ALTER TABLE [dbo].[sr_register_pharmacological_actions]  WITH NOCHECK ADD  CONSTRAINT [FK_register_pharmacological_actions_register_drugs] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register_drugs] ([id])
GO
ALTER TABLE [dbo].[sr_register_pharmacological_actions] CHECK CONSTRAINT [FK_register_pharmacological_actions_register_drugs]
GO
ALTER TABLE [dbo].[sr_register_producers]  WITH NOCHECK ADD  CONSTRAINT [FK_register_producers_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[sr_countries] ([id])
GO
ALTER TABLE [dbo].[sr_register_producers] CHECK CONSTRAINT [FK_register_producers_countries]
GO
ALTER TABLE [dbo].[sr_register_producers]  WITH NOCHECK ADD  CONSTRAINT [FK_register_producers_producer_types] FOREIGN KEY([producer_type_id])
REFERENCES [dbo].[sr_producer_types] ([id])
GO
ALTER TABLE [dbo].[sr_register_producers] CHECK CONSTRAINT [FK_register_producers_producer_types]
GO
ALTER TABLE [dbo].[sr_register_producers]  WITH NOCHECK ADD  CONSTRAINT [FK_register_producers_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[sr_producers] ([id])
GO
ALTER TABLE [dbo].[sr_register_producers] CHECK CONSTRAINT [FK_register_producers_producers]
GO
ALTER TABLE [dbo].[sr_register_producers]  WITH NOCHECK ADD  CONSTRAINT [FK_register_producers_register] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_register_producers] CHECK CONSTRAINT [FK_register_producers_register]
GO
ALTER TABLE [dbo].[sr_register_substances]  WITH NOCHECK ADD  CONSTRAINT [FK_r_register_substances_nd_types] FOREIGN KEY([nd_type_id])
REFERENCES [dbo].[sr_nd_types] ([id])
GO
ALTER TABLE [dbo].[sr_register_substances] CHECK CONSTRAINT [FK_r_register_substances_nd_types]
GO
ALTER TABLE [dbo].[sr_register_substances]  WITH NOCHECK ADD  CONSTRAINT [FK_r_register_substances_substance_types] FOREIGN KEY([substance_type_id])
REFERENCES [dbo].[sr_substance_types] ([id])
GO
ALTER TABLE [dbo].[sr_register_substances] CHECK CONSTRAINT [FK_r_register_substances_substance_types]
GO
ALTER TABLE [dbo].[sr_register_substances]  WITH NOCHECK ADD  CONSTRAINT [FK_register_substances_register] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register] ([id])
GO
ALTER TABLE [dbo].[sr_register_substances] CHECK CONSTRAINT [FK_register_substances_register]
GO
ALTER TABLE [dbo].[sr_register_substances]  WITH NOCHECK ADD  CONSTRAINT [FK_register_substances_substances] FOREIGN KEY([substance_id])
REFERENCES [dbo].[sr_substances] ([id])
GO
ALTER TABLE [dbo].[sr_register_substances] CHECK CONSTRAINT [FK_register_substances_substances]
GO
ALTER TABLE [dbo].[sr_register_use_methods]  WITH NOCHECK ADD  CONSTRAINT [FK_r_register_use_methods_use_methods] FOREIGN KEY([use_method_id])
REFERENCES [dbo].[sr_use_methods] ([id])
GO
ALTER TABLE [dbo].[sr_register_use_methods] CHECK CONSTRAINT [FK_r_register_use_methods_use_methods]
GO
ALTER TABLE [dbo].[sr_register_use_methods]  WITH NOCHECK ADD  CONSTRAINT [FK_register_use_methods_register_drugs] FOREIGN KEY([register_id])
REFERENCES [dbo].[sr_register_drugs] ([id])
GO
ALTER TABLE [dbo].[sr_register_use_methods] CHECK CONSTRAINT [FK_register_use_methods_register_drugs]
GO
ALTER TABLE [dbo].[sr_substances]  WITH NOCHECK ADD  CONSTRAINT [FK_substances_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[sr_categories] ([id])
GO
ALTER TABLE [dbo].[sr_substances] CHECK CONSTRAINT [FK_substances_categories]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Activities] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Activities]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Documents] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Documents]
GO
ALTER TABLE [dbo].[TmcReportTasks]  WITH CHECK ADD  CONSTRAINT [FK_TmcReportTasks_TmcReports] FOREIGN KEY([refTmcReport])
REFERENCES [dbo].[TmcReports] ([Id])
GO
ALTER TABLE [dbo].[TmcReportTasks] CHECK CONSTRAINT [FK_TmcReportTasks_TmcReports]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [FK_UnitsEmployeeId_EmployeesId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [FK_UnitsEmployeeId_EmployeesId]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [FK_UnitsParentId_UnitsId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Units] ([Id])
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [FK_UnitsParentId_UnitsId]
GO
/****** Object:  StoredProcedure [dbo].[ActivityIsMainLine]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActivityIsMainLine]
	-- Add the parameters for the stored procedure here
	@DocId uniqueidentifier
	
AS
BEGIN
declare @parentId uniqueidentifier
declare @isMainLine bit
declare @ResponsibleId uniqueidentifier
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	update Activities 
		set IsMainLine = 0
	where DocumentId = @DocId and ParentId is not null

	select @parentId = a.Id, @ResponsibleId = a.ResponsibleId from Activities as a where a.DocumentId = @DocId and ParentId is null

	WHILE @parentId is not null
	BEGIN
	 UPDATE Activities
		 SET IsMainLine = 1
	where ParentId = @parentId and AuthorId = @ResponsibleId and DocumentId = @DocId
		
		SELECT 
			@parentId = a.Id, 
			@ResponsibleId = a.ResponsibleId 
		FROM Activities as a 
		where ParentId = @parentId and AuthorId = @ResponsibleId and DocumentId = @DocId
	IF (SELECT count(*) FROM Activities as a where ParentId = @parentId and AuthorId = @ResponsibleId and DocumentId = @DocId) = 0
      BREAK
	ELSE
      CONTINUE
END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END




GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        




GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END




GO
/****** Object:  StoredProcedure [dbo].[CloseTask]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CloseTask] 
	-- Add the parameters for the stored procedure here
	@Id uniqueidentifier,
	@Note nvarchar(450),
	@ModifiedUser nvarchar(450)
AS
BEGIN
	DECLARE @DocumentId uniqueidentifier
	SET @DocumentId = (SELECT DocumentId FROM [dbo].[Tasks] WHERE Id = @Id)

	DECLARE @ParentTask uniqueidentifier
	SET @ParentTask = @Id

	while(@ParentTask is not null)
	BEGIN
		UPDATE [dbo].[Tasks]
		SET State = 2, ModifiedUser = @ModifiedUser
		WHERE Id = @ParentTask

		INSERT INTO [dbo].[Reports] ([Id], [Type], [Text], [AnswersId], [AnswersValue], [ExecutionDate], [DocumentId], [TaskId], [ModifiedUser])
		VALUES (NEWID(), 0, 'Задание закрыто исполнением: ' +  @Note, null, null, GETDATE(), @DocumentId, @ParentTask, @ModifiedUser)

		SET @ParentTask = (SELECT Id FROM [dbo].[Tasks] WHERE Id = (SELECT ParentTask FROM [dbo].[Activities] WHERE Id = (SELECT ActivityId FROM [dbo].[Tasks] WHERE Id = @ParentTask and FunctionType = 1)))
	END

	if ((SELECT FunctionType + IsMainLine FROM [dbo].[Tasks] WHERE Id = @Id) = 2)
		UPDATE [dbo].[Documents]
		SET StateType = 9, ModifiedUser = @ModifiedUser WHERE Id = @DocumentId
END





GO
/****** Object:  StoredProcedure [dbo].[deleterowsAccessDocs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <19.07.2011>
-- Description:	<Процедура удаления строк в AccessDocuments>
-- =============================================
CREATE PROCEDURE [dbo].[deleterowsAccessDocs] 
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
AS
BEGIN
	DELETE FROM [dbo].[AccessDocuments]
	WHERE ObjectId = @p1 and PropertyName = @p2
END





GO
/****** Object:  StoredProcedure [dbo].[deleterowsDics]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <16.07.2011>
-- Description:	<Процедура удаления строк в LinkDictionaries>
-- =============================================
CREATE PROCEDURE [dbo].[deleterowsDics] 
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
AS
BEGIN
	DELETE FROM [dbo].[LinkDictionaries]
	WHERE OwnerId = @p1 and PropertyName = @p2
END





GO
/****** Object:  StoredProcedure [dbo].[deleterowsDocs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <07.07.2011>
-- Description:	<Процедура удаления строк в LinkDocuments>
-- =============================================
CREATE PROCEDURE [dbo].[deleterowsDocs] 
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
AS
BEGIN
	DELETE FROM [dbo].[LinkDocuments]
	WHERE OwnerId = @p1 and PropertyName = @p2
END





GO
/****** Object:  StoredProcedure [dbo].[deleterowsDocsAnswer]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <07.07.2011>
-- Description:	<Процедура удаления строк в LinkDocuments>
-- =============================================
CREATE PROCEDURE [dbo].[deleterowsDocsAnswer] 
	@p1 uniqueidentifier
AS
BEGIN
	DELETE FROM [dbo].[LinkDocuments]
	WHERE OwnerId = @p1 and (PropertyName = 'AnswersId' or PropertyName = 'AnswersTempId')
END





GO
/****** Object:  StoredProcedure [dbo].[deleterowsUnts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <14.07.2011>
-- Description:	<Процедура удаления строк в LinkUnits>
-- =============================================
CREATE PROCEDURE [dbo].[deleterowsUnts] 
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
AS
BEGIN
	DELETE FROM [dbo].[LinkUnits]
	WHERE OwnerId = @p1 and PropertyName = @p2
END





GO
/****** Object:  StoredProcedure [dbo].[I1c_lims_ApplicationEAdmissions_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_lims_ApplicationEAdmissions_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[Producer], [base].[ProducerExpirationDate], [base].[PartyNumber], [base].[ShelfNumber], [base].[CupboardNumber], [base].[WarehouseNumber], [base].[DateOfReceiving], [base].[Note], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_lims_ApplicationEAdmissions] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_lims_ApplicationEExploitation_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_lims_ApplicationEExploitation_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[PowerOfAttorneyId_1C], [base].[PowerOfAttorneyNumber_1C], [base].[OrganizationId], [base].[OrganizationName], [base].[DepartmentId], [base].[DepartmentName], [base].[OwnerEmployeeId], [base].[OwnerEmployeeFio], [base].[ExploitatioinDatetime], [base].[Description], [base].[Reason], [base].[ExportDatetime], [base].[ImportDatetime], [base].[ExpertiseApplicationId], [base].[ExpertiseApplicationNumber], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_lims_ApplicationEExploitation] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_lims_ApplicationElements_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_lims_ApplicationElements_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[Name], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[Kind], [base].[KindCode], [base].[Paking], [base].[PakingCode], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refApplication], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_lims_ApplicationElements] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_lims_Applications_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_lims_Applications_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[Number], [base].[ContractId], [base].[ContractNumber], [base].[ContractDate], [base].[LastDeliveryDate], [base].[ProviderId], [base].[Provider], [base].[ProviderBin], [base].[FrpersonId], [base].[FrpersonFio], [base].[OrganizationId], [base].[FullDelivery], [base].[PowerOfAttorneyId_1C], [base].[PowerOfAttorneyNumber_1C], [base].[PowerOfAttorneyDatetime_1C], [base].[FilePath], [base].[Note], [base].[CreateDatetime], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_lims_Applications] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_primary_ApplicationElements_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_primary_ApplicationElements_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[Name], [base].[DosageForm], [base].[DosageCode], [base].[Packing], [base].[PackingCode], [base].[Type], [base].[TypeCode], [base].[Quantity], [base].[Price], [base].[Total], [base].[Producer], [base].[ProducerCode], [base].[ProducerCountry], [base].[ProducerCountryCode], [base].[ProducerType], [base].[ProducerTypeCode], [base].[Representative], [base].[RepresentativeCode], [base].[ContractNumber], [base].[ContractBeginDate], [base].[ContractEndDate], [base].[RepresentativeAddress], [base].[RepresentativePhone], [base].[Payer], [base].[PayerAddress], [base].[PayerBank], [base].[PayerAccount], [base].[PayerBIK], [base].[PayerRNN], [base].[PayerBIN], [base].[PayerIIN], [base].[PayerСurrency], [base].[PayerСurrencyCode], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refPrimaryApplication], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_primary_ApplicationElements] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_primary_Applications_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_primary_Applications_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[ApplicationId], [base].[Number], [base].[Quantity], [base].[Total], [base].[Note], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_primary_Applications] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_trl_DirectionElements_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_trl_DirectionElements_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[Code], [base].[Number], [base].[Name], [base].[Quantity], [base].[Price], [base].[Total], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refDirection], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_trl_DirectionElements] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[I1c_trl_DirectionsToPay_selectchanges]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[I1c_trl_DirectionsToPay_selectchanges]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
SELECT [side].[Id], [base].[Code], [base].[Number], [base].[Producer], [base].[ProducerCode], [base].[Payer], [base].[PayerCode], [base].[Translator], [base].[TraslatorCode], [base].[Status], [base].[StatusCode], [base].[InvoiceCode_1C], [base].[InvoiceNumber_1C], [base].[InvoiceDatetime_1C], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key FROM [I1c_trl_DirectionsToPay] [base] RIGHT JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] [side] ON [base].[Id] = [side].[Id] WHERE  ([side].[update_scope_local_id] IS NULL OR [side].[update_scope_local_id] <> @sync_scope_local_id OR ([side].[update_scope_local_id] = @sync_scope_local_id AND [side].[scope_update_peer_key] <> @sync_update_peer_key)) AND [side].[local_update_peer_timestamp] > @sync_min_timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[insertrowsAccessDocs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <19.07.2011>
-- Description:	<Процедура вставки строк в AccessDocs>
-- =============================================
CREATE PROCEDURE [dbo].[insertrowsAccessDocs]
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX),
	@p3 nvarchar(MAX)  
AS
BEGIN
	INSERT INTO [dbo].[AccessDocuments]
        (UserId ,ObjectId ,PropertyName)
		(SELECT Value, @p1, @p2 FROM [dbo].[split](@p3,', '))
END





GO
/****** Object:  StoredProcedure [dbo].[insertrowsDics]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <16.07.2011>
-- Description:	<Процедура вставки строк в LinkDictionaries>
-- =============================================
CREATE PROCEDURE [dbo].[insertrowsDics]
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX),
	@p3 nvarchar(MAX)  
AS
BEGIN
	INSERT INTO [dbo].[LinkDictionaries]
        (DictionaryId ,OwnerId ,PropertyName)
		(SELECT Value, @p1, @p2 FROM [dbo].[split](@p3,', '))
END





GO
/****** Object:  StoredProcedure [dbo].[insertrowsDocs]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <07.07.2011>
-- Description:	<Процедура вставки строк в LinkDocuments>
-- =============================================
CREATE PROCEDURE [dbo].[insertrowsDocs]
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX),
	@p3 nvarchar(MAX)  
AS
BEGIN
	INSERT INTO [dbo].[LinkDocuments]
        (DocumentId ,OwnerId ,PropertyName)
		(SELECT Value, @p1, @p2 FROM [dbo].[split](@p3,', '))
END





GO
/****** Object:  StoredProcedure [dbo].[insertrowsDocsAnswer]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <07.07.2011>
-- Description:	<Процедура вставки строк в LinkDocuments>
-- =============================================
CREATE PROCEDURE [dbo].[insertrowsDocsAnswer]
	@p1 uniqueidentifier,
	@p2 nvarchar(MAX)
AS
BEGIN
	DECLARE @properyName nvarchar(MAX)
	SET @properyName = 'AnswersId'
	if ((SELECT OutgoingType FROM Documents WHERE Id=@p1) = 2 or (SELECT DocumentType FROM Documents WHERE Id=@p1) = 5)
		SET @properyName = 'AnswersTempId'
	if (@properyName != '')
		INSERT INTO [dbo].[LinkDocuments]
			(DocumentId ,OwnerId ,PropertyName)
			(SELECT Value, @p1, @properyName FROM [dbo].[split](@p2,', '))
END





GO
/****** Object:  StoredProcedure [dbo].[insertrowsUnts]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kairat V. Beysenov>
-- Create date: <14.07.2011>
-- Description:	<Процедура вставки строк в LinkUnits>
-- =============================================
CREATE PROCEDURE [dbo].[insertrowsUnts]
	@OwnerId uniqueidentifier,
	@PropertyName nvarchar(MAX),
	@Units nvarchar(MAX)
AS
BEGIN
	DECLARE @EmployeeId nvarchar(MAX)
	DECLARE @PositionId nvarchar(MAX)
	DECLARE @Department1Id nvarchar(MAX)
	DECLARE @Department2Id nvarchar(MAX)
	DECLARE @Department3Id nvarchar(MAX)
	DECLARE @OrganizationId nvarchar(MAX)
	DECLARE @TempId nvarchar(MAX)

	SET @EmployeeId = NULL
	SET @PositionId = NULL
	SET @Department1Id = NULL
	SET @Department2Id = NULL
	SET @Department3Id = NULL
	SET @OrganizationId = NULL
	SET @TempId = NULL

	DECLARE @Employees TABLE 
	(
		Id INT IDENTITY(0, 1),
		Value NVARCHAR(MAX)
	) 

	INSERT INTO @Employees(Value)
	SELECT Value FROM [dbo].[split](@Units,', ')

	DECLARE @Index INT
	SET @Index = 0

	DECLARE @Count INT
	SET @Count = (SELECT count(*) FROM @Employees)

	WHILE @Index < @Count
	BEGIN
		SET @EmployeeId = (SELECT Value FROM @Employees WHERE Id = @Index)
		SET @PositionId = (SELECT PositionId FROM [dbo].[Employees] WHERE Id = @EmployeeId)
		SET @Department1Id = (SELECT ParentId FROM [dbo].[Units] WHERE Id = @PositionId)
		SET @Department2Id = (SELECT ParentId FROM [dbo].[Units] WHERE Id = @Department1Id)
		SET @Department3Id = (SELECT ParentId FROM [dbo].[Units] WHERE Id = @Department2Id)
		
		SET @TempId = (SELECT ParentId FROM [dbo].[Units] WHERE Id = @Department1Id)
		SET @OrganizationId = @TempId
		WHILE (@TempId IS NOT NULL)
		BEGIN
			SET @OrganizationId = @TempId
			SET @TempId = (SELECT ParentId FROM [dbo].[Units] WHERE Id = @TempId)
		END

		IF (@Department3Id = @OrganizationId)
			SET @Department3Id = NULL
		IF (@Department2Id = @OrganizationId)
			SET @Department2Id = NULL

		INSERT INTO [dbo].[LinkUnits]
			([EmployeeId],[PositionId],[Department1Id],[Department2Id],[Department3Id],[OrganizationId],[OwnerId],[PropertyName])
		VALUES
			(@EmployeeId, @PositionId, @Department1Id, @Department2Id, @Department3Id, @OrganizationId, @OwnerId, @PropertyName)
		SET @Index = @Index + 1
	END
END





GO
/****** Object:  StoredProcedure [dbo].[SendEmail]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kairat V. Beysenov
-- Create date: 14-11-2016
-- Description:	Spam
-- =============================================
CREATE PROCEDURE [dbo].[SendEmail]
	@taskId nvarchar(max)
AS
BEGIN
	BEGIN TRY
		DECLARE @recipients nvarchar(MAX);
		SET @recipients = (select STUFF((SELECT ';' + Email from Employees
									where Employees.Id in (select ExecutorId from Tasks where Tasks.Id in (SELECT * FROM [dbo].[split] (@taskId,';'))) and email LIKE '%_@__%.__%'
									FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, ''))

		if (@recipients <> '' and @recipients is not null)
		BEGIN
			DECLARE @body nvarchar(MAX);
			SET @body = (SELECT Value FROM Settings WHERE UniqueName = 'SpamTemplate')
			SET @body = (SELECT REPLACE(@body, '{0}', (select ISNULL(DisplayName, '-') from Documents where Documents.Id = (select DocumentId from Tasks where Tasks.Id = @taskId))))
			SET @body = (SELECT REPLACE(@body, '{1}', (select ISNULL(AuthorValue, '-') from Tasks where Tasks.Id = @taskId)))
			SET @body = (SELECT REPLACE(@body, '{2}', (select ISNULL(convert(varchar(25), ExecutionDate, 104) , '-') from Tasks where Tasks.Id = @taskId)))
			SET @body = (SELECT REPLACE(@body, '{3}', (select ISNULL([Text], '-') from Tasks where Tasks.Id = @taskId)))
					
			EXEC msdb.dbo.sp_send_dbmail
			@recipients = @recipients,
			@subject = N'Ассистент: у вас новое задание',
			@body = @Body,
			@body_format = 'HTML',
			@profile_name = 'spam'
		END
	END TRY
    BEGIN CATCH
    END CATCH;

END



GO
/****** Object:  StoredProcedure [dbo].[SendNotification]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SendNotification]

AS

BEGIN 
declare @Id bigint
declare @email nvarchar(500)
declare @note nvarchar(2000)

declare cur CURSOR LOCAL for
    select Id, Email, Note from [Notification] where IsSend='false' and Email is not null
open cur

fetch next from cur into @Id, @email, @note

while @@FETCH_STATUS = 0 BEGIN

	 EXEC msdb.dbo.sp_send_dbmail
		@profile_name = 'ncels',
		@recipients = @email,
		@subject = 'НЦЭЛС',
		@body =@note;
	 
	  update [Notification] set IsSend='true' where Id=@Id
      fetch next from cur into @Id, @email, @note
END

close cur
deallocate cur
END

GO
/****** Object:  StoredProcedure [dbo].[WriteToFile]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WriteToFile]
@File VARCHAR (2000),
@Text VARCHAR (2000)

AS

BEGIN 

DECLARE @OLE INT
DECLARE @FileID INT

Execute sp_OACreate 'Scripting.FileSystemObject', @OLE OUT
Execute sp_OAMethod @OLE,'OpenTextFile',  @FileID OUT,	@File, 8,1
Execute sp_OAMethod @FileID, 'WriteLine', Null, @Text

Execute sp_OADestroy @FileID
Execute sp_OADestroy @OLE

END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_lims_ApplicationEAdmissions] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_lims_ApplicationEAdmissions] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_lims_ApplicationEAdmissions] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [TmcCode], [TmcNumber], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [Producer], [ProducerExpirationDate], [PartyNumber], [ShelfNumber], [CupboardNumber], [WarehouseNumber], [DateOfReceiving], [Note], [ExportDatetime], [ImportDatetime]) VALUES (changes.[Id], changes.[TmcCode], changes.[TmcNumber], changes.[QuntityVolume], changes.[QuntityVolumeStr], changes.[Unit], changes.[UnitCode], changes.[Producer], changes.[ProducerExpirationDate], changes.[PartyNumber], changes.[ShelfNumber], changes.[CupboardNumber], changes.[WarehouseNumber], changes.[DateOfReceiving], changes.[Note], changes.[ExportDatetime], changes.[ImportDatetime])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_lims_ApplicationEAdmissions] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [TmcCode] = changes.[TmcCode], [TmcNumber] = changes.[TmcNumber], [QuntityVolume] = changes.[QuntityVolume], [QuntityVolumeStr] = changes.[QuntityVolumeStr], [Unit] = changes.[Unit], [UnitCode] = changes.[UnitCode], [Producer] = changes.[Producer], [ProducerExpirationDate] = changes.[ProducerExpirationDate], [PartyNumber] = changes.[PartyNumber], [ShelfNumber] = changes.[ShelfNumber], [CupboardNumber] = changes.[CupboardNumber], [WarehouseNumber] = changes.[WarehouseNumber], [DateOfReceiving] = changes.[DateOfReceiving], [Note] = changes.[Note], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_lims_ApplicationEAdmissions] FROM [I1c_lims_ApplicationEAdmissions] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Decimal(18,6),
	@P_5 NVarChar(450),
	@P_6 NVarChar(450),
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(450),
	@P_9 Date,
	@P_10 NVarChar(450),
	@P_11 NVarChar(450),
	@P_12 NVarChar(450),
	@P_13 UniqueIdentifier,
	@P_14 Date,
	@P_15 NVarChar(max),
	@P_16 DateTime,
	@P_17 DateTime,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_lims_ApplicationEAdmissions]([Id], [TmcCode], [TmcNumber], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [Producer], [ProducerExpirationDate], [PartyNumber], [ShelfNumber], [CupboardNumber], [WarehouseNumber], [DateOfReceiving], [Note], [ExportDatetime], [ImportDatetime]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[Producer], [base].[ProducerExpirationDate], [base].[PartyNumber], [base].[ShelfNumber], [base].[CupboardNumber], [base].[WarehouseNumber], [base].[DateOfReceiving], [base].[Note], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_lims_ApplicationEAdmissions] [base] right join [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Decimal(18,6),
	@P_5 NVarChar(450),
	@P_6 NVarChar(450),
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(450),
	@P_9 Date,
	@P_10 NVarChar(450),
	@P_11 NVarChar(450),
	@P_12 NVarChar(450),
	@P_13 UniqueIdentifier,
	@P_14 Date,
	@P_15 NVarChar(max),
	@P_16 DateTime,
	@P_17 DateTime,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_lims_ApplicationEAdmissions] SET [TmcCode] = @P_2, [TmcNumber] = @P_3, [QuntityVolume] = @P_4, [QuntityVolumeStr] = @P_5, [Unit] = @P_6, [UnitCode] = @P_7, [Producer] = @P_8, [ProducerExpirationDate] = @P_9, [PartyNumber] = @P_10, [ShelfNumber] = @P_11, [CupboardNumber] = @P_12, [WarehouseNumber] = @P_13, [DateOfReceiving] = @P_14, [Note] = @P_15, [ExportDatetime] = @P_16, [ImportDatetime] = @P_17 FROM [I1c_lims_ApplicationEAdmissions] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEAdmissions_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_lims_ApplicationEExploitation] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_lims_ApplicationEExploitation] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_lims_ApplicationEExploitation] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [TmcCode], [TmcNumber], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C], [OrganizationId], [OrganizationName], [DepartmentId], [DepartmentName], [OwnerEmployeeId], [OwnerEmployeeFio], [ExploitatioinDatetime], [Description], [Reason], [ExportDatetime], [ImportDatetime], [ExpertiseApplicationId], [ExpertiseApplicationNumber]) VALUES (changes.[Id], changes.[TmcCode], changes.[TmcNumber], changes.[QuntityVolume], changes.[QuntityVolumeStr], changes.[Unit], changes.[UnitCode], changes.[PowerOfAttorneyId_1C], changes.[PowerOfAttorneyNumber_1C], changes.[OrganizationId], changes.[OrganizationName], changes.[DepartmentId], changes.[DepartmentName], changes.[OwnerEmployeeId], changes.[OwnerEmployeeFio], changes.[ExploitatioinDatetime], changes.[Description], changes.[Reason], changes.[ExportDatetime], changes.[ImportDatetime], changes.[ExpertiseApplicationId], changes.[ExpertiseApplicationNumber])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_lims_ApplicationEExploitation] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [TmcCode] = changes.[TmcCode], [TmcNumber] = changes.[TmcNumber], [QuntityVolume] = changes.[QuntityVolume], [QuntityVolumeStr] = changes.[QuntityVolumeStr], [Unit] = changes.[Unit], [UnitCode] = changes.[UnitCode], [PowerOfAttorneyId_1C] = changes.[PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C] = changes.[PowerOfAttorneyNumber_1C], [OrganizationId] = changes.[OrganizationId], [OrganizationName] = changes.[OrganizationName], [DepartmentId] = changes.[DepartmentId], [DepartmentName] = changes.[DepartmentName], [OwnerEmployeeId] = changes.[OwnerEmployeeId], [OwnerEmployeeFio] = changes.[OwnerEmployeeFio], [ExploitatioinDatetime] = changes.[ExploitatioinDatetime], [Description] = changes.[Description], [Reason] = changes.[Reason], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime], [ExpertiseApplicationId] = changes.[ExpertiseApplicationId], [ExpertiseApplicationNumber] = changes.[ExpertiseApplicationNumber]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_lims_ApplicationEExploitation] FROM [I1c_lims_ApplicationEExploitation] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Decimal(18,6),
	@P_5 NVarChar(450),
	@P_6 NVarChar(450),
	@P_7 UniqueIdentifier,
	@P_8 UniqueIdentifier,
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(4000),
	@P_12 UniqueIdentifier,
	@P_13 NVarChar(4000),
	@P_14 UniqueIdentifier,
	@P_15 NVarChar(450),
	@P_16 DateTime,
	@P_17 NVarChar(max),
	@P_18 NVarChar(max),
	@P_19 DateTime,
	@P_20 DateTime,
	@P_21 UniqueIdentifier,
	@P_22 NVarChar(450),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_lims_ApplicationEExploitation]([Id], [TmcCode], [TmcNumber], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C], [OrganizationId], [OrganizationName], [DepartmentId], [DepartmentName], [OwnerEmployeeId], [OwnerEmployeeFio], [ExploitatioinDatetime], [Description], [Reason], [ExportDatetime], [ImportDatetime], [ExpertiseApplicationId], [ExpertiseApplicationNumber]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20, @P_21, @P_22);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[PowerOfAttorneyId_1C], [base].[PowerOfAttorneyNumber_1C], [base].[OrganizationId], [base].[OrganizationName], [base].[DepartmentId], [base].[DepartmentName], [base].[OwnerEmployeeId], [base].[OwnerEmployeeFio], [base].[ExploitatioinDatetime], [base].[Description], [base].[Reason], [base].[ExportDatetime], [base].[ImportDatetime], [base].[ExpertiseApplicationId], [base].[ExpertiseApplicationNumber], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_lims_ApplicationEExploitation] [base] right join [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Decimal(18,6),
	@P_5 NVarChar(450),
	@P_6 NVarChar(450),
	@P_7 UniqueIdentifier,
	@P_8 UniqueIdentifier,
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(4000),
	@P_12 UniqueIdentifier,
	@P_13 NVarChar(4000),
	@P_14 UniqueIdentifier,
	@P_15 NVarChar(450),
	@P_16 DateTime,
	@P_17 NVarChar(max),
	@P_18 NVarChar(max),
	@P_19 DateTime,
	@P_20 DateTime,
	@P_21 UniqueIdentifier,
	@P_22 NVarChar(450),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_lims_ApplicationEExploitation] SET [TmcCode] = @P_2, [TmcNumber] = @P_3, [QuntityVolume] = @P_4, [QuntityVolumeStr] = @P_5, [Unit] = @P_6, [UnitCode] = @P_7, [PowerOfAttorneyId_1C] = @P_8, [PowerOfAttorneyNumber_1C] = @P_9, [OrganizationId] = @P_10, [OrganizationName] = @P_11, [DepartmentId] = @P_12, [DepartmentName] = @P_13, [OwnerEmployeeId] = @P_14, [OwnerEmployeeFio] = @P_15, [ExploitatioinDatetime] = @P_16, [Description] = @P_17, [Reason] = @P_18, [ExportDatetime] = @P_19, [ImportDatetime] = @P_20, [ExpertiseApplicationId] = @P_21, [ExpertiseApplicationNumber] = @P_22 FROM [I1c_lims_ApplicationEExploitation] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationEExploitation_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_lims_ApplicationElements] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_lims_ApplicationElements] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_lims_ApplicationElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [TmcCode], [TmcNumber], [Name], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [Kind], [KindCode], [Paking], [PakingCode], [ExportDatetime], [ImportDatetime], [refApplication]) VALUES (changes.[Id], changes.[TmcCode], changes.[TmcNumber], changes.[Name], changes.[QuntityVolume], changes.[QuntityVolumeStr], changes.[Unit], changes.[UnitCode], changes.[Kind], changes.[KindCode], changes.[Paking], changes.[PakingCode], changes.[ExportDatetime], changes.[ImportDatetime], changes.[refApplication])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_lims_ApplicationElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [TmcCode] = changes.[TmcCode], [TmcNumber] = changes.[TmcNumber], [Name] = changes.[Name], [QuntityVolume] = changes.[QuntityVolume], [QuntityVolumeStr] = changes.[QuntityVolumeStr], [Unit] = changes.[Unit], [UnitCode] = changes.[UnitCode], [Kind] = changes.[Kind], [KindCode] = changes.[KindCode], [Paking] = changes.[Paking], [PakingCode] = changes.[PakingCode], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime], [refApplication] = changes.[refApplication]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_lims_ApplicationElements] FROM [I1c_lims_ApplicationElements] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 NVarChar(450),
	@P_5 Decimal(18,6),
	@P_6 NVarChar(450),
	@P_7 NVarChar(450),
	@P_8 UniqueIdentifier,
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(450),
	@P_12 UniqueIdentifier,
	@P_13 DateTime,
	@P_14 DateTime,
	@P_15 UniqueIdentifier,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_lims_ApplicationElements]([Id], [TmcCode], [TmcNumber], [Name], [QuntityVolume], [QuntityVolumeStr], [Unit], [UnitCode], [Kind], [KindCode], [Paking], [PakingCode], [ExportDatetime], [ImportDatetime], [refApplication]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[TmcCode], [base].[TmcNumber], [base].[Name], [base].[QuntityVolume], [base].[QuntityVolumeStr], [base].[Unit], [base].[UnitCode], [base].[Kind], [base].[KindCode], [base].[Paking], [base].[PakingCode], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refApplication], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_lims_ApplicationElements] [base] right join [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 NVarChar(450),
	@P_5 Decimal(18,6),
	@P_6 NVarChar(450),
	@P_7 NVarChar(450),
	@P_8 UniqueIdentifier,
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(450),
	@P_12 UniqueIdentifier,
	@P_13 DateTime,
	@P_14 DateTime,
	@P_15 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_lims_ApplicationElements] SET [TmcCode] = @P_2, [TmcNumber] = @P_3, [Name] = @P_4, [QuntityVolume] = @P_5, [QuntityVolumeStr] = @P_6, [Unit] = @P_7, [UnitCode] = @P_8, [Kind] = @P_9, [KindCode] = @P_10, [Paking] = @P_11, [PakingCode] = @P_12, [ExportDatetime] = @P_13, [ImportDatetime] = @P_14, [refApplication] = @P_15 FROM [I1c_lims_ApplicationElements] [base] JOIN [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_ApplicationElements_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_ApplicationElements_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_ApplicationElements_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_lims_Applications] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_lims_Applications] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_lims_Applications] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [Number], [ContractId], [ContractNumber], [ContractDate], [LastDeliveryDate], [ProviderId], [Provider], [ProviderBin], [FrpersonId], [FrpersonFio], [OrganizationId], [FullDelivery], [PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C], [PowerOfAttorneyDatetime_1C], [FilePath], [Note], [CreateDatetime], [ExportDatetime], [ImportDatetime]) VALUES (changes.[Id], changes.[Number], changes.[ContractId], changes.[ContractNumber], changes.[ContractDate], changes.[LastDeliveryDate], changes.[ProviderId], changes.[Provider], changes.[ProviderBin], changes.[FrpersonId], changes.[FrpersonFio], changes.[OrganizationId], changes.[FullDelivery], changes.[PowerOfAttorneyId_1C], changes.[PowerOfAttorneyNumber_1C], changes.[PowerOfAttorneyDatetime_1C], changes.[FilePath], changes.[Note], changes.[CreateDatetime], changes.[ExportDatetime], changes.[ImportDatetime])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_lims_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_lims_Applications] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [Number] = changes.[Number], [ContractId] = changes.[ContractId], [ContractNumber] = changes.[ContractNumber], [ContractDate] = changes.[ContractDate], [LastDeliveryDate] = changes.[LastDeliveryDate], [ProviderId] = changes.[ProviderId], [Provider] = changes.[Provider], [ProviderBin] = changes.[ProviderBin], [FrpersonId] = changes.[FrpersonId], [FrpersonFio] = changes.[FrpersonFio], [OrganizationId] = changes.[OrganizationId], [FullDelivery] = changes.[FullDelivery], [PowerOfAttorneyId_1C] = changes.[PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C] = changes.[PowerOfAttorneyNumber_1C], [PowerOfAttorneyDatetime_1C] = changes.[PowerOfAttorneyDatetime_1C], [FilePath] = changes.[FilePath], [Note] = changes.[Note], [CreateDatetime] = changes.[CreateDatetime], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_lims_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_lims_Applications] FROM [I1c_lims_Applications] [base] JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_lims_Applications_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 UniqueIdentifier,
	@P_4 NVarChar(450),
	@P_5 Date,
	@P_6 Date,
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(450),
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(450),
	@P_12 UniqueIdentifier,
	@P_13 Bit,
	@P_14 UniqueIdentifier,
	@P_15 NVarChar(450),
	@P_16 DateTime,
	@P_17 NVarChar(max),
	@P_18 NVarChar(max),
	@P_19 DateTime,
	@P_20 DateTime,
	@P_21 DateTime,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_lims_Applications_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_lims_Applications]([Id], [Number], [ContractId], [ContractNumber], [ContractDate], [LastDeliveryDate], [ProviderId], [Provider], [ProviderBin], [FrpersonId], [FrpersonFio], [OrganizationId], [FullDelivery], [PowerOfAttorneyId_1C], [PowerOfAttorneyNumber_1C], [PowerOfAttorneyDatetime_1C], [FilePath], [Note], [CreateDatetime], [ExportDatetime], [ImportDatetime]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20, @P_21);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_lims_Applications_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_lims_Applications_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[Number], [base].[ContractId], [base].[ContractNumber], [base].[ContractDate], [base].[LastDeliveryDate], [base].[ProviderId], [base].[Provider], [base].[ProviderBin], [base].[FrpersonId], [base].[FrpersonFio], [base].[OrganizationId], [base].[FullDelivery], [base].[PowerOfAttorneyId_1C], [base].[PowerOfAttorneyNumber_1C], [base].[PowerOfAttorneyDatetime_1C], [base].[FilePath], [base].[Note], [base].[CreateDatetime], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_lims_Applications] [base] right join [DbSync].[sync_fr_I1c_lims_Applications_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 UniqueIdentifier,
	@P_4 NVarChar(450),
	@P_5 Date,
	@P_6 Date,
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(450),
	@P_9 NVarChar(450),
	@P_10 UniqueIdentifier,
	@P_11 NVarChar(450),
	@P_12 UniqueIdentifier,
	@P_13 Bit,
	@P_14 UniqueIdentifier,
	@P_15 NVarChar(450),
	@P_16 DateTime,
	@P_17 NVarChar(max),
	@P_18 NVarChar(max),
	@P_19 DateTime,
	@P_20 DateTime,
	@P_21 DateTime,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_lims_Applications] SET [Number] = @P_2, [ContractId] = @P_3, [ContractNumber] = @P_4, [ContractDate] = @P_5, [LastDeliveryDate] = @P_6, [ProviderId] = @P_7, [Provider] = @P_8, [ProviderBin] = @P_9, [FrpersonId] = @P_10, [FrpersonFio] = @P_11, [OrganizationId] = @P_12, [FullDelivery] = @P_13, [PowerOfAttorneyId_1C] = @P_14, [PowerOfAttorneyNumber_1C] = @P_15, [PowerOfAttorneyDatetime_1C] = @P_16, [FilePath] = @P_17, [Note] = @P_18, [CreateDatetime] = @P_19, [ExportDatetime] = @P_20, [ImportDatetime] = @P_21 FROM [I1c_lims_Applications] [base] JOIN [DbSync].[sync_fr_I1c_lims_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_lims_Applications_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_lims_Applications_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_lims_Applications_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_Applications_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_lims_Applications_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_primary_ApplicationElements] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_primary_ApplicationElements] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_primary_ApplicationElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [Name], [DosageForm], [DosageCode], [Packing], [PackingCode], [Type], [TypeCode], [Quantity], [Price], [Total], [Producer], [ProducerCode], [ProducerCountry], [ProducerCountryCode], [ProducerType], [ProducerTypeCode], [Representative], [RepresentativeCode], [ContractNumber], [ContractBeginDate], [ContractEndDate], [RepresentativeAddress], [RepresentativePhone], [Payer], [PayerAddress], [PayerBank], [PayerAccount], [PayerBIK], [PayerRNN], [PayerBIN], [PayerIIN], [PayerСurrency], [PayerСurrencyCode], [ExportDatetime], [ImportDatetime], [refPrimaryApplication]) VALUES (changes.[Id], changes.[Name], changes.[DosageForm], changes.[DosageCode], changes.[Packing], changes.[PackingCode], changes.[Type], changes.[TypeCode], changes.[Quantity], changes.[Price], changes.[Total], changes.[Producer], changes.[ProducerCode], changes.[ProducerCountry], changes.[ProducerCountryCode], changes.[ProducerType], changes.[ProducerTypeCode], changes.[Representative], changes.[RepresentativeCode], changes.[ContractNumber], changes.[ContractBeginDate], changes.[ContractEndDate], changes.[RepresentativeAddress], changes.[RepresentativePhone], changes.[Payer], changes.[PayerAddress], changes.[PayerBank], changes.[PayerAccount], changes.[PayerBIK], changes.[PayerRNN], changes.[PayerBIN], changes.[PayerIIN], changes.[PayerСurrency], changes.[PayerСurrencyCode], changes.[ExportDatetime], changes.[ImportDatetime], changes.[refPrimaryApplication])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_ApplicationElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_primary_ApplicationElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [Name] = changes.[Name], [DosageForm] = changes.[DosageForm], [DosageCode] = changes.[DosageCode], [Packing] = changes.[Packing], [PackingCode] = changes.[PackingCode], [Type] = changes.[Type], [TypeCode] = changes.[TypeCode], [Quantity] = changes.[Quantity], [Price] = changes.[Price], [Total] = changes.[Total], [Producer] = changes.[Producer], [ProducerCode] = changes.[ProducerCode], [ProducerCountry] = changes.[ProducerCountry], [ProducerCountryCode] = changes.[ProducerCountryCode], [ProducerType] = changes.[ProducerType], [ProducerTypeCode] = changes.[ProducerTypeCode], [Representative] = changes.[Representative], [RepresentativeCode] = changes.[RepresentativeCode], [ContractNumber] = changes.[ContractNumber], [ContractBeginDate] = changes.[ContractBeginDate], [ContractEndDate] = changes.[ContractEndDate], [RepresentativeAddress] = changes.[RepresentativeAddress], [RepresentativePhone] = changes.[RepresentativePhone], [Payer] = changes.[Payer], [PayerAddress] = changes.[PayerAddress], [PayerBank] = changes.[PayerBank], [PayerAccount] = changes.[PayerAccount], [PayerBIK] = changes.[PayerBIK], [PayerRNN] = changes.[PayerRNN], [PayerBIN] = changes.[PayerBIN], [PayerIIN] = changes.[PayerIIN], [PayerСurrency] = changes.[PayerСurrency], [PayerСurrencyCode] = changes.[PayerСurrencyCode], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime], [refPrimaryApplication] = changes.[refPrimaryApplication]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_primary_ApplicationElements] FROM [I1c_primary_ApplicationElements] [base] JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_insert]
	@P_1 UniqueIdentifier,
	@P_2 NVarChar(4000),
	@P_3 NVarChar(4000),
	@P_4 UniqueIdentifier,
	@P_5 NVarChar(4000),
	@P_6 UniqueIdentifier,
	@P_7 NVarChar(4000),
	@P_8 UniqueIdentifier,
	@P_9 Decimal(18,2),
	@P_10 Decimal(18,2),
	@P_11 Decimal(18,2),
	@P_12 NVarChar(4000),
	@P_13 UniqueIdentifier,
	@P_14 NVarChar(4000),
	@P_15 UniqueIdentifier,
	@P_16 NVarChar(4000),
	@P_17 UniqueIdentifier,
	@P_18 NVarChar(4000),
	@P_19 UniqueIdentifier,
	@P_20 NVarChar(4000),
	@P_21 DateTime,
	@P_22 DateTime,
	@P_23 NVarChar(4000),
	@P_24 NVarChar(4000),
	@P_25 NVarChar(4000),
	@P_26 NVarChar(4000),
	@P_27 NVarChar(4000),
	@P_28 NVarChar(4000),
	@P_29 NVarChar(4000),
	@P_30 NVarChar(4000),
	@P_31 NVarChar(4000),
	@P_32 NVarChar(4000),
	@P_33 NVarChar(4000),
	@P_34 UniqueIdentifier,
	@P_35 DateTime,
	@P_36 DateTime,
	@P_37 UniqueIdentifier,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_primary_ApplicationElements]([Id], [Name], [DosageForm], [DosageCode], [Packing], [PackingCode], [Type], [TypeCode], [Quantity], [Price], [Total], [Producer], [ProducerCode], [ProducerCountry], [ProducerCountryCode], [ProducerType], [ProducerTypeCode], [Representative], [RepresentativeCode], [ContractNumber], [ContractBeginDate], [ContractEndDate], [RepresentativeAddress], [RepresentativePhone], [Payer], [PayerAddress], [PayerBank], [PayerAccount], [PayerBIK], [PayerRNN], [PayerBIN], [PayerIIN], [PayerСurrency], [PayerСurrencyCode], [ExportDatetime], [ImportDatetime], [refPrimaryApplication]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20, @P_21, @P_22, @P_23, @P_24, @P_25, @P_26, @P_27, @P_28, @P_29, @P_30, @P_31, @P_32, @P_33, @P_34, @P_35, @P_36, @P_37);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[Name], [base].[DosageForm], [base].[DosageCode], [base].[Packing], [base].[PackingCode], [base].[Type], [base].[TypeCode], [base].[Quantity], [base].[Price], [base].[Total], [base].[Producer], [base].[ProducerCode], [base].[ProducerCountry], [base].[ProducerCountryCode], [base].[ProducerType], [base].[ProducerTypeCode], [base].[Representative], [base].[RepresentativeCode], [base].[ContractNumber], [base].[ContractBeginDate], [base].[ContractEndDate], [base].[RepresentativeAddress], [base].[RepresentativePhone], [base].[Payer], [base].[PayerAddress], [base].[PayerBank], [base].[PayerAccount], [base].[PayerBIK], [base].[PayerRNN], [base].[PayerBIN], [base].[PayerIIN], [base].[PayerСurrency], [base].[PayerСurrencyCode], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refPrimaryApplication], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_primary_ApplicationElements] [base] right join [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_update]
	@P_1 UniqueIdentifier,
	@P_2 NVarChar(4000),
	@P_3 NVarChar(4000),
	@P_4 UniqueIdentifier,
	@P_5 NVarChar(4000),
	@P_6 UniqueIdentifier,
	@P_7 NVarChar(4000),
	@P_8 UniqueIdentifier,
	@P_9 Decimal(18,2),
	@P_10 Decimal(18,2),
	@P_11 Decimal(18,2),
	@P_12 NVarChar(4000),
	@P_13 UniqueIdentifier,
	@P_14 NVarChar(4000),
	@P_15 UniqueIdentifier,
	@P_16 NVarChar(4000),
	@P_17 UniqueIdentifier,
	@P_18 NVarChar(4000),
	@P_19 UniqueIdentifier,
	@P_20 NVarChar(4000),
	@P_21 DateTime,
	@P_22 DateTime,
	@P_23 NVarChar(4000),
	@P_24 NVarChar(4000),
	@P_25 NVarChar(4000),
	@P_26 NVarChar(4000),
	@P_27 NVarChar(4000),
	@P_28 NVarChar(4000),
	@P_29 NVarChar(4000),
	@P_30 NVarChar(4000),
	@P_31 NVarChar(4000),
	@P_32 NVarChar(4000),
	@P_33 NVarChar(4000),
	@P_34 UniqueIdentifier,
	@P_35 DateTime,
	@P_36 DateTime,
	@P_37 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_primary_ApplicationElements] SET [Name] = @P_2, [DosageForm] = @P_3, [DosageCode] = @P_4, [Packing] = @P_5, [PackingCode] = @P_6, [Type] = @P_7, [TypeCode] = @P_8, [Quantity] = @P_9, [Price] = @P_10, [Total] = @P_11, [Producer] = @P_12, [ProducerCode] = @P_13, [ProducerCountry] = @P_14, [ProducerCountryCode] = @P_15, [ProducerType] = @P_16, [ProducerTypeCode] = @P_17, [Representative] = @P_18, [RepresentativeCode] = @P_19, [ContractNumber] = @P_20, [ContractBeginDate] = @P_21, [ContractEndDate] = @P_22, [RepresentativeAddress] = @P_23, [RepresentativePhone] = @P_24, [Payer] = @P_25, [PayerAddress] = @P_26, [PayerBank] = @P_27, [PayerAccount] = @P_28, [PayerBIK] = @P_29, [PayerRNN] = @P_30, [PayerBIN] = @P_31, [PayerIIN] = @P_32, [PayerСurrency] = @P_33, [PayerСurrencyCode] = @P_34, [ExportDatetime] = @P_35, [ImportDatetime] = @P_36, [refPrimaryApplication] = @P_37 FROM [I1c_primary_ApplicationElements] [base] JOIN [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_ApplicationElements_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_ApplicationElements_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_primary_ApplicationElements_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_primary_Applications] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_primary_Applications] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_primary_Applications] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [ApplicationId], [Number], [Quantity], [Total], [Note], [ExportDatetime], [ImportDatetime]) VALUES (changes.[Id], changes.[ApplicationId], changes.[Number], changes.[Quantity], changes.[Total], changes.[Note], changes.[ExportDatetime], changes.[ImportDatetime])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_primary_Applications_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_primary_Applications] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [ApplicationId] = changes.[ApplicationId], [Number] = changes.[Number], [Quantity] = changes.[Quantity], [Total] = changes.[Total], [Note] = changes.[Note], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_primary_Applications_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_primary_Applications] FROM [I1c_primary_Applications] [base] JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_primary_Applications_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Int,
	@P_5 Decimal(18,2),
	@P_6 NVarChar(max),
	@P_7 DateTime,
	@P_8 DateTime,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_primary_Applications_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_primary_Applications]([Id], [ApplicationId], [Number], [Quantity], [Total], [Note], [ExportDatetime], [ImportDatetime]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_primary_Applications_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_primary_Applications_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[ApplicationId], [base].[Number], [base].[Quantity], [base].[Total], [base].[Note], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_primary_Applications] [base] right join [DbSync].[sync_fr_I1c_primary_Applications_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(450),
	@P_4 Int,
	@P_5 Decimal(18,2),
	@P_6 NVarChar(max),
	@P_7 DateTime,
	@P_8 DateTime,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_primary_Applications] SET [ApplicationId] = @P_2, [Number] = @P_3, [Quantity] = @P_4, [Total] = @P_5, [Note] = @P_6, [ExportDatetime] = @P_7, [ImportDatetime] = @P_8 FROM [I1c_primary_Applications] [base] JOIN [DbSync].[sync_fr_I1c_primary_Applications_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_primary_Applications_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_primary_Applications_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_primary_Applications_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_primary_Applications_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_primary_Applications_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_trl_DirectionElements] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_trl_DirectionElements] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_trl_DirectionElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [Code], [Number], [Name], [Quantity], [Price], [Total], [ExportDatetime], [ImportDatetime], [refDirection]) VALUES (changes.[Id], changes.[Code], changes.[Number], changes.[Name], changes.[Quantity], changes.[Price], changes.[Total], changes.[ExportDatetime], changes.[ImportDatetime], changes.[refDirection])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionElements_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_trl_DirectionElements] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [Code] = changes.[Code], [Number] = changes.[Number], [Name] = changes.[Name], [Quantity] = changes.[Quantity], [Price] = changes.[Price], [Total] = changes.[Total], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime], [refDirection] = changes.[refDirection]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_trl_DirectionElements] FROM [I1c_trl_DirectionElements] [base] JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(4000),
	@P_4 NVarChar(512),
	@P_5 Int,
	@P_6 Decimal(18,2),
	@P_7 Decimal(18,2),
	@P_8 DateTime,
	@P_9 DateTime,
	@P_10 UniqueIdentifier,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_trl_DirectionElements]([Id], [Code], [Number], [Name], [Quantity], [Price], [Total], [ExportDatetime], [ImportDatetime], [refDirection]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[Code], [base].[Number], [base].[Name], [base].[Quantity], [base].[Price], [base].[Total], [base].[ExportDatetime], [base].[ImportDatetime], [base].[refDirection], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_trl_DirectionElements] [base] right join [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(4000),
	@P_4 NVarChar(512),
	@P_5 Int,
	@P_6 Decimal(18,2),
	@P_7 Decimal(18,2),
	@P_8 DateTime,
	@P_9 DateTime,
	@P_10 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_trl_DirectionElements] SET [Code] = @P_2, [Number] = @P_3, [Name] = @P_4, [Quantity] = @P_5, [Price] = @P_6, [Total] = @P_7, [ExportDatetime] = @P_8, [ImportDatetime] = @P_9, [refDirection] = @P_10 FROM [I1c_trl_DirectionElements] [base] JOIN [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionElements_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionElements_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_trl_DirectionElements_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkdelete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkdelete]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionsToPay_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));
DELETE [I1c_trl_DirectionsToPay] 
OUTPUT DELETED.[Id] INTO @changed FROM [I1c_trl_DirectionsToPay] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkinsert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkinsert]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionsToPay_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update/insert into the base table
MERGE [I1c_trl_DirectionsToPay] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] t ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = base.[Id]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([Id], [Code], [Number], [Producer], [ProducerCode], [Payer], [PayerCode], [Translator], [TraslatorCode], [Status], [StatusCode], [InvoiceCode_1C], [InvoiceNumber_1C], [InvoiceDatetime_1C], [ExportDatetime], [ImportDatetime]) VALUES (changes.[Id], changes.[Code], changes.[Number], changes.[Producer], changes.[ProducerCode], changes.[Payer], changes.[PayerCode], changes.[Translator], changes.[TraslatorCode], changes.[Status], changes.[StatusCode], changes.[InvoiceCode_1C], changes.[InvoiceNumber_1C], changes.[InvoiceDatetime_1C], changes.[ExportDatetime], changes.[ImportDatetime])
OUTPUT INSERTED.[Id] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) AS changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkupdate]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DbSync].[sync_fr_I1c_trl_DirectionsToPay_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] uniqueidentifier, PRIMARY KEY ([Id]));

-- update the base table
MERGE [I1c_trl_DirectionsToPay] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [Code] = changes.[Code], [Number] = changes.[Number], [Producer] = changes.[Producer], [ProducerCode] = changes.[ProducerCode], [Payer] = changes.[Payer], [PayerCode] = changes.[PayerCode], [Translator] = changes.[Translator], [TraslatorCode] = changes.[TraslatorCode], [Status] = changes.[Status], [StatusCode] = changes.[StatusCode], [InvoiceCode_1C] = changes.[InvoiceCode_1C], [InvoiceNumber_1C] = changes.[InvoiceNumber_1C], [InvoiceDatetime_1C] = changes.[InvoiceDatetime_1C], [ExportDatetime] = changes.[ExportDatetime], [ImportDatetime] = changes.[ImportDatetime]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_delete]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_delete]
	@P_1 UniqueIdentifier,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [I1c_trl_DirectionsToPay] FROM [I1c_trl_DirectionsToPay] [base] JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_deletemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_deletemetadata]
	@P_1 UniqueIdentifier,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] [side] WHERE [Id] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_insert]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_insert]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(4000),
	@P_4 NVarChar(4000),
	@P_5 UniqueIdentifier,
	@P_6 NVarChar(4000),
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(4000),
	@P_9 UniqueIdentifier,
	@P_10 NVarChar(4000),
	@P_11 UniqueIdentifier,
	@P_12 NVarChar(512),
	@P_13 NVarChar(512),
	@P_14 DateTime,
	@P_15 DateTime,
	@P_16 DateTime,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [I1c_trl_DirectionsToPay]([Id], [Code], [Number], [Producer], [ProducerCode], [Payer], [PayerCode], [Translator], [TraslatorCode], [Status], [StatusCode], [InvoiceCode_1C], [InvoiceNumber_1C], [InvoiceDatetime_1C], [ExportDatetime], [ImportDatetime]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16);  SET @sync_row_count = @@rowcount;  END 
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_insertmetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_insertmetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] ([Id], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [restore_timestamp], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, @@DBTS+1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, NULL, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_selectrow]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_selectrow]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[Code], [base].[Number], [base].[Producer], [base].[ProducerCode], [base].[Payer], [base].[PayerCode], [base].[Translator], [base].[TraslatorCode], [base].[Status], [base].[StatusCode], [base].[InvoiceCode_1C], [base].[InvoiceNumber_1C], [base].[InvoiceDatetime_1C], [base].[ExportDatetime], [base].[ImportDatetime], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [I1c_trl_DirectionsToPay] [base] right join [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_update]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_update]
	@P_1 UniqueIdentifier,
	@P_2 UniqueIdentifier,
	@P_3 NVarChar(4000),
	@P_4 NVarChar(4000),
	@P_5 UniqueIdentifier,
	@P_6 NVarChar(4000),
	@P_7 UniqueIdentifier,
	@P_8 NVarChar(4000),
	@P_9 UniqueIdentifier,
	@P_10 NVarChar(4000),
	@P_11 UniqueIdentifier,
	@P_12 NVarChar(512),
	@P_13 NVarChar(512),
	@P_14 DateTime,
	@P_15 DateTime,
	@P_16 DateTime,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [I1c_trl_DirectionsToPay] SET [Code] = @P_2, [Number] = @P_3, [Producer] = @P_4, [ProducerCode] = @P_5, [Payer] = @P_6, [PayerCode] = @P_7, [Translator] = @P_8, [TraslatorCode] = @P_9, [Status] = @P_10, [StatusCode] = @P_11, [InvoiceCode_1C] = @P_12, [InvoiceNumber_1C] = @P_13, [InvoiceDatetime_1C] = @P_14, [ExportDatetime] = @P_15, [ImportDatetime] = @P_16 FROM [I1c_trl_DirectionsToPay] [base] JOIN [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END

GO
/****** Object:  StoredProcedure [DbSync].[sync_fr_I1c_trl_DirectionsToPay_updatemetadata]    Script Date: 10.03.2017 2:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_updatemetadata]
	@P_1 UniqueIdentifier,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] WHERE ([Id] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = @@DBTS+1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN UPDATE [DbSync].[sync_fr_I1c_trl_DirectionsToPay_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [restore_timestamp] = NULL, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([Id] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END;SET @sync_row_count = @@ROWCOUNT;
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'QuntityVolume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт) строка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'QuntityVolumeStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'UnitCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'Producer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата окончания срока действия производителя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'ProducerExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ серии, партии, ГОСТ или LOT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'PartyNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ полки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'ShelfNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ шкафа/сейфа/холодильника' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'CupboardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ склада' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'WarehouseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата получения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'DateOfReceiving'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Примечание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу из ЛИМС' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEAdmissions', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'TmcCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'TmcNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'QuntityVolume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт) строка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'QuntityVolumeStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'UnitCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД доверенности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'PowerOfAttorneyId_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер доверенности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'PowerOfAttorneyNumber_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД организации использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование организации использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'OrganizationName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Департамента использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование департамента использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'DepartmentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД сотрудника использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'OwnerEmployeeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ФИО сотрудника использовашего ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'OwnerEmployeeFio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата списания' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'ExploitatioinDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Причина использования/списания (справочник)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'Reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу из ЛИМС' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД заявки на экпертизу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'ExpertiseApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер заявки на экпертизу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationEExploitation', @level2type=N'COLUMN',@level2name=N'ExpertiseApplicationNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код ТМЦ ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'TmcCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'TmcNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'QuntityVolume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество/объем (факт) строка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'QuntityVolumeStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД ЕИ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'UnitCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Вид ТМЦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Kind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Вид ТМЦ код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'KindCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фасовка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Paking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фасовка код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PakingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу из ЛИМС' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на Заявку' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_ApplicationElements', @level2type=N'COLUMN',@level2name=N'refApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД договора' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ContractId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер договора' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ContractNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата договора' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ContractDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Последний срок поставки по договору' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'LastDeliveryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код (ид) поставщика товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование поставщика товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'Provider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'БИН поставщика' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ProviderBin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД МОЛ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'FrpersonId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ФИО МОЛ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'FrpersonFio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД организации' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'OrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Полная поставка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'FullDelivery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер доверенности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'PowerOfAttorneyId_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер доверенности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'PowerOfAttorneyNumber_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата создания доверенности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'PowerOfAttorneyDatetime_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Путь к файлу заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Примечание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата создания заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'CreateDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу из ЛИМС' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_lims_Applications', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Торговое название' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Лекарственная форма' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'DosageForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Лекарственная форма код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'DosageCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Упаковка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Packing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Упаковка код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PackingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'TypeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Кол-во' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Прейскурант' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сумма' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Producer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ProducerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Страна производителя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ProducerCountry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Страна производителя код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ProducerCountryCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип (Производитель)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ProducerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель Тип код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ProducerTypeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Представитель ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Representative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Представитель  код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'RepresentativeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2.	№ договора' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ContractNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3.	Дата начала дог' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ContractBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4.	Дата окончания дог' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ContractEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'5.	Адрес' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'RepresentativeAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6.	Телефон' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'RepresentativePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Плательщик Название' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'Payer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2.	Адрес Плательщик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3.	Банк Плательщик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerBank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4.	Расчетный счет Плательщик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerAccount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'5.	Бик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerBIK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6.	Рнн' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerRNN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7.	Бин' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerBIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'8.	Инн' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerIIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9.	Валюта' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerСurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9.	Валюта код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'PayerСurrencyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу из ЛИМС' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на Заявка ПЭ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_ApplicationElements', @level2type=N'COLUMN',@level2name=N'refPrimaryApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид заявки на оплату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Кол-во оплачиваемых услуг' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сумма ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Примечание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_primary_Applications', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Записи о переводе' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'номер 1с' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Кол-во страниц' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена за страницу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Итого за перевод' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1C' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на направление на перевод' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionElements', @level2type=N'COLUMN',@level2name=N'refDirection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Заявки на перевод' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№ заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Producer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Производитель код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'ProducerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Плательщик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Payer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Плательщика' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'PayerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Переводчик' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Translator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Переводчика' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'TraslatorCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ИД Статуса' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'StatusCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код подтвердения на оплату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'InvoiceCode_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код подтвердения на оплату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'InvoiceNumber_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Код подтвердения на оплату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'InvoiceDatetime_1C'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время выгрузки в промежуточную базу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'ExportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время загрузки в 1C' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'I1c_trl_DirectionsToPay', @level2type=N'COLUMN',@level2name=N'ImportDatetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Операция (формирование, согласование и т.д.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'Operation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер этапа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'Stage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Состояние' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Исполнитель ИД' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'ExecutorEmployeeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Исполнитель ФИО' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'ExecutorEmployeeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Автор ИД' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'CreateEmployeeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Автор ФИО' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'CreateEmployeeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'дата создания' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата удаления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TmcReportTasks', @level2type=N'COLUMN',@level2name=N'DeleteDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[18] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "em"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 95
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AdministrativeDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AdministrativeDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[2] 2[38] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Documents"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 284
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 5460
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 13
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArchivView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArchivView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sr_mt"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sr_mt_c"
            Begin Extent = 
               Top = 6
               Left = 265
               Bottom = 136
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CategoriesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CategoriesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[18] 2[42] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "em"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 95
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1350
         Alias = 1230
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CitizenDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CitizenDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dmt"
            Begin Extent = 
               Top = 6
               Left = 277
               Bottom = 136
               Right = 463
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dmn"
            Begin Extent = 
               Top = 6
               Left = 501
               Bottom = 136
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dcn"
            Begin Extent = 
               Top = 6
               Left = 725
               Bottom = 136
               Right = 911
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dmg"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dmo"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompositionsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompositionsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompositionsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rp"
            Begin Extent = 
               Top = 6
               Left = 315
               Bottom = 136
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 596
               Bottom = 136
               Right = 830
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mo"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ho"
            Begin Extent = 
               Top = 138
               Left = 306
               Bottom = 268
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "po"
            Begin Extent = 
               Top = 138
               Left = 574
               Bottom = 268
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ao"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
         Begin Table = "d1"
            Begin Extent = 
               Top = 270
               Left = 306
               Bottom = 400
               Right = 492
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 270
               Left = 530
               Bottom = 400
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d4"
            Begin Extent = 
               Top = 402
               Left = 262
               Bottom = 532
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d5"
            Begin Extent = 
               Top = 402
               Left = 486
               Bottom = 532
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mo"
            Begin Extent = 
               Top = 6
               Left = 315
               Bottom = 136
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ho"
            Begin Extent = 
               Top = 138
               Left = 306
               Bottom = 268
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "po"
            Begin Extent = 
               Top = 138
               Left = 574
               Bottom = 268
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 583
               Bottom = 136
               Right = 769
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContractsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[35] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "em"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 95
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CorrespondenceDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CorrespondenceDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "em"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 6
               Left = 745
               Bottom = 95
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'IncomingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'IncomingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'IncomingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "o"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dc"
            Begin Extent = 
               Top = 6
               Left = 306
               Bottom = 136
               Right = 492
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dm"
            Begin Extent = 
               Top = 6
               Left = 530
               Bottom = 136
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dopf"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dbn"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dpt"
            Begin Extent = 
               Top = 138
               Left = 486
               Bottom = 268
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 37
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrganizationsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrganizationsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrganizationsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "od"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lod"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 119
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "icd"
            Begin Extent = 
               Top = 6
               Left = 479
               Bottom = 136
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrphanDrugsIcdDeseasesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrphanDrugsIcdDeseasesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[11] 2[28] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eo"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 113
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OutgoingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OutgoingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OutgoingDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 6
               Left = 304
               Bottom = 136
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 6
               Left = 528
               Bottom = 136
               Right = 714
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d4"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Tab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PackagesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'le = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PackagesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PackagesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "pp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mo"
            Begin Extent = 
               Top = 6
               Left = 315
               Bottom = 136
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "po"
            Begin Extent = 
               Top = 6
               Left = 583
               Bottom = 136
               Right = 813
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 138
               Left = 486
               Bottom = 268
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d_t"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
         Begin Table = "d_s"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "doc"
            Begin Extent = 
               Top = 270
               Left = 486
               Bottom = 400
               Right = 761
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rl"
            Begin Extent = 
               Top = 6
               Left = 851
               Bottom = 136
               Right = 1035
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "pp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 315
               Bottom = 136
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mo"
            Begin Extent = 
               Top = 6
               Left = 587
               Bottom = 136
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ho"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "po"
            Begin Extent = 
               Top = 138
               Left = 306
               Bottom = 268
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 138
               Left = 574
               Bottom = 268
               Right = 760
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
         Begin Table = "d3"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d4"
            Begin Extent = 
               Top = 270
               Left = 486
               Bottom = 400
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PriceProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 136
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d4"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d5"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d6"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PricesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
         Begin Table = "d7"
            Begin Extent = 
               Top = 402
               Left = 262
               Bottom = 532
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d8"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d9"
            Begin Extent = 
               Top = 534
               Left = 262
               Bottom = 664
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d10"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 796
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sr_mt_p"
            Begin Extent = 
               Top = 6
               Left = 562
               Bottom = 136
               Right = 750
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PricesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PricesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[21] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "es"
            Begin Extent = 
               Top = 6
               Left = 331
               Bottom = 95
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ep"
            Begin Extent = 
               Top = 6
               Left = 538
               Bottom = 95
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2295
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1680
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProjectDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProjectDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[9] 2[31] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[29] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PrtPrjs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prj"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prt"
            Begin Extent = 
               Top = 6
               Left = 542
               Bottom = 136
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dic"
            Begin Extent = 
               Top = 6
               Left = 855
               Bottom = 136
               Right = 1041
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[29] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PrtPrjs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prj"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prt"
            Begin Extent = 
               Top = 6
               Left = 542
               Bottom = 136
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dic"
            Begin Extent = 
               Top = 6
               Left = 855
               Bottom = 136
               Right = 1041
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrtPrjsView2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "prd"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cost"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 136
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "curr"
            Begin Extent = 
               Top = 6
               Left = 472
               Bottom = 136
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReesrtObk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReesrtObk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[8] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4635
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterOrderer2Views'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterOrderer2Views'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "r"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "srs"
            Begin Extent = 
               Top = 6
               Left = 350
               Bottom = 136
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "srb"
            Begin Extent = 
               Top = 6
               Left = 573
               Bottom = 136
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "srd"
            Begin Extent = 
               Top = 6
               Left = 805
               Bottom = 136
               Right = 1005
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterOrdererView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'alue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterOrdererView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterOrdererView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "rp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 6
               Left = 319
               Bottom = 136
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 6
               Left = 543
               Bottom = 136
               Right = 729
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mo"
            Begin Extent = 
               Top = 138
               Left = 315
               Bottom = 268
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ao"
            Begin Extent = 
               Top = 138
               Left = 583
               Bottom = 268
               Right = 813
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
         Begin Table = "d4"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cm"
            Begin Extent = 
               Top = 270
               Left = 486
               Bottom = 400
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d5"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d6"
            Begin Extent = 
               Top = 402
               Left = 262
               Bottom = 532
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "doc"
            Begin Extent = 
               Top = 402
               Left = 486
               Bottom = 532
               Right = 761
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "drs"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d7"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectJournal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 319
               Bottom = 136
               Right = 553
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "da"
            Begin Extent = 
               Top = 6
               Left = 591
               Bottom = 136
               Right = 777
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dls"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dls2"
            Begin Extent = 
               Top = 138
               Left = 262
               Bottom = 268
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dst"
            Begin Extent = 
               Top = 138
               Left = 486
               Bottom = 268
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dim"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   End
         Begin Table = "dot"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dmt"
            Begin Extent = 
               Top = 270
               Left = 486
               Bottom = 400
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dbm"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dap1"
            Begin Extent = 
               Top = 138
               Left = 710
               Bottom = 268
               Right = 896
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dap2"
            Begin Extent = 
               Top = 270
               Left = 710
               Bottom = 400
               Right = 896
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RegisterProjectsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "req"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "prj"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 136
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RequestListView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RequestListView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[30] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SrReestrView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SrReestrView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ti"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 272
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e1"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 136
               Right = 523
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e2"
            Begin Extent = 
               Top = 6
               Left = 561
               Bottom = 136
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e3"
            Begin Extent = 
               Top = 6
               Left = 833
               Bottom = 136
               Right = 1067
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcInView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcInView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcInView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[10] 2[30] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 268
               Bottom = 136
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcOffView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcOffView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[47] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "toc"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 136
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tout"
            Begin Extent = 
               Top = 6
               Left = 741
               Bottom = 136
               Right = 946
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 272
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d1"
            Begin Extent = 
               Top = 6
               Left = 517
               Bottom = 136
               Right = 703
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d2"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d3"
            Begin Extent = 
               Top = 270
               Left = 262
               Bottom = 400
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcOutCountView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
         Begin Table = "d4"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d5"
            Begin Extent = 
               Top = 402
               Left = 262
               Bottom = 532
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2880
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcOutCountView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TmcOutCountView'
GO
USE [master]
GO
ALTER DATABASE [ncels] SET  READ_WRITE 
GO
