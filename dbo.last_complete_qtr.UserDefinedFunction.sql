USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[last_complete_qtr]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[last_complete_qtr]()
returns datetime
as 
begin
declare @max_qtr datetime

set @max_qtr= (select max([Quarter]) from dbo.calendar_dim where dateadd(mm,3,[Quarter]) < dbo.cutoff_date())

return @max_qtr
end

GO
