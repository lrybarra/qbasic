DECLARE FUNCTION ConvertWordToPigLatin$ (word AS STRING)
DECLARE FUNCTION IsVowel! (char AS STRING)
'***** COPYRIGHT 2016 LUIS YBARRA *****

CLS
COLOR 11

INPUT "Enter a word: ", word$

PigLatinWord$ = ConvertWordToPigLatin$(word$)

PRINT PigLatinWord$




FUNCTION ConvertWordToPigLatin$ (word AS STRING)

  temp$ = word

  FOR i = 1 TO LEN(temp$)
    IF IsVowel(LCASE$(MID$(temp$, i, 1))) = 1 THEN
      IF i = 1 THEN
        ConvertWordToPigLatin$ = temp$
        EXIT FUNCTION
      END IF
    END IF
  NEXT i

  ConvertWordToPigLatin = "A"
 
END FUNCTION

FUNCTION IsVowel (char AS STRING)
  SELECT CASE char
    CASE "a", "e", "i", "o", "u"
      IsVowel = 1
    CASE ELSE
      IsVowel = 0
  END SELECT

END FUNCTION

