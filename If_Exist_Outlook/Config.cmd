@echo off
ping -n 2 %1 > Test_Ping.log
find /I "Reply from"  Test_Ping.log
if "%errorlevel%"=="0" goto RespondePing
goto NoRespondePing

:RespondePing
find /I "unreachable"  Test_Ping.log
if "%errorlevel%"=="0" goto NoRespondePing
goto validar

:NoRespondePing
echo %1; No Responde Ping >> Logs_Outlook.log
goto fin

:validar
if not exist \\%1\C$ echo %1;No tiene permisos en C$ >> Logs_Outlook.log
if exist \\%1\C$ echo %1;esta habilitado C$ >> Logs_Outlook.log
if not exist "\\%1\C$\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" echo %1;No tiene OUTLOOK.EXE >> Logs_Outlook.log
if exist "\\%1\C$\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" echo %1;Tiene OUTLOOK.EXE >> Logs_Outlook.log
if not exist "\\%1\C$\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe.old" echo %1;No tiene OUTLOOK.EXE.old >> Logs_Outlook.log
if exist "\\%1\C$\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe.old" echo %1;Tiene OUTLOOK.EXE.old >> Logs_Outlook.log

::rename \\PADGELFKBKY\C$\Progra~1\Micros~1\root\Office16\OUTLOOK.EXE \\PADGELFKBKY\C$\Progra~1\Micros~1\root\Office16\OUTLOOK.EXE.old1

:fin
echo Fin