@echo off
for %%f in (%~1) do set name=%%~nxf
set dir=%name:~0,4%
call ./pdg.bat %~1 %~2 %~3
".\Python27\python.exe" auto.py "%dir%\AndroidManifest.xml" %~4
call ./dg.bat %dir%
