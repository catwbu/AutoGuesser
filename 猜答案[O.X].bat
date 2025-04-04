@echo off 
TITLE 猜答案
:top
set /p s=輸出的題數:
set q=0
:loop
set /a m=%random%%%2+1
if /i "%m%"=="1" set e=○
if /i "%m%"=="2" set e=╳
set /a q=q+1
echo %q%. %e%
if "%q%"=="%s%" (
pause>nul
cls&goto top
)
goto loop