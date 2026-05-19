@echo off
setlocal
echo ========================================
echo Pocket TTS - Hugging Face Setup
echo ========================================
echo.
echo Custom voices (donald-trump, etc.) need the voice-cloning model.
echo.
echo Step 1: Open this page in your browser and click "Agree and access":
echo   https://huggingface.co/kyutai/pocket-tts
echo.
pause
echo.
echo Step 2: Log in to Hugging Face (browser will open):
echo.

if exist venv\Scripts\activate.bat (
    call venv\Scripts\activate.bat
)

where hf >nul 2>&1
if errorlevel 1 (
    echo Using uvx to run Hugging Face CLI...
    uvx hf auth login
) else (
    hf auth login
)

echo.
echo Step 3: Restart the server with run_pocket_tts.bat
echo        The startup banner should show "Voice Cloning: Yes"
echo.
pause
