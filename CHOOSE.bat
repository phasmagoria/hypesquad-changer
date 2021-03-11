@ECHO OFF
:BEGIN
CLS
ECHO 1 is for Bravery.
ECHO 2 is for Brilliance.
ECHO 3 is for Balance.
ECHO 4 is for leaving Hypesquad all together.
CHOICE /N /C:1234 /M "(1, 2, 3 or 4)"%1
IF ERRORLEVEL ==4 GOTO LEAVE
IF ERRORLEVEL ==3 GOTO BALANCE
IF ERRORLEVEL ==2 GOTO BRILLIANCE
IF ERRORLEVEL ==1 GOTO BRAVERY
GOTO END
:BALANCE
ECHO You should have the Balance Hypesquad badge now.
python balance.py
GOTO END
:BRILLIANCE
ECHO You should have the Brilliance Hypesquad badge now.
python brilliance.py
GOTO END
:BRAVERY
ECHO You should have the Bravery Hypesquad badge now.
python bravery.py
:LEAVE
ECHO You should have left Hypesquad now.
python leave.py
:END
pause
