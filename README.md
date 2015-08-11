Build Environment Scripts
=========================

This repository contains scripts for setting up the developer build
environments for the following projects on Ubuntu 14.04.3 LTS:

1. [Audacity](http://audacityteam.org/)

2. [Blender](http://www.blender.org/)

3. [Inkscape](https://inkscape.org/en/)

4. [VLC](http://www.videolan.org/vlc/index.html)

Students should use these scripts by installing Ubuntu 14.04.3 in a virtual
machine such as [Virtualbox](https://www.virtualbox.org/) and then cloning this
repository:

    $ git clone https://github.com/ND-CSE-30331-FA15/build-env-scripts.git ~/Source

This will clone the repository and store it on the local machine as `~/Source`.

To setup one of the above projects, simply go into the appropriate directory
and execute the `setup.sh` script:

    $ cd ~/Source/Audacity
    $ ./setup.sh

You may be prompted for your password to complete the installation of software
dependencies.

If you spot any errors or areas for improvement, please file a bug or send a
pull request!
