@echo off
setlocal enabledelayedexpansion

echo ========================================================
echo   Portfolio Setup: Connect to YOUR Personal GitHub Repo
echo ========================================================
echo.
echo This script will reset Git and connect this portfolio
echo directly to your own GitHub repository so you can push
echo without any "Permission Denied (403)" errors.
echo.

set /p REPO_URL="Enter your GitHub Repository URL (e.g. https://github.com/Username/my-portfolio.git): "

if "%REPO_URL%"=="" (
    echo.
    echo [ERROR] No URL provided. Exiting.
    pause
    exit /b 1
)

echo.
echo [1/5] Removing old Git history...
if exist ".git" (
    rmdir /s /q .git
)

echo [2/5] Initializing fresh Git repository on branch 'main'...
git init -b main

echo [3/5] Staging files...
git add .

echo [4/5] Creating initial commit...
git commit -m "Initial commit: My Personal Portfolio"

echo [5/5] Connecting to your repository: %REPO_URL%
git remote add origin %REPO_URL%

echo.
echo Pushing to your repository...
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo   SUCCESS! Pushed to your personal repository!
    echo ========================================================
    echo Next step: Go to your repo on GitHub:
    echo   Settings -^> Pages -^> Source -^> Select 'GitHub Actions'
    echo Your website will be live in 1 minute!
) else (
    echo.
    echo [NOTE] Push failed. Make sure your repository exists on
    echo GitHub and you have write permissions to it.
)

echo.
pause
