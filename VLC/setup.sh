#!/bin/sh

# VLC development environment setup script

# Sources:
# - https://wiki.videolan.org/Getting_Started_At_Coding/
# - https://wiki.videolan.org/UnixCompile/

# Install dependencies
sudo apt-get install -y git libtool build-essential pkg-config autoconf gdb
sudo apt-get build-dep -y vlc

# Clone git repository
git clone git://git.videolan.org/vlc.git

# Configure and build
(cd vlc					;
 ./bootstrap 				;
 ./configure				\
    --prefix=$HOME/Applications/VLC 	\
    --disable-avcodec			;
 make)
