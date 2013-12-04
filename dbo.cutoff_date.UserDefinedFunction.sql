USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[cutoff_date]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
create FUNCTION [dbo].[cutoff_date]() RETURNS  datetime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @cutoff_date datetime

	-- Add the T-SQL statements to compute the return value here
	select @cutoff_date =cutoff_date from dbo.ref_last_dw_transfer

	-- Return the result of the function
	RETURN @cutoff_date

END

GO
