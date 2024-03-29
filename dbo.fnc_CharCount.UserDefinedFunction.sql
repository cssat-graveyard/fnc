USE [CA_ODS]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_CharCount]    Script Date: 12/4/2013 9:17:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnc_CharCount]
               (@Text VARCHAR(MAX),
                @Char CHAR(1))
RETURNS INT
AS
  BEGIN
    DECLARE  @Occur INT
    
    SELECT @Occur = len(@Text) - len(replace(@Text,@Char,''))
    
    RETURN @Occur
  END
GO
