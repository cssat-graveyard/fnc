USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[RandFn]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[RandFn]()
returns DECIMAL(18,18)
as 
begin
declare @randval DECIMAL(18,18)
select @randVal = rndResult from get_random_nbr
return @randval
end

GO
