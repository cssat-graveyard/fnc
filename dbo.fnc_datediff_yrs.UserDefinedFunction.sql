USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_datediff_yrs]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[fnc_datediff_yrs](@BEGIN_DATE datetime,@END_DATE datetime)
returns int
begin

DECLARE @diff int

IF cast(datepart(m,@END_DATE) as int) > cast(datepart(m,@BEGIN_DATE) as int)

SET @diff = cast(datediff(yyyy,@BEGIN_DATE,@END_DATE) as int)

else

		IF cast(datepart(m,@END_DATE) as int) = cast(datepart(m,@BEGIN_DATE) as int)

		IF datepart(d,@END_DATE) >= datepart(d,@BEGIN_DATE)

			SET @diff = cast(datediff(yyyy,@BEGIN_DATE,@END_DATE) as int)

		ELSE

		SET @diff = cast(datediff(yyyy,@BEGIN_DATE,@END_DATE) as int) -1

	ELSE

	SET @diff = cast(datediff(yyyy,@BEGIN_DATE,@END_DATE) as int) - 1

RETURN @diff

end




GO
