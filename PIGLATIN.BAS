' * * * * * PIGLATIN.BAS COPYRIGHT 2016 LUIS YBARRA * * * * *
' *                                                         *
' * Program that takes a sentence and converts to Pig Latin *
' *                                                         *
' * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

DECLARE FUNCTION ConvertWordToPigLatin$ (word AS STRING)
DECLARE FUNCTION IsVowel! (char AS STRING)

CLS
COLOR 11

10 INPUT "Enter a sentence (0 to quit): ", sentence$

IF sentence$ = "0" THEN
ELSE
  sentenceIndex% = 1
  PigLatinSentence$ = ""

  WHILE sentenceIndex% < LEN(sentence$)
   
    word$ = ""

    letter$ = MID$(sentence$, sentenceIndex%, 1)

    WHILE letter$ <> "" AND letter$ <> " "
      word$ = word$ + letter$
      sentenceIndex% = sentenceIndex% + 1
      letter$ = MID$(sentence$, sentenceIndex%, 1)
    WEND
   
    PigLatinSentence$ = PigLatinSentence$ + " " + ConvertWordToPigLatin$(word$)
    sentenceIndex% = sentenceIndex% + 1
 
  WEND

  PRINT PigLatinSentence$ + CHR$(10)
  GOTO 10

END IF

FUNCTION ConvertWordToPigLatin$ (word AS STRING)

  strt$ = MID$(word, 1, 1)
 
  IF IsVowel(strt$) = 1 THEN
    ConvertWordToPigLatin$ = UCASE$(strt$) + MID$(word, 2, LEN(word))
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

