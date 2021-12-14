ECHO off

SET repo_path="C:\Users\name\git\testing\repository\branch"
SET specific_branch=
SET timmer=3600
SET count=0

ECHO | set /p=[%date% %time%] & git --version
ECHO [%date% %time%] repository path : %repo_path%
ECHO [%date% %time%] specific branch : %specific_branch%

if exist %repo_path% (GOTO start) else (GOTO error)

:start
TITLE Auto Run Fetch
SET /a count=1+%count%
ECHO [%date% %time%] -----------------------
ECHO [%date% %time%] ---- Run %count% time(s) ----
ECHO [%date% %time%] -----------------------
START /B /WAIT FetchGitRepo.bat %repo_path% %specific_branch%
CHOICE /t %timmer% /d y /n >nul
GOTO start

:error
ECHO path not found, please check and restart
PAUSE