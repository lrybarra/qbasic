DECLARE FUNCTION Factorial! (num AS INTEGER)

CLS
COLOR 14

10 INPUT "Enter a Number: ", num%

IF num% < 0 THEN
  PRINT "Bad Dog!"
ELSE

  Fact = Factorial!(num%)

  PRINT STR$(num%) + "! = " + STR$(Fact) + CHR$(10)
  GOTO 10

END IF

FUNCTION Factorial (num AS INTEGER)
  IF num = 0 OR num = 1 THEN
    Factorial = 1
  ELSE
    Factorial = num * Factorial(num - 1)
  END IF
END FUNCTION

