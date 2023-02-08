@echo OFF

TITLE CS-Script Notepad++ Plugin Deployer
COLOR 0A

SET config=Debug
SET cpu=x64

REM SET dest_root=C:\Users\master\AppData\Local\Notepad++\plugins\CSScriptNpp
SET dest_root=C:\Program Files\Notepad++\plugins\CSScriptNpp

SET plugin_root=%dest_root%

MD "%plugin_root%\CSScriptNpp"
MD "%plugin_root%\CSScriptNpp\Mdbg"

ECHO Copying... 
REM XCOPY output\plugins\CSScriptNpp\*.* "%plugin_root%\CSScriptNpp" /Y
COPY "CSScriptNpp\bin\Debug\CSScriptNpp.dll" "%plugin_root%\CSScriptNpp\CSScriptNpp.dll"

REM XCOPY output\plugins\CSScriptNpp\Mdbg\*.* "%plugin_root%\CSScriptNpp\Mdbg" /Y
REM MOVE "%plugin_root%\CSScriptNpp\CSScriptNpp.dll" "%plugin_root%\CSScriptNpp\CSScriptNpp.asm.dll"
REM COPY "output\plugins\CSScriptNpp.x64.dll" "%plugin_root%\CSScriptNpp.dll"

ECHO Finished. Press any key to exit... 

PAUSE

