@echo off

setlocal

set APP_NAME="flowcontrol"
set CHROME_PROVIDERS="content"

set ROOT_DIR=%CD%
set TMP_DIR="build"

rem remove any left-over files from previous build
del /Q %APP_NAME%.xpi
del /S /Q %TMP_DIR%

mkdir %TMP_DIR%\chrome\content

robocopy content %TMP_DIR%\chrome\content /E
robocopy locale %TMP_DIR%\chrome\locale /E
robocopy skin %TMP_DIR%\chrome\skin /E
robocopy defaults %TMP_DIR%\defaults /E
copy install.rdf %TMP_DIR%
copy chrome.manifest %TMP_DIR%

rem generate the XPI file
cd %TMP_DIR%
echo "Generating %APP_NAME%.xpi..."

"c:\program files\7-zip\7z.exe" a -r -y -tzip ../%APP_NAME%.zip *

cd %ROOT_DIR%
rename %APP_NAME%.zip %APP_NAME%.xpi

endlocal