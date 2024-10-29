@echo off
REM Usage: sync_settings.bat

set SOURCE_DIR=settings
set DEST_DIR=..\community\settings

xcopy /E /H /Y "%SOURCE_DIR%" "%DEST_DIR%"

echo Successfully synced talon settings from %SOURCE_DIR% to %DEST_DIR%
