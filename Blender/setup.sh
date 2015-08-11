#!/bin/sh

# Blender development environment build setup script

# Sources:
# - http://wiki.blender.org/index.php/Dev:Doc/Building_Blender/Linux/Ubuntu/CMake

# Install dependencies
sudo apt-get install -y build-essential cmake gdb git

# Clone git repository
git clone http://git.blender.org/blender.git
(cd blender						;
 git submodule update --init --recursive 		;
 git submodule foreach git checkout master		;
 git submodule foreach git pull --rebase origin master	)

# Build dependencies
./blender/build_files/build_environment/install_deps.sh \
	--source=$HOME/Source/Blender/contrib 		\
	--install=$HOME/Applications/Blender/lib	\
	--skip-osl

# Configure and build
(cd blender 				;
 eval $(grep make ../BUILD_NOTES.txt) 	)
