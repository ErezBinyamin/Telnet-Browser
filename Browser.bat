@ECHO off
TITLE Telnet Browser
COLOR A
ECHO.
:Begin
CLS
SET   /P conn=What site would you like to connect to?

::Write new batch script instance "inst.bat"
::Start new instance that will create a new Telnet connection
::And clean up after itself
:MakeInst
SET      inst=inst%RANDOM%.bat
IF EXIST %inst% GOTO MakeInst

ECHO SET conn=%conn%>>%inst%
ECHO SET inst=%inst%>>%inst%
TYPE instance.bat>>%inst%

START %inst%
Goto Begin