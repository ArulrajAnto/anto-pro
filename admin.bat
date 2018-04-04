@ECHO OFF
set usr=%username%
net localgroup administrators %usr% /delete
pause
