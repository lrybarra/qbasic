DECLARE SUB RomanCalculations (Num1%, Temp%, RomanChar$, MilestoneNum!, TempStr$)
'***** COPYRIGHT 2016 LUIS YBARRA *****

DIM MyNum AS INTEGER

DECLARE FUNCTION GetMyNumber% ()
DECLARE FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER)

CLS
COLOR 10

DO
  INPUT "ENTER 1 FOR OLD ROMAN & 2 FOR NEW ROMAN :> ", Choice%

  MyNum = GetMyNumber%

  IF Choice% = 1 THEN
    RomanNumeral$ = ConvertToRomanOld$(MyNum)
  ELSEIF Choice% = 2 THEN
    RomanNumeral$ = "Coming Soon!"
  ELSE
    RomanNumeral$ = "Fuck Yourself!"
  END IF

  PRINT RomanNumeral$
LOOP WHILE MyNum > 0

FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER)
  Num1% = MyNum
  LET TempStr$ = ""

  WHILE Num1% > 0
  
   IF Num1% >= 1000 THEN
     CALL RomanCalculations(Num1%, Temp%, "M", 1000, TempStr$)
   END IF

   IF Num1% >= 500 THEN
     CALL RomanCalculations(Num1%, Temp%, "D", 500, TempStr$)
   END IF

   IF Num1% >= 100 THEN
     CALL RomanCalculations(Num1%, Temp%, "C", 100, TempStr$)
   END IF
  
   IF Num1% >= 50 THEN
     CALL RomanCalculations(Num1%, Temp%, "L", 50, TempStr$)
   END IF
  
   IF Num1% >= 10 THEN
     CALL RomanCalculations(Num1%, Temp%, "X", 10, TempStr$)
   END IF
  
   IF Num1% >= 5 THEN
     CALL RomanCalculations(Num1%, Temp%, "V", 5, TempStr$)
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

SUB RomanCalculations (Num1%, Temp%, RomanChar$, MilestoneNum, TempStr$)
  Temp% = Num1% \ MilestoneNum
  Num1% = Num1% - (MilestoneNum * Temp%)

  FOR x = 1 TO Temp%
    TempStr$ = TempStr$ + RomanChar$
  NEXT x
END SUB

