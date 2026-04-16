#!/bin/bash

# Copy all .a files
echo "Copying .a files..."
mkdir -p lib
cp -f opencv/build/esp-idf/espressif__opencv/opencv-build/lib/*.a lib/ || { echo "Error copying .a files"; exit 1; }

# Copy all include files from modules
echo "Copying include files from modules..."
mkdir -p include
find opencv/managed_components/espressif__opencv/opencv/modules -type d -name "include" | while read -r dir; do
    cp -rf "$dir"/* include/ || { echo "Error copying from $dir"; exit 1; }
done

# Copy opencv2 directory
echo "Copying opencv2 directory..."
mkdir -p include/opencv2
cp -rf opencv/build/esp-idf/espressif__opencv/opencv-build/opencv2/* include/opencv2/ || { echo "Error copying opencv2"; exit 1; }

echo "Done!"
read -p "Press Enter to exit..."