@echo off
setlocal ENABLEEXTENSIONS
setlocal ENABLEDELAYEDEXPANSION

for %%a in (*.md) do (
    echo Processing %%a...
    for /f "delims=^ tokens=1" %%i in (%%a) do (
        if /i "%%i"=="/@cameroneshgh" (
            echo >>%%a.new
        ) else (
            echo %%i>>%%a.new
        )
    )
    move /y %%a %%a.bak > nul
    ren %%a.new %%a
)