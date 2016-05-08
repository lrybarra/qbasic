DECLARE SUB Display (cheer AS STRING)
DECLARE FUNCTION MascotSignFor$ (cheer AS STRING)
'##### COPYRIGHT 2016 LUIS YBARRA ######

DIM response AS STRING

CLS

10 INPUT "Enter a cheer: ", cheer$

response = MascotSignFor$(cheer$)

IF response = "PEACE!" THEN
ELSE
  Display (response)
  GOTO 10
END IF


SUB Display (cheer AS STRING)
  PRINT cheer
END SUB

FUNCTION MascotSignFor$ (cheer AS STRING)
 
  IF cheer = "RED HOT" THEN
    MascotSignFor$ = "H-O-T!"
  ELSEIF cheer = "DO IT AGAIN" THEN
    MascotSignFor$ = "Go, Fight, Win"
  ELSEIF cheer = "2 BITS" THEN
    MascotSignFor$ = "Holler!"
  ELSEIF cheer = "STOMP YOUR FEET" THEN
    MascotSignFor$ = "STOMP!"
  ELSEIF cheer = "GAME OVER" THEN
    MascotSignFor$ = "PEACE!"
  ELSE
    MascotSignFor$ = "JAYDA! TENLEY! Fight Fight Fight!"
  END IF
 
END FUNCTION

