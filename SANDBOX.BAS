DECLARE FUNCTION TestVARS! (test AS INTEGER)

PLAY "CDEFGAB"

LET Stra$ = " "

CLS

PRINT Stra$

FOR x = 0 TO 5
  Stra$ = Stra$ + "A"
  PRINT Stra$
NEXT x

a = TestVARS!(3)
PRINT a

FUNCTION TestVARS (test AS INTEGER)
  test = test + 5
  PRINT test
  TestVARS = 5

END FUNCTION

