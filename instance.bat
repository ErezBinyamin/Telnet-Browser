@ECHO off
TITLE Telnet Browser Instance
COLOR B
CLS

::SAFTEY
IF NOT EXIST %inst% EXIT

::Make a new "output.html" to show parsed html
:MakeOut
SET output=Output%RANDOM%.html
IF EXIST %output% GOTO MakeOut
ECHO MyBrowserWindow>>%output%

::Start Telnet connection
START %output%
TELNET %conn% 80 -f %output%

::User prompted continuation
ECHO.
ECHO.
PAUSE


::Clean up
DEL %output%
start /b "" cmd /c del "%~f0"&exit
