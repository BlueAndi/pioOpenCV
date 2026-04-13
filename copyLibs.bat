@echo off
setlocal enabledelayedexpansion

:: Copy all .a files
echo Copying .a files...
if not exist "lib" mkdir "lib"
xcopy /Y /F "opencv\build\esp-idf\espressif__opencv\opencv-build\lib\*.a" "lib\" >nul || (
    echo Error copying .a files
    pause
    exit /b 1
)

:: Copy all include files from modules
echo Copying include files from modules...
if not exist "include" mkdir "include"
for /f "delims=" %%d in ('dir /s /b /ad "opencv\managed_components\espressif__opencv\opencv\modules\include"') do (
    xcopy /E /Y /F "%%d\*" "include\" >nul || (
        echo Error copying from "%%d"
        pause
        exit /b 1
    )
)

:: Copy the opencv2 directory
echo Copying opencv2 directory...
if not exist "include\opencv2" mkdir "include\opencv2"
xcopy /E /Y /F "opencv\build\esp-idf\espressif__opencv\opencv-build\opencv2\*" "include\opencv2\" >nul || (
    echo Error copying opencv2
    pause
    exit /b 1
)

echo Done!
pause