# pioOpenCV
OpenCV prepared as PlatformIO library.

## build static lib opencv_libs

### get ESP-IDF extension for VSCode

Search and install the extension "ESP-IDF" from Espressif Systems

### open and build project opencv

Open the folder opencv in a new VS Code window.
Switch to the extension "ESP-IDF: Explorer".
Execute command "Build Project".

### copy static libs and header files into artifacts folder "opencv_libs"

Execute script "copyLibs.bat". The generated static libs and headers are now available in the opencv_libs folder