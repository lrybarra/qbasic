DECLARE FUNCTION LinearSearch (Element AS INTEGER, Arr() AS INTEGER)

DIM IntArray(100) AS INTEGER
DIM SearchResult(100) AS INTEGER

CLS
RANDOMIZE TIMER
COLOR 2

FOR x = 0 TO 99
  IntArray(x) = INT(RND * 100)
NEXT x

FOR x = 0 TO 10
  PRINT IntArray(x)
NEXT x

INPUT "Enter a number: ", num%

SearchResult = LinearSearch(num%, IntArray())

PRINT SearchResult


FUNCTION LinearSearch (Element AS INTEGER, Arr() AS INTEGER)
  FOR i = 0 TO LEN(Arr)
    IF Arr(i) = Element THEN
      LinearSearch = i
      EXIT FUNCTION
    END IF
  NEXT i

  LinearSearch = -1
END FUNCTION

