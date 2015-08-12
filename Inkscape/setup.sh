#!/bin/sh

# Inkscape development environment setup script

# Sources:
# - http://wiki.inkscape.org/wiki/index.php/CompilingUbuntu

# Install dependencies
sudo apt-get install -y build-essential gdb bzr autoconf automake autopoint intltool libtool \
	libglib2.0-dev libpng12-dev libgc-dev libfreetype6-dev liblcms1-dev \
	libgtkmm-2.4-dev libxslt1-dev libboost-dev libpopt-dev libgsl0-dev libaspell-dev

# Clone bzr repository
bzr branch lp:inkscape

# Configure and build
(cd inkscape ; NOCONFIGURE=1 && ./autogen.sh; ./configure --prefix=$HOME/Applications/Inkscape ; make)
