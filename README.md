# pioOpenCV

OpenCV prepared as PlatformIO library.

## Setup environment

### Get ESP-IDF extension for VSCode

Install the VSCode extension [ESP-IDF](https://marketplace.visualstudio.com/items?itemName=espressif.esp-idf-extension) from Espressif Systems.

## Build opencv lib

### Open and build project opencv

- Open the folder opencv in a new VS Code window.
- Switch to the extension "ESP-IDF: Explorer".
- Execute command "Build Project".

### Copy static libs and header files into artifacts folders lib and include

Execute script `copyLibs.bat` or `copyLibs.sh`. The generated static libs and headers are now available in the lib and include folders.

### Important: prepare traits.hpp

In the end search for "template<> class DataType<int32_t>" in the file include\opencv2\core\traits.hpp. Comment out the complete definition to get rid of the redefinition error.

### Activate git lfs

To be able to push the large .a files git lfs needs to be activated. Follow these steps:

- Install git lfs from <https://git-lfs.com/>
- Open Terminal in your project folder
- Execute `git lfs install`

## Used Libraries

| Library                                         | Description                                                                             | License    |
| ----------------------------------------------- | --------------------------------------------------------------------------------------- | ---------- |
| [ESP-IDF](https://github.com/espressif/esp-idf) | Espressif IoT Development Framework. Official development framework for Espressif SoCs. | Apache-2.0 |
| [OpenCV](https://github.com/espressif/opencv)   | OpenCV with Espressif patches                                                           | Apache-2.0 |

## Issues, Ideas And Bugs

If you have further ideas or you found some bugs, great! Create a [issue](https://github.com/BlueAndi/pioOpenCV/issues) or if you are able and willing to fix it by yourself, clone the repository and create a pull request.

## License

The whole source code is published under the [MIT license](http://choosealicense.com/licenses/mit/).
Consider the different licenses of the used third party libraries too!

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, shall be licensed as above, without any
additional terms or conditions.
