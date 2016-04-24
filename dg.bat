@echo off
REM echo 正在反编译%~1...
./apktool.bat --b %~1
./apktool.bat --s %~1/dist/%~1.apk
REM ./apktool.bat --i %~1.apk