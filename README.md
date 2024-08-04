# FAT32 Split MP4 Script

## Overview
This script is designed to split large MP4 video files (> 4GB) into smaller chunks (< 4GB) to comply with the FAT32 file system limits.
It is particularly useful for preparing videos to fit on a FAT32 formatted USB drive for devices like a Raspberry Pi to read.
The script processes each MP4 file in the `Videos` folder (for >4GB MP4 files) and splits it into smaller segments saving the split files in the `Rendered` folder (< 4GB MP4 files FAT32 compatible).

This script was part of a personal project [detailed on my website](https://www.denniscao.net/projects/digital-touch-grass?pageId=6d6267346431626667606630616c62666c306c36676d6667656362363167366c)

## Installation Instructions


### Prerequisite:
Make sure you have `ffmpeg` installed on your system. You can install it using Homebrew:
    ```
    brew install ffmpeg
    ```

### Instructions

1. **Clone the repository and cd into it**:
    ```bash
    git clone https://github.com/dennisrcao/FAT32-Split-MP4-Script.git
    cd FAT32-Split-MP4-Script
    ```

2. **Create input and output folders **:
Create two folders named Videos and Rendered in the root of the cloned repository:

    ```bash
    mkdir Videos Rendered
    ```
3. **Prepare media**:
Add Larger MP4 files ( > 4GB) you want to split into "Videos"

4. **Run the Script**:
Make the script executable and run it:
    ```bash
    chmod +x script_split-mp4.sh
    ./script_split-mp4.sh
    ```

5. Segmented MP4 videos will be "Rendered"

### Run Renaming Script Instructions
I left another script in there called `script_rename-mp4.sh` which renames every file in the directory it sits in with a random variable. This is useful in the application of putting a bunch of videos on a USB stick where you want to randomize the playback order.
It's important that this script sits in the same folder as all the files you want to rename.

In order to run it,
    ```bash
    chmod +x script_rename-mp4.sh
    ./script_rename-mp4.sh
    ```



This project is licensed under the MIT License. See [LICENSE](LICENSE)
(c) 2024 Dennis Cao. [dennis-cao.net](https://dennis-cao.net)


