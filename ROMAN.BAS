DECLARE SUB SetArrays (RomanChars() AS STRING, Milestones() AS INTEGER)
DECLARE SUB RomanCalculationsOld (Num1%, Temp%, RomanChar$, MilestoneNum AS INTEGER, TempStr$)
'***** COPYRIGHT 2016 LUIS YBARRA *****

DIM MyNum AS INTEGER
DIM RomanChars(7) AS STRING
DIM Milestones(7) AS INTEGER

DECLARE FUNCTION GetMyNumber% ()
DECLARE FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER, RomanChars() AS STRING, Milestones() AS INTEGER)

CLS
COLOR 10

CALL SetArrays(RomanChars(), Milestones())

DO
  INPUT "ENTER 1 FOR OLD ROMAN & 2 FOR NEW ROMAN :> ", Choice%

  MyNum = GetMyNumber%

  IF Choice% = 1 THEN
    RomanNumeral$ = ConvertToRomanOld$(MyNum, RomanChars(), Milestones())
  ELSEIF Choice% = 2 THEN
    RomanNumeral$ = "Coming Soon!"
  ELSE
    RomanNumeral$ = "Fuck Yourself!"
  END IF

  PRINT RomanNumeral$
LOOP WHILE MyNum > 0

FUNCTION ConvertToRomanOld$ (MyNum AS INTEGER, RomanChars() AS STRING, Milestones() AS INTEGER)
 
  Num1% = MyNum
  LET TempStr$ = ""

  WHILE Num1% > 0

   FOR i = 0 TO 6
     IF Num1% >= Milestones(i) THEN
       CALL RomanCalculationsOld(Num1%, Temp%, RomanChars(i), Milestones(i), TempStr$)
     END IF
   NEXT i

  WEND

  ConvertToRomanOld$ = TempStr$
            
END FUNCTION

FUNCTION GetMyNumber%
  INPUT "Please Enter a Year: ", GetMyNumber%
END FUNCTION

SUB RomanCalculationsOld (Num1%, Temp%, RomanChar$, Milestone AS INTEGER, TempStr$)
  Temp% = Num1% \ Milestone
  Num1% = Num1% - (Milestone * Temp%)

  FOR x = 1 TO Temp%
    TempStr$ = TempStr$ + RomanChar$
  NEXT x
END SUB

SUB SetArrays (RomanChars() AS STRING, Milestones() AS INTEGER)
  RomanChars(0) = "M"
  RomanChars(1) = "D"
  RomanChars(2) = "C"
  RomanChars(3) = "L"
  RomanChars(4) = "X"
  RomanChars(5) = "V"
  RomanChars(6) = "I"

  Milestones(0) = 1000
  Milestones(1) = 500
  Milestones(2) = 100
  Milestones(3) = 50
  Milestones(4) = 10
  Milestones(5) = 5
  Milestones(6) = 1
END SUB

