@echo OFF
:Again
PING 1.1.1.1 -n 1 -w 30000 >NUL
PING 10.2.10.14 -n 1 | find /i "bytes=" || goto Fail
echo Ping successful at %time% on %date% >> d:anto21108.txt
goto Again
:Fail
echo FAILED >> ping.log
goto Again