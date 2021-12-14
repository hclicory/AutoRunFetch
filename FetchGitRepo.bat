@ECHO off

SET repo_path=%1
SET specific_branch=%2 %3

cd %repo_path%

ECHO [%date% %time%] --------Fetch Start----------
ECHO [%date% %time%] ^>^>^>^> Step 2 : Repository URL
git remote -v

ECHO [%date% %time%] ^>^>^>^> Step 3 : Check current commits
git branch -avv

ECHO [%date% %time%] ^>^>^>^> Step 4 : Fetching......
git fetch %specific_branch%
ECHO [%date% %time%] ^>^>^>^> Step 5 : Fetch End......

ECHO [%date% %time%] ^>^>^>^> Step 6 : Check new commits
git branch -avv
ECHO [%date% %time%] -------Fetch Finished---------

EXIT
