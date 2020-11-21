# mac plymouth theme

A macOS-like boot screen theme for Plymouth

## Installation

### Using the installer file

To make the installation easier, you can just run the installer file provided in the root directory of this repo.

1. Clone this repo and then `cd` to it.

       git clone https://github.com/fathyar/mac-plymouth.git && cd mac-plymouth

2. Run the command below.

       sudo ./install.sh

### Do it manually

Or you can do it manually.

1. Clone this repo and then `cd` to it.

       git clone https://github.com/fathyar/mac-plymouth.git && cd mac-plymouth

2. Copy **mac** folder to `/usr/share/plymouth/themes` directory and `cd` to there.

       sudo cp -r mac /usr/share/plymouth/themes && cd /usr/share/plymouth/themes

3. Run the command below.

       sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mac/mac.plymouth 100

4. And then run:

       sudo update-alternatives --config default.plymouth

   to choose and set the default theme.

5. Finally, run:

       sudo update-initramfs -u

## Preview

After done installing the theme, you can preview it using the file.

    sudo ./preview.sh

## Credit

Thanks to [@nilotpalbiswas](https://github.com/nilotpalbiswas/MacOS-Boot-Plymouth) for the original version of this theme.
