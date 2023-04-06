@echo off
:loop
node C:\Job_CopyFiles\src\moveFiles.js
timeout /t 60
goto loop