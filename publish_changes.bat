ECHO OFF
CLS
ECHO.
if "%~1"=="" goto BLANK
if "%~1"=="-c" (goto specific) else goto unknown
:SPECIFIC
if "%~2" == "" goto BLANK
git add .
git commit -m "%~2"
git push origin master
GOTO DONE
:BLANK
ECHO No Parameter. Usage: publish_changes -c comment
GOTO DONE
:UNKNOWN
ECHO Unknown Option. Usage: publish_changes -c comment
GOTO DONE
:DONE
ECHO Thanks!