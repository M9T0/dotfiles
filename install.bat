@echo off
setlocal enabledelayedexpansion
cd %~dp0

set DOTPATH=%~dp0

:continue
for %%f in (.??*) do (
    if "%%f" == ".git" (
        goto :continue
    )
    if "%%f" == ".config" (
        goto :continue
    )
    if exist "%%f\" (
        goto :continue
    )
    mklink "%DOTPATH%" "%HOME%/%%f"
)

set CONFIGPATH="~dp0\.config"

cd %CONFIGPATH%

for %%f in (*) do (
    if exist "%%f\" (
        mklink /j "%HOME%/.config/" "%CONFIGPATH%/%%f"
    )
)
