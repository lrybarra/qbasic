' * * * * * FIB.BAS COPYRIGHT 2016 LUIS YBARRA * * * * * *  *
' *                                                         *
' * Program that takes a number & calculates its Fibonacci  *
' *                                                         *
' * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


DECLARE FUNCTION Fibonacci! (num AS INTEGER)
CLS
COLOR 4

10 INPUT "Enter a Number: ", num%

IF num% < 0 THEN
  PRINT "Bad Dog!"
ELSE
  PRINT STR$(Fibonacci(num%)) + CHR$(10)
  GOTO 10
END IF

FUNCTION Fibonacci (num AS INTEGER)
  
  IF num = 0 THEN
    Fibonacci = 0
  ELSEIF num = 1 OR num = 2 THEN
    Fibonacci = 1
  ELSE
    Fibonacci = Fibonacci(num - 1) + Fibonacci(num - 2)
  END IF

END FUNCTION

