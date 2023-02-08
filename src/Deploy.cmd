@echo OFF

TITLE CS-Script Notepad++ Plugin Deployer
COLOR 0A

SET config=Debug
SET cpu=x86
SET dest_root=C:\Program Files (x86)

SET plugin_root=%dest_root%\Notepad++ (32)\plugins

MD "%plugin_root%\CSScriptNpp"
MD "%plugin_root%\CSScriptNpp\Mdbg"

ECHO Copying files...
XCOPY output\plugins\CSScriptNpp\*.* "%plugin_root%\CSScriptNpp" /Y
XCOPY output\plugins\CSScriptNpp\Mdbg\*.* "%plugin_root%\CSScriptNpp\Mdbg" /Y
REM MOVE "%plugin_root%\CSScriptNpp\CSScriptNpp.dll" "%plugin_root%\CSScriptNpp\CSScriptNpp.asm.dll"
COPY "output\plugins\CSScriptNpp.x64.dll" "%plugin_root%\CSScriptNpp\CSScriptNpp.dll"
ECHO Finished. Press any key to exit... 

PAUSE
