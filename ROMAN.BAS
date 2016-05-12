'***** COPYRIGHT 2016 LUIS YBARRA *****

DIM MyNum AS INTEGER

DECLARE FUNCTION GetMyNumber% ()
DECLARE FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER)

CLS
COLOR 10

DO
  MyNum = GetMyNumber%

  RomanNumeral$ = ConvertToRomanOld$(MyNum)

  PRINT RomanNumeral$
LOOP WHILE MyNum > 0

FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER)
  Num1% = MyNum
  LET TempStr$ = ""

  WHILE Num1% > 0
  
   IF Num1% >= 1000 THEN
     Temp% = Num1% \ 1000
     Num1% = Num1% - (1000 * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "M"
     NEXT x
   END IF

   IF Num1% >= 500 THEN
     Temp% = Num1% \ 500
     Num1% = Num1% - (500 * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "D"
     NEXT x
   END IF

   IF Num1% >= 100 THEN
     Temp% = Num1% \ 100
     Num1% = Num1% - (100 * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "C"
     NEXT x
   END IF
  
   IF Num1% >= 50 THEN
     Temp% = Num1% \ 50
     Num1% = Num1% - (50 * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "L"
     NEXT x
   END IF
  
   IF Num1% >= 10 THEN
     Temp% = Num1% \ 10
     Num1% = Num1% - (10 * Temp%)

     FOR x = 1 TO Temp%
       TempStr$ = TempStr$ + "X"
     NEXT x
   END IF
  
   IF Num1% >= 5 THEN
     Temp% = Num1% \ 5
     Num1% = Num1% - (5 * Temp%)

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

  ConvertToRomanOld$ = TempStr$
            
END FUNCTION

FUNCTION GetMyNumber%
  INPUT "Please Enter a Year: ", GetMyNumber%
END FUNCTION

