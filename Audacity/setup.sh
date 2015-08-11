#!/bin/sh

# Audacity development environment setup script

# Sources:
# - http://wiki.audacityteam.org/wiki/Developing_On_Linux
# - http://web.audacityteam.org/community/developers

# Install dependencies
sudo apt-get install -y build-essential cmake gdb git libwxgtk3.0-dev libwxgtk3.0-0-dbg
sudo apt-get build-dep -y audacity

# Clone git repository
git clone https://github.com/audacity/audacity

# Configure and build
(cd audacity ;
 autoreconf --no-recursive -i ;
 ./configure 			\
	--enable-debug 		\
	--with-ffmpeg=local 	\
	--prefix=$HOME/Applications/Audacity ; 
 make)
