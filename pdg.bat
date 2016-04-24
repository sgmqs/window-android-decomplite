@echo off
for %%f in (%~1) do set name=%%~nxf
set dir=%name:~0,4%

call ./apktool.bat --d %~1

set smali="smali"
if exist "%dir%\smali_classes2" set smali="smali_classes2"

xcopy "sdk\baidu" "%dir%\%smali%\com" /e /Y
xcopy "sdk\fy" "%dir%\%smali%\com" /e /Y
xcopy "sdk\biduad_plugin" "%dir%\assets" /e /Y
xcopy "sdk\close.png" "%dir%\assets" /e /Y

pause