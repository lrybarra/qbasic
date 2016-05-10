'***** COPYRIGHT 2016 LUIS YBARRA *****

DIM MyNum AS INTEGER

DECLARE FUNCTION GetMyNumber% ()
DECLARE FUNCTION ConvertToRoman$ (MyNum AS INTEGER)

CLS

MyNum = GetMyNumber%

RomanNumeral$ = ConvertToRoman$(MyNum)

PRINT RomanNumeral$

FUNCTION ConvertToRoman$ (MyNum AS INTEGER)
  Num1% = MyNum
  ConvertToRoman$ = " "

  WHILE Num1% > 0
  
   IF Num1% MOD 1000 = 0 THEN
     Temp% = Num1% / 1000
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 0 TO Temp%
       Temp$ = ConvertToRoman$ + "M"
     NEXT x
     
   END IF

   
  WEND
  
  SELECT CASE Num1%
    CASE 1
      ConvertToRoman$ = "I"
     
  END SELECT

END FUNCTION

FUNCTION GetMyNumber%
  INPUT "Please Enter a Number: ", GetMyNumber%
END FUNCTION

