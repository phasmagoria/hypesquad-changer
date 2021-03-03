@ECHO OFF
:BEGIN
CLS
ECHO 1 is for Bravery
ECHO 2 is for Brilliance
ECHO 3 is for Balance
CHOICE /N /C:123 /M "(1, 2, or 3)"%1
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
:END
pause