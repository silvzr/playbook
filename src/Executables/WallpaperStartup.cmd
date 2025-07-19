<# :
@echo off &pushd "%~dp0"
@set batch_args=%*
@set script_path=%~f0
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex (cat -Raw '%~f0'); $scriptPath='%script_path%'; if (Test-Path $scriptPath) { Start-Process cmd -ArgumentList '/c ping localhost -n 3 > nul && del %script_path%' -WindowStyle Hidden }"
@exit /b %ERRORLEVEL%
: #>

$scriptPath = "$env:SystemRoot\Web\Wallpaper\MeetRevision\WALLPAPER.ps1"
& $scriptPath -Mode Desktop -ImagePath "$env:SystemRoot\Web\Wallpaper\MeetRevision\v2\desktop.jpg"
& $scriptPath -Mode LockScreen -ImagePath "$env:SystemRoot\Web\Wallpaper\MeetRevision\v2\lockscreen.jpg"