#!/bin/bash

if [ $EUID -ne 0 ]; then
  echo ERROR: You must run this as root
  exit
fi

install() {
  echo "Starting installation of mac plymouth theme..."

  echo "Copying files..."
  sudo cp -r mac /usr/share/plymouth/themes && cd /usr/share/plymouth/themes

  echo "Installing mac plymouth theme..."
  sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mac/mac.plymouth 100

  echo "Configuring default plymouth theme..."
  sudo update-alternatives --config default.plymouth

  echo "Updating initramfs..."
  sudo update-initramfs -u

  echo "Done. mac plymouth theme is now installed and set up."
  exit
}

install