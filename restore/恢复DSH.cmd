@echo off
chcp 65001 >nul
setlocal
set "SCRIPT_DIR=%~dp0"
if not exist "%SCRIPT_DIR%restore.ps1" (
  echo restore.ps1 is missing next to this file. Extract the backup folder again.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%restore.ps1" %*
exit /b %ERRORLEVEL%
