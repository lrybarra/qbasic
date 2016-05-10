DECLARE FUNCTION GetNumber% ()
DECLARE FUNCTION ConvertToRoman$ (Number AS INTEGER)

CLS

Number% = GetNumber%

RomanNumeral$ = ConvertToRoman$(Number%)

FUNCTION ConvertToRoman$ (Number AS INTEGER)
  SELECT CASE Number
    CASE 1
      ConvertToRoman$ = "I"
     
  END SELECT
END FUNCTION

FUNCTION GetNumber%
  INPUT "Please Enter a Number: ", GetNumber%
END FUNCTION

