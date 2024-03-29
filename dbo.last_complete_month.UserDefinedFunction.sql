USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[last_complete_month]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[last_complete_month]()
returns datetime
as 
begin
declare @max_mo datetime

set @max_mo= (select (max([Month])) from dbo.calendar_dim where dateadd(mm,1,[Month]) < dbo.cutoff_date())

return @max_mo
end

GO
