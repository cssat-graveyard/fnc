USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[lessorDate]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[lessorDate](@date1 as datetime,@date2 as datetime)
returns datetime
as
begin
	declare @myDate datetime;
	if @date1 <=@date2  set @myDate= @date1
	else set @myDate= @date2;
	
	return @myDate;
end

GO
