'***** COPYRIGHT 2016 LUIS YBARRA *****

DIM MyNum AS INTEGER

DECLARE FUNCTION GetMyNumber% ()
DECLARE FUNCTION ConvertToRoman$ (MyNum AS INTEGER)

CLS
COLOR 10

MyNum = GetMyNumber%
' Fix Infinite Loop
RomanNumeral$ = ConvertToRoman$(MyNum)

PRINT RomanNumeral$

FUNCTION ConvertToRoman$ (MyNum AS INTEGER)
  Num1% = MyNum
  LET TempStr$ = ""

  WHILE Num1% > 0
  
   IF Num1% MOD 1000 = 0 THEN
     Temp% = Num1% / 1000
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "M"
     NEXT x
   END IF

   IF Num1% MOD 500 = 0 THEN
     Temp% = Num1% / 500
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "D"
     NEXT x
   END IF

   IF Num1% MOD 100 = 0 THEN
     Temp% = Num1% / 100
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "C"
     NEXT x
   END IF
  
   IF Num1% MOD 50 = 0 THEN
     Temp% = Num1% / 50
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "L"
     NEXT x
   END IF
  
   IF Num1% MOD 10 = 0 THEN
     Temp% = Num1% / 10
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "X"
     NEXT x
   END IF
  
   IF Num1% MOD 5 = 0 THEN
     Temp% = Num1% / 5
     Num1% = Num1% - (Num1% * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "V"
     NEXT x
   END IF
   
   IF Num1% < 5 THEN
     Temp% = Num1%
     Num1% = 0
     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "I"
     NEXT x
   END IF

   
  WEND

  ConvertToRoman$ = TempStr$
  
  SELECT CASE Num1%
    CASE 1
      ConvertToRoman$ = "I"
     
  END SELECT

END FUNCTION

FUNCTION GetMyNumber%
  INPUT "Please Enter a Year: ", GetMyNumber%
END FUNCTION

