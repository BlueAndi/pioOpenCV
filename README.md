# pioOpenCV
OpenCV prepared as PlatformIO library.

## build static lib opencv_libs

### get ESP-IDF extension for VSCode

Search and install the extension "ESP-IDF" from Espressif Systems.

### open and build project opencv

Open the folder opencv in a new VS Code window.
Switch to the extension "ESP-IDF: Explorer".
Execute command "Build Project".

### copy static libs and header files into artifacts folders lib and include

Execute script "copyLibs.bat" or "copyLibs.sh". The generated static libs and headers are now available in the lib and include folders.

### important: prepare traits.hpp

In the end search for "template<> class DataType<int32_t>" in the file include\opencv2\core\traits.hpp. Comment out the complete definition to get rid of the redefinition error.