@echo off

REM Copy all .a files
xcopy "opencv\build\esp-idf\espressif__opencv\opencv-build\lib\*.a" "opencv_libs\lib\" /Y /I

REM Copy all include files from modules
for /d %%d in (opencv\managed_components\espressif__opencv\opencv\modules\*) do (
    if exist "%%d\include" (
        xcopy "%%d\include\*" "opencv_libs\include\" /E /Y /I
    )
)

REM Copy opencv2 directory
xcopy "opencv\build\esp-idf\espressif__opencv\opencv-build\opencv2" "opencv_libs\include\opencv2\" /E /Y /I

echo Done!
pause