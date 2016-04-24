@echo off

if "%~2" =="" goto error
if "%~1" =="--d" goto d
if "%~1" =="--b" goto b
if "%~1" =="--s" goto s
if "%~1" =="--ddex" goto ddex
if "%~1" =="--bdex" goto bdex
if "%~1" =="--dxml" goto dxml
if "%~1" =="--d2j"  goto d2j

goto error 

:d <apkpath>
set apkpath=%~2
for %%f in (%apkpath%) do set name=%%~nxf
if exist %name:~0, -4%  rmdir /s /q %name:~0, -4%
java -jar tools\apktool.jar d "%apkpath%"
goto end

:b <dir>
set dir=%~2
java -jar tools\apktool.jar b "%dir%"
goto end

:s <apkpath>
set apkpath=%~2
for %%f in (%apkpath%) do set name=%%~nxf
java -jar tools/sign_tool/signapk.jar tools/sign_tool/platform.x509.pem tools/sign_tool/platform.pk8 %apkpath% %name%
goto end

:ddex <dexpath>
if exist dexout rmdir /q /s dexout
java -jar tools/baksmali.jar -o dexout/ %~2
goto end

:bdex <dexdir>
java -jar tools/smali.jar -o %~2
goto end

:dxml <xmlpath>
java  -jar tools/axmlprinter2.jar "%~2" > "%~2.txt"
goto end

:d2j <dexpath>
./tools/dex2jar/dex2jar.bat "%~2"
goto end

:error
echo "usage: apktool.bat [--d|--b|--s|--i] apkpath"
:end
