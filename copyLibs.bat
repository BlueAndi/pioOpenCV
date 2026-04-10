@echo off

REM Copy all .a files
xcopy "opencv\build\esp-idf\espressif__opencv\opencv-build\lib\*.a" "lib\" /Y /I

REM Copy all include files from modules
for /d %%d in (opencv\managed_components\espressif__opencv\opencv\modules\*) do (
    if exist "%%d\include" (
        xcopy "%%d\include\*" "include\" /E /Y /I
    )
)

REM Copy opencv2 directory
xcopy "opencv\build\esp-idf\espressif__opencv\opencv-build\opencv2" "include\opencv2\" /E /Y /I

echo Done!
pause