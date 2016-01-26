@echo Running puppet on demand ...
if exist "%~dp0environment.bat" (
  call "%~dp0environment.bat" %0 %*
) else (
  SET PATH=%~dp0;%PATH%
)
elevate.exe "%~dp0puppet_interactive.bat"
