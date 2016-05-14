DECLARE FUNCTION ConvertWordToPigLatin$ (word AS STRING)
DECLARE FUNCTION IsVowel! (char AS STRING)
'***** COPYRIGHT 2016 LUIS YBARRA *****

CLS
COLOR 11

10 INPUT "Enter a word (0 to quit): ", word$

IF word$ = "0" THEN
ELSE
  PigLatinWord$ = ConvertWordToPigLatin$(word$)
  PRINT PigLatinWord$
  GOTO 10
END IF

FUNCTION ConvertWordToPigLatin$ (word AS STRING)

  strt$ = MID$(word, 1, 1)
 
  IF IsVowel(strt$) = 1 THEN
    ConvertWordToPigLatin$ = word
    EXIT FUNCTION
  END IF

  i = 2

  WHILE IsVowel(MID$(word, i, 1)) = 0
    strt$ = strt$ + MID$(word, i, 1)
    i = i + 1
  WEND

  strt$ = strt$ + "ay"

  ConvertWordToPigLatin$ = UCASE$(MID$(word, i, 1)) + MID$(word, i + 1, LEN(word)) + strt$

END FUNCTION

FUNCTION IsVowel (char AS STRING)
   
  char = LCASE$(char)

  SELECT CASE char
    CASE "a", "e", "i", "o", "u"
      IsVowel = 1
    CASE ELSE
      IsVowel = 0
  END SELECT

END FUNCTION

