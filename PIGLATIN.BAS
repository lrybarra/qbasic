DECLARE FUNCTION IsVowel! (char AS STRING)
'***** COPYRIGHT 2016 LUIS YBARRA *****

CLS
COLOR 11

INPUT "Enter a word: ", word$

PRINT MID$(word$, 1, 1)

IF IsVowel(LCASE$(MID$(word$, 1, 1))) = 1 THEN
  PRINT "Vowel!"
END IF




FUNCTION IsVowel (char AS STRING)
  SELECT CASE char
    CASE "a", "e", "i", "o", "u"
      IsVowel = 1
    CASE ELSE
      IsVowel = 0
  END SELECT

END FUNCTION

