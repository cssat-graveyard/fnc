USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[last_complete_yr]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[last_complete_yr]()
returns datetime
as 
begin
declare @max_yr datetime

set @max_yr= (select max([Year]) from dbo.calendar_dim where dateadd(yy,1,[Year]) < dbo.cutoff_date())

return @max_yr
end

GO
